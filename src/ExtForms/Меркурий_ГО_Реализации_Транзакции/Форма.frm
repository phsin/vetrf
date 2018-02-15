Диалог: 
{
	Параметры формы: 
	{
		Параметры: 
		{
			Ширина: 618
			Высота: 341
			Заголовок: "Меркурий Групоовая обработка документов Реализация -  ВСД_Транзакции"
			АвтоПорядокОбхода: Нет
			Param24: 6
			Param25: 28
			Слои
			{
				Основной: Видимый, Активный
				СписокДокументов: Видимый
				Партии: 
				Параметры: 
			}
		}
	}
	Элементы: 
	{
		TABLE: СписокПартий
		{
			ДопФлаги: Flag21, Flag23, Flag28, Flag30
			X: 93
			Y: 71
			Ширина: 517
			Высота: 258
			ПорядокОбхода: 4152
			Формула: "Клик_Партии()"
			ОснФлаги: НеСохранять
			Слой: Партии
		}
		BUTTON: 
		{
			Заголовок: "отменить "
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 10
			Y: 63
			Ширина: 79
			Высота: 14
			ПорядокОбхода: 4153
			Формула: "ОтменитьВсеДокументы()"
			ОснФлаги: КартинкаПоЦентру
			ShortHint: "убрать все"
			Пиктограмма: 0x1f000003
			Слой: СписокДокументов
		}
		BUTTON: 
		{
			Заголовок: "выделить "
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 10
			Y: 48
			Ширина: 79
			Высота: 14
			ПорядокОбхода: 4154
			Формула: "ВыделитьВсеДокументы()"
			ОснФлаги: КартинкаПоЦентру
			ShortHint: "пометить все"
			Пиктограмма: 0x1f000004
			Слой: СписокДокументов
		}
		BUTTON: 
		{
			Заголовок: "обновить"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 10
			Y: 78
			Ширина: 79
			Высота: 14
			ПорядокОбхода: 4155
			Формула: "ЗаполнитьСписокДокументов_Реализации()"
			ОснФлаги: ИспользоватьОписание, КартинкаПоЦентру
			Hint: "Обновить список документов"
			Пиктограмма: 0x1f000005
			Слой: СписокДокументов
		}
		BUTTON: 
		{
			Заголовок: "Загр.площадки"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 10
			Y: 94
			Ширина: 79
			Высота: 14
			ПорядокОбхода: 4156
			Формула: "ЗагрузитьПлощадки()"
			ОснФлаги: ИспользоватьОписание, КартинкаПоЦентру
			Hint: "Загрузить площадки"
			Пиктограмма: 0x1f000006
			Слой: СписокДокументов
		}
		BMASKED: КонДата
		{
			ИдентификаторМетаданных: -1
			Тип: Дата
			ДопФлаги: Flag23, Flag28, Flag30
			X: 620
			Y: 400
			Ширина: 51
			Высота: 13
			ПорядокОбхода: 4157
			Формула: "ОбновитьСписокДокументов()"
			ОснФлаги: Педалька, Невидимо
			Слой: Основной
		}
		BMASKED: НачДата
		{
			ИдентификаторМетаданных: -1
			Тип: Дата
			ДопФлаги: Flag23, Flag28, Flag30
			X: 566
			Y: 401
			Ширина: 51
			Высота: 13
			ПорядокОбхода: 4158
			Формула: "ОбновитьСписокДокументов()"
			ОснФлаги: Педалька, Невидимо
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "Ver 15.02.2018_117"
			ДопФлаги: Flag28, Flag30
			X: 14
			Y: 322
			Ширина: 65
			Высота: 8
			ПорядокОбхода: 4159
			ОснФлаги: ЦветТекстаАвто
			Шрифт: MS Reference Sans Serif
			{
				Шрифт: MS Reference Sans Serif
				Размер: 6
				Param9: 204
				Param10: 1
				Param11: 2
				Param12: 1
				Param13: 34
			}
			Слой: Основной
		}
		BUTTON: 
		{
			Заголовок: "Списание Партий"
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 10
			Y: 116
			Ширина: 79
			Высота: 14
			ПорядокОбхода: 4160
			Формула: "ЗаполнитьПартии()"
			ОснФлаги: ИспользоватьОписание, КартинкаПоЦентру
			Hint: "Заполнить таблицу списания Партий\n"
			Пиктограмма: 0x1f00000d
			Слой: Основной
		}
		BUTTON: 
		{
			Заголовок: "Загрузить Партии"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 10
			Y: 134
			Ширина: 79
			Высота: 14
			ПорядокОбхода: 4161
			Формула: "ПолучитьПартии()"
			ОснФлаги: КартинкаПоЦентру
			Пиктограмма: 0x1f000010
			Слой: Основной
		}
		STATIC: Инфо
		{
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag28, Flag30
			X: 168
			Y: 20
			Ширина: 272
			Высота: 10
			ПорядокОбхода: 4162
			Шрифт: MS Sans Serif
			{
				Жирный: Да
				Param9: 204
				Param10: 1
				Param11: 2
				Param12: 1
				Param13: 34
			}
			ЦветТекста: 8388608
			Слой: СписокДокументов
		}
		BUTTON: 
		{
			Заголовок: "..."
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 134
			Y: 18
			Ширина: 16
			Высота: 12
			ПорядокОбхода: 4163
			Формула: "выбратьПериод()"
			ОснФлаги: РастянутьКартинку
			Слой: Основной
		}
		STATIC: КонецПериодаТекст
		{
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag9, Flag28, Flag30
			X: 94
			Y: 18
			Ширина: 38
			Высота: 13
			ПорядокОбхода: 4164
			ОснФлаги: ЦветТекстаАвто, ПрозрачныйФон
			Шрифт: MS Sans Serif
			{
				Жирный: Да
				Param9: 204
				Param10: 1
				Param11: 2
				Param12: 1
				Param13: 34
			}
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "по:"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag9, Flag28, Flag30
			X: 81
			Y: 18
			Ширина: 11
			Высота: 13
			ПорядокОбхода: 4165
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто, ПрозрачныйФон
			Слой: Основной
		}
		STATIC: НачалоПериодаТекст
		{
			Заголовок: "01.01.17"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag9, Flag28, Flag30
			X: 44
			Y: 18
			Ширина: 38
			Высота: 13
			ПорядокОбхода: 4166
			ОснФлаги: ЦветТекстаАвто, ПрозрачныйФон
			Шрифт: MS Sans Serif
			{
				Жирный: Да
				Param9: 204
				Param10: 1
				Param11: 2
				Param12: 1
				Param13: 34
			}
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "Период с:"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag9, Flag28, Flag30
			X: 8
			Y: 18
			Ширина: 38
			Высота: 13
			ПорядокОбхода: 4167
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто, ПрозрачныйФон
			Слой: Основной
		}
		BUTTON: 
		{
			Заголовок: "Печать"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 10
			Y: 221
			Ширина: 79
			Высота: 14
			ПорядокОбхода: 4168
			Формула: "Реестр()"
			Слой: Основной
		}
		BUTTON: 
		{
			Заголовок: "ВСД "
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 10
			Y: 160
			Ширина: 79
			Высота: 14
			ПорядокОбхода: 4169
			Формула: "МенюВСД()"
			ОснФлаги: ИспользоватьОписание
			Hint: "Создать ВСД_транзакция"
			Слой: Основной
		}
		TABLE: СписокДокументов
		{
			ДопФлаги: Flag21, Flag23, Flag28, Flag30
			X: 93
			Y: 47
			Ширина: 517
			Высота: 286
			ПорядокОбхода: 4170
			Формула: "Клик()"
			ОснФлаги: РастянутьКартинку, НеСохранять
			Пиктограмма: 0x1f00000b
			Слой: СписокДокументов
		}
		1CGROUPBOX: 
		{
			Заголовок: "Настройки интеграции"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, Flag2, Flag28, Flag30
			X: 305
			Y: 19
			Ширина: 272
			Высота: 105
			ПорядокОбхода: 4171
			Слой: Параметры
		}
		1CGROUPBOX: 
		{
			Заголовок: "Настройки ХС"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, Flag2, Flag28, Flag30
			X: 15
			Y: 81
			Ширина: 281
			Высота: 109
			ПорядокОбхода: 4172
			Слой: Параметры
		}
		1CGROUPBOX: 
		{
			Заголовок: "Окружение"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, Flag2, Flag28, Flag30
			X: 15
			Y: 195
			Ширина: 284
			Высота: 61
			ПорядокОбхода: 4173
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Название реквизита [Количество] в документе Реализация"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag28, Flag30
			X: 314
			Y: 102
			Ширина: 140
			Высота: 19
			ПорядокОбхода: 4174
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		1CEDIT: НазваниеРеквизитаКоличество
		{
			ИдентификаторМетаданных: -1
			Тип: Строка
			ДопФлаги: Flag23, Flag28, Flag30
			X: 458
			Y: 103
			Ширина: 101
			Высота: 13
			ПорядокОбхода: 4175
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Название вида документа [Реализация]"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag9, Flag28, Flag30
			X: 314
			Y: 47
			Ширина: 140
			Высота: 15
			ПорядокОбхода: 4176
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		1CEDIT: НазваниеВидаДокументаРеализация
		{
			ИдентификаторМетаданных: -1
			Тип: Строка
			ДопФлаги: Flag23, Flag28, Flag30
			X: 458
			Y: 48
			Ширина: 101
			Высота: 13
			ПорядокОбхода: 4177
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Название реквизита [Грузополучатель] в документе Реализация"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag28, Flag30
			X: 314
			Y: 62
			Ширина: 140
			Высота: 19
			ПорядокОбхода: 4178
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Название реквизита [КоличествоМест] в документе Реализация"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag28, Flag30
			X: 314
			Y: 84
			Ширина: 140
			Высота: 19
			ПорядокОбхода: 4179
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		1CEDIT: НазваниеРеквизитаКоличествоМест
		{
			ИдентификаторМетаданных: -1
			Тип: Строка
			ДопФлаги: Flag23, Flag28, Flag30
			X: 458
			Y: 82
			Ширина: 101
			Высота: 13
			ПорядокОбхода: 4180
			Слой: Параметры
		}
		BMASKED: Перевозчик_ХозСубъект
		{
			ИдентификаторМетаданных: -1
			Тип: Справочник
			Агрегатный тип: Справочник.ВСД_ХозСубъект
			ДопФлаги: Flag23, Flag28, Flag30
			X: 113
			Y: 119
			Ширина: 173
			Высота: 13
			ПорядокОбхода: 4181
			ОснФлаги: Педалька
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Перевозчик_ХозСубъект"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag1, Flag9, Flag28, Flag30
			X: 20
			Y: 119
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4182
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		BMASKED: Отправитель_Площадка
		{
			ИдентификаторМетаданных: -1
			Тип: Справочник
			Агрегатный тип: Справочник.ВСД_Площадка
			ДопФлаги: Flag23, Flag28, Flag30
			X: 113
			Y: 105
			Ширина: 173
			Высота: 13
			ПорядокОбхода: 4183
			ОснФлаги: Педалька
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Отправитель Площадка"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag1, Flag9, Flag28, Flag30
			X: 20
			Y: 105
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4184
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		BMASKED: Отправитель_ХозСубъект
		{
			ИдентификаторМетаданных: -1
			Тип: Справочник
			Агрегатный тип: Справочник.ВСД_ХозСубъект
			ДопФлаги: Flag23, Flag28, Flag30
			X: 113
			Y: 91
			Ширина: 173
			Высота: 13
			ПорядокОбхода: 4185
			ОснФлаги: Педалька
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Отправитель ХозСубъект"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag1, Flag9, Flag28, Flag30
			X: 20
			Y: 91
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4186
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Город:"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag1, Flag9, Flag28, Flag30
			X: 20
			Y: 173
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4187
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Регион:"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag1, Flag9, Flag28, Flag30
			X: 20
			Y: 159
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4188
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Страна:"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag1, Flag9, Flag28, Flag30
			X: 20
			Y: 143
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4189
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		BMASKED: Город
		{
			ИдентификаторМетаданных: -1
			Тип: Справочник
			Агрегатный тип: Справочник.ВСД_Город
			ДопФлаги: Flag23, Flag28, Flag30
			X: 114
			Y: 172
			Ширина: 173
			Высота: 13
			ПорядокОбхода: 4190
			ОснФлаги: Педалька, НеСохранять
			Слой: Параметры
		}
		BMASKED: Регион
		{
			ИдентификаторМетаданных: -1
			Тип: Справочник
			Агрегатный тип: Справочник.ВСД_Регион
			ДопФлаги: Flag23, Flag28, Flag30
			X: 113
			Y: 158
			Ширина: 173
			Высота: 13
			ПорядокОбхода: 4191
			ОснФлаги: Педалька, НеСохранять
			Слой: Параметры
		}
		BMASKED: Страна
		{
			ИдентификаторМетаданных: -1
			Тип: Справочник
			Агрегатный тип: Справочник.ВСД_Страна
			ДопФлаги: Flag23, Flag28, Flag30
			X: 113
			Y: 143
			Ширина: 173
			Высота: 13
			ПорядокОбхода: 4192
			ОснФлаги: Педалька, НеСохранять
			Слой: Параметры
		}
		1CEDIT: ВСД_ОсобыеОтметки
		{
			ИдентификаторМетаданных: -1
			Тип: Строка
			ДопФлаги: Flag23, Flag28, Flag30
			X: 114
			Y: 238
			Ширина: 173
			Высота: 13
			ПорядокОбхода: 4193
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Особые отметки"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag1, Flag9, Flag28, Flag30
			X: 20
			Y: 237
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4194
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		1CEDIT: НазваниеРеквизитаГрузополучатель
		{
			ИдентификаторМетаданных: -1
			Тип: Строка
			ДопФлаги: Flag23, Flag28, Flag30
			X: 458
			Y: 63
			Ширина: 101
			Высота: 13
			ПорядокОбхода: 4195
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Экспертиза"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag1, Flag9, Flag28, Flag30
			X: 20
			Y: 206
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4196
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		1CEDIT: ВСД_Экспертиза
		{
			ИдентификаторМетаданных: -1
			Тип: Строка
			ДопФлаги: Flag23, Flag28, Flag30
			X: 114
			Y: 206
			Ширина: 173
			Высота: 13
			ПорядокОбхода: 4197
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Местность"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag1, Flag9, Flag28, Flag30
			X: 20
			Y: 222
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4198
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		1CEDIT: ВСД_Местность
		{
			ИдентификаторМетаданных: -1
			Тип: Строка
			ДопФлаги: Flag23, Flag28, Flag30
			X: 114
			Y: 222
			Ширина: 173
			Высота: 13
			ПорядокОбхода: 4199
			Слой: Параметры
		}
		BUTTON: 
		{
			Заголовок: "Х"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 274
			Y: 57
			Ширина: 13
			Высота: 13
			ПорядокОбхода: 4200
			Формула: "ВыбКонтрагент=0"
			Слой: Параметры
		}
		BMASKED: ВыбКонтрагент
		{
			ИдентификаторМетаданных: -1
			Тип: Справочник
			Агрегатный тип: Справочник.Контрагенты
			ДопФлаги: Flag23, Flag28, Flag30
			X: 113
			Y: 58
			Ширина: 158
			Высота: 13
			ПорядокОбхода: 4201
			ОснФлаги: ПропускатьПриВводе, Педалька
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Контрагенты:"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag1, Flag9, Flag28, Flag30
			X: 20
			Y: 58
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4202
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		STATIC: 
		{
			Заголовок: "Фирма:"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag1, Flag9, Flag28, Flag30
			X: 20
			Y: 42
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4203
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Параметры
		}
		BMASKED: ВыбФирма
		{
			Заголовок: "Фирма:"
			ИдентификаторМетаданных: -1
			Тип: Справочник
			Агрегатный тип: Справочник.Фирмы
			ДопФлаги: Flag23, Flag28, Flag30
			X: 113
			Y: 41
			Ширина: 173
			Высота: 13
			ПорядокОбхода: 4204
			ОснФлаги: ПропускатьПриВводе, Педалька
			Слой: Параметры
		}
		STATIC: 
		{
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag9, Flag28, Flag30
			X: 169
			Y: 26
			Ширина: 97
			Высота: 13
			ПорядокОбхода: 4205
			Формула: "Филиал"
			Шрифт: MS Sans Serif
			{
				Жирный: Да
				Param9: 204
				Param10: 1
				Param11: 2
				Param12: 1
				Param13: 34
			}
			ЦветТекста: 8388608
			Слой: Параметры
		}
		1CGROUPBOX: 
		{
			Заголовок: "Условия отбора"
			ДопФлаги: Flag0, Flag1, Flag2, Flag28, Flag30
			X: 14
			Y: 19
			Ширина: 282
			Высота: 58
			ПорядокОбхода: 4206
			Слой: Параметры
		}
		STATIC: ИнфоВыбор
		{
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag28, Flag30
			X: 168
			Y: 32
			Ширина: 272
			Высота: 9
			ПорядокОбхода: 4207
			Шрифт: MS Sans Serif
			{
				Жирный: Да
				Param9: 204
				Param10: 1
				Param11: 2
				Param12: 1
				Param13: 34
			}
			ЦветТекста: 32768
			Слой: СписокДокументов
		}
		STATIC: 
		{
			ДопФлаги: Flag28, Flag30
			X: 210
			Y: 28
			Ширина: 322
			Высота: 14
			ПорядокОбхода: 4208
			Формула: "СписокПартий.ВСД_Продукция_Элемент"
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Партии
		}
		STATIC: 
		{
			Заголовок: "Продукция:"
			ДопФлаги: Flag28, Flag30
			X: 163
			Y: 29
			Ширина: 39
			Высота: 11
			ПорядокОбхода: 4209
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Партии
		}
		STATIC: 
		{
			Заголовок: "Партия:"
			ДопФлаги: Flag28, Flag30
			X: 163
			Y: 45
			Ширина: 39
			Высота: 11
			ПорядокОбхода: 4210
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Партии
		}
		1CGROUPBOX: 
		{
			ДопФлаги: Flag0, Flag1, Flag2, Flag28, Flag30
			X: 155
			Y: 20
			Ширина: 456
			Высота: 47
			ПорядокОбхода: 4211
			Слой: Партии
		}
		STATIC: 
		{
			ДопФлаги: Flag28, Flag30
			X: 210
			Y: 45
			Ширина: 322
			Высота: 14
			ПорядокОбхода: 4212
			Формула: "СписокПартий.Партия"
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Партии
		}
		STATIC: 
		{
			ДопФлаги: Flag28, Flag30
			X: 534
			Y: 28
			Ширина: 73
			Высота: 13
			ПорядокОбхода: 4213
			Формула: """расход: ""+СписокПартий.КолвоСписания+"" кг"""
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Партии
		}
		STATIC: 
		{
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag28, Flag30
			X: 534
			Y: 46
			Ширина: 72
			Высота: 13
			ПорядокОбхода: 4214
			Формула: """остаток: ""+СписокПартий.Колво+"" кг"""
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Партии
		}
		BUTTON: 
		{
			Заголовок: "Производство"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 10
			Y: 188
			Ширина: 79
			Высота: 14
			ПорядокОбхода: 4215
			Формула: "МенюПроизводство()"
			ОснФлаги: ИспользоватьОписание
			Hint: "Создать ВСД_транзакция"
			Слой: Партии
		}
	}
}
