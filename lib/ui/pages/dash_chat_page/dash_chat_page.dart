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

  late List<ChatMessage> messages;

  ChatMessage _switchAnswer1(FAQ faq) {
    switch (faq) {
      case FAQ.priceSegment:
        return ChatMessage(text: 'ЦС1', user: ChatUser());
      case FAQ.commercialState:
        return ChatMessage(text: 'КН2', user: ChatUser());
      case FAQ.familyPromotions:
        return ChatMessage(text: 'ЦС2', user: ChatUser());
    }
  }

  @override
  void initState() {
    messages = [
      ChatMessage(
        text: "Доброго времени суток.\nВыберите интересующую вас сферу: ",
        user: ChatUser(),
        createdAt: DateTime.now(),
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
              text:
                  'Ошибка при обработке вашего запроса, повторите: ${lastMessage.text}',
              user: lastMessage.user,
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
            messages.add(ChatMessage(
                text: reply.value, createdAt: DateTime.now(), user: user));
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
        return 'Ценовой сегмент';
      case FAQ2.commercialState:
        return 'Коммерческая недвижмость';
      case FAQ2.familyPromotions:
        return 'Предложения для семей';
    }
  }
}

extension StringParse3 on FAQ3 {
  String get string {
    switch (this) {
      case FAQ3.priceSegment:
        return 'Ценовой сегмент';
      case FAQ3.commercialState:
        return 'Коммерческая недвижмость';
      case FAQ3.familyPromotions:
        return 'Предложения для семей';
    }
  }
}

extension StringParse4 on FAQ4 {
  String get string {
    switch (this) {
      case FAQ4.priceSegment:
        return 'Ценовой сегмент';
      case FAQ4.commercialState:
        return 'Коммерческая недвижмость';
      case FAQ4.familyPromotions:
        return 'Предложения для семей';
    }
  }
}
