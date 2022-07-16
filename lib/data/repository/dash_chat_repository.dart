class ChatAnswer {
  final String replyMessage;
  final String message;
  final List<ChatAnswer> replies;
  final int id;

  ChatAnswer({
    required this.message,
    required this.replies,
    required this.id,
    required this.replyMessage,
  });
}

abstract class DashChatRepository {
  //1 deep
  static final ChatAnswer chatAnswer1 = ChatAnswer(
    replyMessage: '',
    message: 'Сфера вопроса',
    replies: <ChatAnswer>[
      chatAnswer11,
      chatAnswer12,
      chatAnswer13,
    ],
    id: 1,
  );

  //2 deep
  static final ChatAnswer chatAnswer11 = ChatAnswer(
    replyMessage: 'Юридическая консультация',
    message: 'Юридическая консультация',
    replies: <ChatAnswer>[
      chatAnswer111,
      chatAnswer112,
      chatAnswer113,
    ],
    id: 11,
  );
  static final ChatAnswer chatAnswer12 = ChatAnswer(
    replyMessage: 'Вопросы по функционалу',
    message: 'Вопросы по функционалу',
    replies: <ChatAnswer>[
      chatAnswer121,
      chatAnswer122,
      chatAnswer123,
    ],
    id: 12,
  );
  static final ChatAnswer chatAnswer13 = ChatAnswer(
    replyMessage: 'Уточнить информацию',
    message: 'Уточнить информацию',
    replies: <ChatAnswer>[
      chatAnswer131,
      chatAnswer132,
      chatAnswer133,
    ],
    id: 13,
  );

  //3 deep 1-1 reply

  static final ChatAnswer chatAnswer111 = ChatAnswer(
    replyMessage: 'Право',
    message: 'Право',
    replies: <ChatAnswer>[
      chatAnswer1111,
      chatAnswer1112,
      chatAnswer1113,
    ],
    id: 111,
  );
  static final ChatAnswer chatAnswer112 = ChatAnswer(
    replyMessage: 'Собственность',
    message: 'Собственность',
    replies: <ChatAnswer>[
      chatAnswer1121,
      chatAnswer1122,
      chatAnswer1123,
    ],
    id: 112,
  );
  static final ChatAnswer chatAnswer113 = ChatAnswer(
    replyMessage: 'Консультация',
    message: 'Консультация',
    replies: <ChatAnswer>[
      chatAnswer1131,
      chatAnswer1132,
      chatAnswer1133,
    ],
    id: 113,
  );

  //3 deep 1-2 reply

  static final ChatAnswer chatAnswer121 = ChatAnswer(
    replyMessage: 'Добавить функционал',
    message: 'Добавить функционал',
    replies: <ChatAnswer>[
      chatAnswer1211,
      chatAnswer1212,
      chatAnswer1213,
    ],
    id: 121,
  );
  static final ChatAnswer chatAnswer122 = ChatAnswer(
    replyMessage: 'Убрать функционал',
    message: 'Убрать функционал',
    replies: <ChatAnswer>[
      chatAnswer1221,
      chatAnswer1222,
      chatAnswer1223,
    ],
    id: 122,
  );
  static final ChatAnswer chatAnswer123 = ChatAnswer(
    replyMessage: 'Жалоба',
    message: 'Жалоба',
    replies: <ChatAnswer>[
      chatAnswer1231,
      chatAnswer1232,
      chatAnswer1233,
    ],
    id: 123,
  );

  //3 deep 1-3 reply

  static final ChatAnswer chatAnswer131 = ChatAnswer(
    replyMessage: 'Получить данные',
    message: 'Получить данные',
    replies: <ChatAnswer>[
      chatAnswer1311,
      chatAnswer1312,
      chatAnswer1313,
    ],
    id: 131,
  );
  static final ChatAnswer chatAnswer132 = ChatAnswer(
    replyMessage: 'Обновить данные',
    message: 'Обновить данные',
    replies: <ChatAnswer>[
      chatAnswer1321,
      chatAnswer1322,
      chatAnswer1323,
    ],
    id: 132,
  );
  static final ChatAnswer chatAnswer133 = ChatAnswer(
    replyMessage: 'Спросить',
    message: 'Спросить',
    replies: <ChatAnswer>[
      chatAnswer1331,
      chatAnswer1332,
      chatAnswer1333,
    ],
    id: 133,
  );

  //4 deep 1-1-1 reply
  static final ChatAnswer chatAnswer1111 = ChatAnswer(
    replyMessage: 'Политическое право',
    message: 'Политическое право',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1111,
  );
  static final ChatAnswer chatAnswer1112 = ChatAnswer(
    replyMessage: 'Личное право',
    message: 'Личное право',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1112,
  );
  static final ChatAnswer chatAnswer1113 = ChatAnswer(
    replyMessage: 'Социальное право',
    message: 'Социальное право',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1113,
  );

  //4 deep 1-1-2 reply
  static final ChatAnswer chatAnswer1121 = ChatAnswer(
    replyMessage: 'Квартира',
    message: 'Квартира',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1121,
  );
  static final ChatAnswer chatAnswer1122 = ChatAnswer(
    replyMessage: 'Нежилое помещение',
    message: 'Нежилое помещение',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1122,
  );
  static final ChatAnswer chatAnswer1123 = ChatAnswer(
    replyMessage: 'Торговая площадка',
    message: 'Торговая площадка',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1123,
  );

  //4 deep 1-1-3 reply
  static final ChatAnswer chatAnswer1131 = ChatAnswer(
    replyMessage: 'Вречебная консультация',
    message: 'Вречебная консультация',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1131,
  );
  static final ChatAnswer chatAnswer1132 = ChatAnswer(
    replyMessage: 'Парикмахерская консультация',
    message: 'Парикмахерская консультация',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1132,
  );
  static final ChatAnswer chatAnswer1133 = ChatAnswer(
    replyMessage: 'Судебная консультация',
    message: 'Судебная консультация',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1133,
  );

  //4 deep 1-2-1 reply
  static final ChatAnswer chatAnswer1211 = ChatAnswer(
    replyMessage: 'Купить квартиру',
    message: 'Купить квартиру',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1211,
  );
  static final ChatAnswer chatAnswer1212 = ChatAnswer(
    replyMessage: 'Купить вторую квартиру',
    message: 'Купить вторую квартиру',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1212,
  );
  static final ChatAnswer chatAnswer1213 = ChatAnswer(
    replyMessage: 'Купить третью квартиру',
    message: 'Купить третью квартиру',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1213,
  );

  //4 deep 1-2-2 reply
  static final ChatAnswer chatAnswer1221 = ChatAnswer(
    replyMessage: 'Покупки',
    message: 'Покупки',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1221,
  );
  static final ChatAnswer chatAnswer1222 = ChatAnswer(
    replyMessage: 'Продажи',
    message: 'Продажи',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1222,
  );
  static final ChatAnswer chatAnswer1223 = ChatAnswer(
    replyMessage: 'Профиль',
    message: 'Профиль',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1223,
  );

  //4 deep 1-2-3 reply
  static final ChatAnswer chatAnswer1231 = ChatAnswer(
    replyMessage: 'Баги',
    message: 'Баги',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1231,
  );
  static final ChatAnswer chatAnswer1232 = ChatAnswer(
    replyMessage: 'Обслуживание',
    message: 'Обслуживание',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1232,
  );
  static final ChatAnswer chatAnswer1233 = ChatAnswer(
    replyMessage: 'Здоровье',
    message: 'Здоровье',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1233,
  );

  //4 deep 1-3-1 reply
  static final ChatAnswer chatAnswer1311 = ChatAnswer(
    replyMessage: 'Налоги',
    message: 'Налоги',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1311,
  );
  static final ChatAnswer chatAnswer1312 = ChatAnswer(
    replyMessage: 'Стоимость жилья',
    message: 'Стоимость жилья',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1312,
  );
  static final ChatAnswer chatAnswer1313 = ChatAnswer(
    replyMessage: 'Состояние жилья',
    message: 'Состояние жилья',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1313,
  );

  //4 deep 1-3-2 reply
  static final ChatAnswer chatAnswer1321 = ChatAnswer(
    replyMessage: 'Документы',
    message: 'Документы',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1321,
  );
  static final ChatAnswer chatAnswer1322 = ChatAnswer(
    replyMessage: 'О жилье',
    message: 'О жилье',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1322,
  );
  static final ChatAnswer chatAnswer1323 = ChatAnswer(
    replyMessage: 'О страховке',
    message: 'О страховке',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1323,
  );

  //4 deep 1-3-3 reply
  static final ChatAnswer chatAnswer1331 = ChatAnswer(
    replyMessage: 'Дорогу',
    message: 'Дорогу',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1331,
  );
  static final ChatAnswer chatAnswer1332 = ChatAnswer(
    replyMessage: 'Совета',
    message: 'Совета',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1332,
  );
  static final ChatAnswer chatAnswer1333 = ChatAnswer(
    replyMessage: 'Рецепт',
    message: 'Рецепт',
    replies: <ChatAnswer>[
      chatAnswerFinal1,
      chatAnswerFinal2,
      chatAnswerFinal3,
    ],
    id: 1333,
  );

  //deep 5 final message
  static final ChatAnswer chatAnswerFinal1 = ChatAnswer(
    replyMessage: 'Оставить отзыв',
    message: 'Всё обработано',
    replies: <ChatAnswer>[
      //chatAnswer1,
    ],
    id: 51,
  );
  static final ChatAnswer chatAnswerFinal2 = ChatAnswer(
    replyMessage: 'Вызвать диспетчера',
    message: 'Всё обработано',
    replies: <ChatAnswer>[
      //  chatAnswer1,
    ],
    id: 52,
  );
  static final ChatAnswer chatAnswerFinal3 = ChatAnswer(
    replyMessage: 'Связаться позже',
    message: 'Всё обработано',
    replies: <ChatAnswer>[
      //  chatAnswer1,
    ],
    id: 53,
  );

  static final Map<int, ChatAnswer> repliesMap = {
    1: chatAnswer1,
    11: chatAnswer11,
    12: chatAnswer12,
    13: chatAnswer13,
    111: chatAnswer111,
    112: chatAnswer112,
    113: chatAnswer113,
    121: chatAnswer121,
    122: chatAnswer122,
    123: chatAnswer123,
    131: chatAnswer131,
    132: chatAnswer132,
    133: chatAnswer133,
    1111: chatAnswer1111,
    1112: chatAnswer1112,
    1113: chatAnswer1113,
    1121: chatAnswer1121,
    1122: chatAnswer1122,
    1123: chatAnswer1123,
    1131: chatAnswer1131,
    1132: chatAnswer1132,
    1133: chatAnswer1133,
    1211: chatAnswer1211,
    1212: chatAnswer1212,
    1213: chatAnswer1213,
    1221: chatAnswer1221,
    1222: chatAnswer1222,
    1223: chatAnswer1223,
    1231: chatAnswer1231,
    1232: chatAnswer1232,
    1233: chatAnswer1233,
    1311: chatAnswer1311,
    1312: chatAnswer1312,
    1313: chatAnswer1313,
    1321: chatAnswer1321,
    1322: chatAnswer1322,
    1323: chatAnswer1323,
    1331: chatAnswer1331,
    1332: chatAnswer1332,
    1333: chatAnswer1333,
    51: chatAnswerFinal1,
    52: chatAnswerFinal2,
    53: chatAnswerFinal3,
  };
}
