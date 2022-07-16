import 'dart:async';

import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashChatPage extends StatefulWidget {
  const DashChatPage({Key? key}) : super(key: key);

  @override
  State<DashChatPage> createState() => _DashChatPageState();
}

class _DashChatPageState extends State<DashChatPage> {
  final GlobalKey<DashChatState> _chatViewKey = GlobalKey<DashChatState>();
  int i = 0;

  late List<ChatMessage> messages;

  String _switchAnswer1(FAQ faq) => faq.string;
  String _switchAnswer2(FAQ2 faq) => faq.string;
  String _switchAnswer3(FAQ3 faq) => faq.string;
  String _switchAnswer4(FAQ4 faq) => faq.string;

  QuickReplies _generateReplies(dynamic faq) {}

  ChatMessage _generateAnswer(int i, dynamic faq) {
    switch (i) {
      case 0:
        return ChatMessage(
            text: _switchAnswer1(faq as FAQ),
            user: ChatUser(),
            quickReplies: QuickReplies());
      case 1:
        return ChatMessage(text: _switchAnswer2(faq as FAQ2), user: ChatUser());
      case 2:
        return ChatMessage(text: _switchAnswer3(faq as FAQ3), user: ChatUser());
      case 3:
        return ChatMessage(text: _switchAnswer4(faq as FAQ4), user: ChatUser());
      default:
        return ChatMessage(text: 'Ошибка обработки', user: ChatUser());
    }
  }

  @override
  void initState() {
    messages = [
      ChatMessage(
        text: "Доброго времени суток. ",
        user: ChatUser(),
      ),
      ChatMessage(
        text: "Выберите интересующую вас сферу: ",
        user: ChatUser(),
        quickReplies: QuickReplies(
          values: <Reply>[
            Reply(
              title: FAQ.priceSegment.string,
            ),
            Reply(
              title: FAQ.commercialState.string,
            ),
            Reply(
              title: FAQ.familyPromotions.string,
            ),
          ],
        ),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ChatUser user = ChatUser(
      name: "Elijah Gichev",
      uid: "123456789",
    );

    void onSend(ChatMessage message) {
      final ChatMessage lastMessage = messages.last;
      final bool? isExpected = lastMessage.quickReplies?.values
          ?.any((element) => element.value == message.text);
      setState(() {
        if (!(isExpected != null && isExpected)) {
          messages = [
            ...messages,
            ChatMessage(
              text: 'Ошибка при обработке ответа, пожалуйста, повторите запрос',
              user: ChatUser(),
              quickReplies: lastMessage.quickReplies,
            ),
            ChatMessage(
              text: '${lastMessage.text}',
              user: ChatUser(),
              quickReplies: lastMessage.quickReplies,
            ),
          ];
        }
      });
    }

    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text('Dash Chat'),
      ),
      body: DashChat(
        key: _chatViewKey,
        messages: messages,
        user: user,
        onSend: onSend,
        onQuickReply: (Reply reply) {
          setState(() {
            messages
              ..add(ChatMessage(
                text: reply.value,
                user: user,
              ))
              ..add(ChatMessage(
                text: _generateAnswer(i, reply.value),
                user: ChatUser(),
              ));
          });
          Timer(const Duration(milliseconds: 300), () {
            _chatViewKey.currentState!.scrollController.animateTo(
              _chatViewKey
                  .currentState!.scrollController.position.maxScrollExtent,
              curve: Curves.easeOut,
              duration: const Duration(milliseconds: 300),
            );
          });
        },
      ),
    );
  }
}

enum FAQ {
  priceSegment,
  commercialState,
  familyPromotions,
}

enum FAQ2 {
  priceSegment,
  commercialState,
  familyPromotions,
}

enum FAQ3 {
  priceSegment,
  commercialState,
  familyPromotions,
}

enum FAQ4 {
  priceSegment,
  commercialState,
  familyPromotions,
}

extension StringParse on FAQ {
  String get string {
    switch (this) {
      case FAQ.priceSegment:
        return 'Ценовой сегмент';
      case FAQ.commercialState:
        return 'Коммерческая недвижмость';
      case FAQ.familyPromotions:
        return 'Предложения для семей';
    }
  }
}

extension StringParse2 on FAQ2 {
  String get string {
    switch (this) {
      case FAQ2.priceSegment:
        return 'Ценовой сегмент2';
      case FAQ2.commercialState:
        return 'Коммерческая недвижмость2';
      case FAQ2.familyPromotions:
        return 'Предложения для семей2';
    }
  }
}

extension StringParse3 on FAQ3 {
  String get string {
    switch (this) {
      case FAQ3.priceSegment:
        return 'Ценовой сегмент3';
      case FAQ3.commercialState:
        return 'Коммерческая недвижмость3';
      case FAQ3.familyPromotions:
        return 'Предложения для семей3';
    }
  }
}

extension StringParse4 on FAQ4 {
  String get string {
    switch (this) {
      case FAQ4.priceSegment:
        return 'Ценовой сегмент4';
      case FAQ4.commercialState:
        return 'Коммерческая недвижмость4';
      case FAQ4.familyPromotions:
        return 'Предложения для семей4';
    }
  }
}
