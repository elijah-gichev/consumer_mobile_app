import 'dart:async';

import 'package:bavito_mobile_app/data/repository/dash_chat_repository.dart';
import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashChatPage extends StatefulWidget {
  const DashChatPage({Key? key}) : super(key: key);

  @override
  State<DashChatPage> createState() => _DashChatPageState();
}

class _DashChatPageState extends State<DashChatPage> {
  final GlobalKey<DashChatState> _chatViewKey = GlobalKey<DashChatState>();
  int i = 1;

  late List<ChatMessage> messages;

  QuickReplies _generateReplies(int id) {
    print('work!');
    return QuickReplies(
        values: DashChatRepository.repliesMap[id]?.replies.map((e) {
      print('how much it works');
      return Reply(title: e.replyMessage, value: e.id.toString());
    }).toList());
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
        quickReplies: _generateReplies(i),
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
      final bool? isExpected = lastMessage.quickReplies?.values?.any((element) => element.value == message.text);
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
      appBar: const CustomAppBar(
        title: Text(
          'Чат-бот',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 35.0),
        child: DashChat(
          quickReplyBuilder: (Reply reply) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                reply.title,
                style: TextStyle(
                  fontSize: 13.sp,
                ),
              ),
            );
          },
          readOnly: true,
          inputDisabled: true,
          sendButtonBuilder: null,
          key: _chatViewKey,
          messages: messages,
          user: user,
          onSend: onSend,
          onLoadEarlier: () {},
          onQuickReply: (Reply reply) {
            i = int.parse(reply.value!);
            setState(() {
              messages
                ..add(ChatMessage(
                  text: reply.title,
                  user: user,
                ))
                ..add(ChatMessage(
                  text: DashChatRepository.repliesMap[i]?.message,
                  user: ChatUser(),
                  quickReplies: QuickReplies(
                    values: DashChatRepository.repliesMap[i]?.replies.map((e) => Reply(title: e.replyMessage, value: e.id.toString())).toList(),
                  ),
                ));
            });
            Timer(const Duration(milliseconds: 300), () {
              _chatViewKey.currentState?.scrollController.animateTo(
                _chatViewKey.currentState?.scrollController.position.maxScrollExtent ?? 0,
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 300),
              );
            });
          },
        ),
      ),
    );
  }
}
