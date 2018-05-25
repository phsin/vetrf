Диалог: 
{
	Параметры формы: 
	{
		Параметры: 
		{
			Ширина: 578
			Высота: 315
			Заголовок: " "
			АвтоПорядокОбхода: Нет
			Param24: 6
			Param25: 28
			Слои
			{
				Шапка: Видимый, Активный
				Основной: Видимый
				Подвал: Видимый
				ТабличнаяЧасть: 
			}
		}
	}
	Табличная часть: 
	{
		Param1: 7
		Multicolumn: 
		{
			browse: 
			{
				Тип: Справочник
				ДопФлаги: Flag20, Flag21, Flag23, Flag28, Flag30
				X: 11
				Y: 55
				Ширина: 553
				Высота: 212
				ПорядокОбхода: 4151
				Формула: "ПриВыбореФирмы()"
				Слой: ТабличнаяЧасть
			}
		}
		Колонки: 
		{
			1CEDIT: НомерСтроки
			{
				Заголовок: "N"
				ИдентификаторМетаданных: -2572
				Тип: Число
				Длина: 4
				ТипКолонки: 2
				Ширина: 29
				ПорядокОбхода: 4152
				Param15: 2
				Param22: 0
			}
			BMASKED: Номенклатура
			{
				Заголовок: "Номенклатура"
				ИдентификаторМетаданных: Документ.ВСД_транзакция.Номенклатура
				Тип: Справочник
				Агрегатный тип: Справочник.Номенклатура
				ТипКолонки: 1
				Ширина: 245
				ПорядокОбхода: 4153
				Param15: 2
				ОснФлаги: Педалька, Flag21
				Param22: 0
			}
			BMASKED: Продукция_Элемент
			{
				Заголовок: "Продукция_Элемент"
				ИдентификаторМетаданных: Документ.ВСД_транзакция.Продукция_Элемент
				Тип: Справочник
				Агрегатный тип: Справочник.ВСД_Продукция_Элемент
				ТипКолонки: 1
				Ширина: 185
				ПорядокОбхода: 4154
				Param15: 2
				ОснФлаги: Педалька, СНовойСтроки
				Param22: 0
			}
			BMASKED: Партия
			{
				Заголовок: "Партия"
				ИдентификаторМетаданных: Документ.ВСД_транзакция.Партия
				Тип: Справочник
				Агрегатный тип: Справочник.ВСД_Партия
				ТипКолонки: 1
				Ширина: 290
				ПорядокОбхода: 4155
				Формула: "ПриВыбореПартии()"
				Param15: 2
				ОснФлаги: Педалька
				Param22: 0
			}
			1CEDIT: Количество
			{
				Заголовок: "Количество"
				ИдентификаторМетаданных: Документ.ВСД_транзакция.Количество
				Тип: Число
				Длина: 15
				Точность: 3
				ТипКолонки: 1
				Ширина: 95
				ПорядокОбхода: 4156
				Param15: 2
				Param22: 0
			}
			BMASKED: ЕдиницаИзмерения
			{
				Заголовок: "ЕдиницаИзмерения"
				ИдентификаторМетаданных: Документ.ВСД_транзакция.ЕдиницаИзмерения
				Тип: Справочник
				Агрегатный тип: Справочник.ВСД_ЕдиницыИзмерения
				ТипКолонки: 1
				Ширина: 37
				ПорядокОбхода: 4157
				Param15: 2
				ОснФлаги: Педалька
				Param22: 0
			}
			1CEDIT: КоличествоМест
			{
				Заголовок: "КоличествоМест"
				ИдентификаторМетаданных: Документ.ВСД_транзакция.КоличествоМест
				Тип: Число
				Длина: 10
				ТипКолонки: 1
				Ширина: 65
				ПорядокОбхода: 4158
				Param15: 2
				ОснФлаги: Flag21
				Param22: 0
			}
			BMASKED: ФормаУпаковки
			{
				Заголовок: "ФормаУпаковки"
				ИдентификаторМетаданных: Документ.ВСД_транзакция.ФормаУпаковки
				Тип: Справочник
				Агрегатный тип: Справочник.ВСД_ФормыУпаковки
				ТипКолонки: 1
				Ширина: 53
				ПорядокОбхода: 4159
				Param15: 2
				ОснФлаги: Педалька, Flag21
				Param22: 0
			}
			1CEDIT: КодПродукции
			{
				Заголовок: "productCode"
				ИдентификаторМетаданных: Документ.ВСД_транзакция.КодПродукции
				Тип: Строка
				Длина: 50
				ТипКолонки: 1
				Ширина: 106
				ПорядокОбхода: 4160
				Param15: 2
				Param22: 0
			}
			1CEDIT: Штрихкод
			{
				Заголовок: "Штрихкод единицы товара"
				ИдентификаторМетаданных: Документ.ВСД_транзакция.Штрихкод
				Тип: Строка
				Длина: 150
				ТипКолонки: 1
				Ширина: 175
				ПорядокОбхода: 4161
				Param15: 2
				Param22: 0
			}
		}
	}
	Элементы: 
	{
		1CEDIT: Местность
		{
			Заголовок: "ВсдМестность"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.Местность
			Тип: Строка
			Длина: 99
			ДопФлаги: Flag23, Flag28, Flag30
			X: 84
			Y: 190
			Ширина: 225
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4152
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "Местность:"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 19
			Y: 190
			Ширина: 88
			Высота: 14
			ПорядокОбхода: 4153
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Основной
		}
		1CEDIT: Экспертиза
		{
			Заголовок: "ВсдЭкспертиза"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.Экспертиза
			Тип: Строка
			Длина: 99
			ДопФлаги: Flag23, Flag28, Flag30
			X: 84
			Y: 173
			Ширина: 225
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4154
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "Экспертиза:"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 19
			Y: 173
			Ширина: 88
			Высота: 14
			ПорядокОбхода: 4155
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Основной
		}
		1CGROUPBOX: 
		{
			Заголовок: "Экспертиза"
			ДопФлаги: Flag0, Flag1, Flag2, Flag28, Flag30
			X: 13
			Y: 164
			Ширина: 306
			Высота: 99
			ПорядокОбхода: 4156
			Слой: Основной
		}
		STATIC: 
		{
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag9, Flag28, Flag30
			X: 462
			Y: 293
			Ширина: 109
			Высота: 13
			ПорядокОбхода: 4157
			Формула: "Автор"
			ОснФлаги: ШрифтПоУмолчанию, ПрозрачныйФон
			Hint: "Автор документа (данные \nиз справочника ""Пользователи"")"
			ShortHint: "Автор документа (пользователь)"
			ЦветТекста: 128
			Слой: Подвал
		}
		BUTTON: кнДействия
		{
			Заголовок: "&Действия..."
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 324
			Y: 293
			Ширина: 54
			Высота: 13
			ПорядокОбхода: 4158
			Формула: "глДействия(Контекст,СписокДействий)"
			ОснФлаги: ПропускатьПриВводе
			Hint: "Нажатие этой кнопки \nвызывает меню со списком действий, \nкоторые могут быть выполнены с\nдокументом. Подробная информация \nо списке действий по документу \nприведена в его описании"
			ShortHint: "Действия по документу"
			Слой: Подвал
		}
		BUTTON: кнПечать
		{
			Заголовок: "&Печать"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 266
			Y: 293
			Ширина: 54
			Высота: 13
			ПорядокОбхода: 4159
			Формула: "ПоКнопкеПечать()"
			ОснФлаги: ИспользоватьОписание, КартинкаПоЦентру
			Hint: "Сформировать печатную форму \nдокумента"
			ShortHint: "Печать накладной"
			Слой: Подвал
			HotKey: 3+F8
		}
		BUTTON: 
		{
			Заголовок: "Закрыть"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 63
			Y: 293
			Ширина: 54
			Высота: 13
			ПорядокОбхода: 4160
			Формула: "#Закрыть"
			Слой: Подвал
		}
		BUTTON: кнОК
		{
			Заголовок: "ОК"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, КнопкаПоУмолчанию, Flag28, Flag30
			X: 5
			Y: 293
			Ширина: 54
			Высота: 13
			ПорядокОбхода: 4161
			Формула: "#Записать Закрыть"
			Слой: Подвал
		}
		STATIC: 
		{
			Заголовок: "Комментарий:"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 8
			Y: 271
			Ширина: 50
			Высота: 14
			ПорядокОбхода: 4162
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Подвал
		}
		1CEDIT: номерАвто
		{
			Заголовок: "номерАвто"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.номерАвто
			Тип: Строка
			Длина: 10
			ДопФлаги: Flag23, Flag28, Flag30
			X: 358
			Y: 223
			Ширина: 84
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4163
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "гос. №"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 327
			Y: 222
			Ширина: 65
			Высота: 14
			ПорядокОбхода: 4164
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Основной
		}
		BMASKED: ТтнДата
		{
			Заголовок: "ТтнДата"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.ТтнДата
			Тип: Дата
			ДопФлаги: Flag23, Flag28, Flag30
			X: 358
			Y: 206
			Ширина: 84
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4165
			ОснФлаги: Педалька
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "Дата:"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 328
			Y: 205
			Ширина: 23
			Высота: 14
			ПорядокОбхода: 4166
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Основной
		}
		1CEDIT: ТтнНомер
		{
			Заголовок: "ТтнНомер"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.ТтнНомер
			Тип: Строка
			Длина: 50
			ДопФлаги: Flag23, Flag28, Flag30
			X: 358
			Y: 189
			Ширина: 84
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4167
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "№"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 331
			Y: 186
			Ширина: 12
			Высота: 14
			ПорядокОбхода: 4168
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Основной
		}
		1CEDIT: ТтнСерия
		{
			Заголовок: "ТтнСерия"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.ТтнСерия
			Тип: Строка
			Длина: 10
			ДопФлаги: Flag23, Flag28, Flag30
			X: 358
			Y: 172
			Ширина: 84
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4169
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "Серия:"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 327
			Y: 172
			Ширина: 27
			Высота: 14
			ПорядокОбхода: 4170
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Основной
		}
		1CGROUPBOX: 
		{
			Заголовок: "ТТН"
			ДопФлаги: Flag0, Flag1, Flag2, Flag28, Flag30
			X: 321
			Y: 164
			Ширина: 134
			Высота: 99
			ПорядокОбхода: 4171
			Слой: Основной
		}
		RADIO: 
		{
			Заголовок: "Форма 4"
			Тип: Число
			Длина: 3
			ДопФлаги: Flag0, КартинкаПоЦентру, Flag28, Flag30
			X: 356
			Y: 61
			Ширина: 67
			Высота: 13
			ПорядокОбхода: 4172
			Слой: Основной
		}
		RADIO: ФормаВСД
		{
			Заголовок: "Форма 2"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.ФормаВСД
			Тип: Число
			Длина: 10
			ДопФлаги: Flag0, КартинкаПоЦентру, ПервыйВГруппе, Flag28, Flag30
			X: 279
			Y: 61
			Ширина: 67
			Высота: 13
			Атрибут: Да
			ПорядокОбхода: 4173
			Слой: Основной
		}
		1CGROUPBOX: 
		{
			Заголовок: "Форма ВСД"
			ДопФлаги: Flag0, Flag1, Flag2, Flag28, Flag30
			X: 270
			Y: 53
			Ширина: 159
			Высота: 24
			ПорядокОбхода: 4174
			Слой: Основной
		}
		BMASKED: Перевозчик_ХозСубъект
		{
			Заголовок: "Перевозчик_ХозСубъект"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.Перевозчик_ХозСубъект
			Тип: Справочник
			Агрегатный тип: Справочник.ВСД_ХозСубъект
			ДопФлаги: Flag23, Flag28, Flag30
			X: 107
			Y: 137
			Ширина: 120
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4175
			ОснФлаги: Педалька
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "Перевозчик ХозСубъект:"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 16
			Y: 137
			Ширина: 87
			Высота: 14
			ПорядокОбхода: 4176
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Основной
		}
		BMASKED: Получатель_Площадка
		{
			Заголовок: "Получатель_Площадка"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.Получатель_Площадка
			Тип: Справочник
			Агрегатный тип: Справочник.ВСД_Площадка
			ДопФлаги: Flag23, Flag28, Flag30
			X: 107
			Y: 119
			Ширина: 120
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4177
			ОснФлаги: Педалька
			Маска: Получатель_ХозСубъект
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "Получатель Площадка:"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 16
			Y: 119
			Ширина: 87
			Высота: 14
			ПорядокОбхода: 4178
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Основной
		}
		BMASKED: Получатель_ХозСубъект
		{
			Заголовок: "Получатель_ХозСубъект"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.Получатель_ХозСубъект
			Тип: Справочник
			Агрегатный тип: Справочник.ВСД_ХозСубъект
			ДопФлаги: Flag23, Flag28, Flag30
			X: 107
			Y: 101
			Ширина: 120
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4179
			Формула: "ПриВыбореХС(""Получатель_ХозСубъект"",Получатель_ХозСубъект)"
			ОснФлаги: Педалька
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "Получатель ХозСубъект:"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 16
			Y: 101
			Ширина: 87
			Высота: 14
			ПорядокОбхода: 4180
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Основной
		}
		BMASKED: Отправитель_Площадка
		{
			Заголовок: "Отправитель_Площадка"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.Отправитель_Площадка
			Тип: Справочник
			Агрегатный тип: Справочник.ВСД_Площадка
			ДопФлаги: Flag23, Flag28, Flag30
			X: 107
			Y: 83
			Ширина: 120
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4181
			ОснФлаги: Педалька
			Маска: Отправитель_ХозСубъект
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "Отправитель площадка:"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 16
			Y: 83
			Ширина: 87
			Высота: 14
			ПорядокОбхода: 4182
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Основной
		}
		BMASKED: Отправитель_ХозСубъект
		{
			Заголовок: "Отправитель_ХозСубъект"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.Отправитель_ХозСубъект
			Тип: Справочник
			Агрегатный тип: Справочник.ВСД_ХозСубъект
			ДопФлаги: Flag23, Flag28, Flag30
			X: 107
			Y: 65
			Ширина: 120
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4183
			Формула: "ПриВыбореХС(""Отправитель_ХозСубъект"",Отправитель_ХозСубъект)"
			ОснФлаги: Педалька
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "Отправитель ХозСубъект:"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 16
			Y: 65
			Ширина: 91
			Высота: 14
			ПорядокОбхода: 4184
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Основной
		}
		1CGROUPBOX: 
		{
			ДопФлаги: Flag0, Flag1, Flag2, Flag28, Flag30
			X: 12
			Y: 53
			Ширина: 253
			Высота: 107
			ПорядокОбхода: 4185
			Слой: Основной
		}
		BUTTON: 
		{
			Заголовок: "ВСД"
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 382
			Y: 293
			Ширина: 41
			Высота: 13
			ПорядокОбхода: 4186
			Формула: "ДействияВСД()"
			Слой: Подвал
		}
		STATIC: 
		{
			ДопФлаги: Flag9, Flag28, Flag30
			X: 185
			Y: 19
			Ширина: 77
			Высота: 14
			ПорядокОбхода: 4187
			Формула: "Статус"
			Шрифт: MS Sans Serif
			{
				Жирный: Да
				Param9: 204
				Param10: 1
				Param11: 2
				Param12: 1
				Param13: 34
			}
			ЦветТекста: 16711680
			Слой: Шапка
		}
		STATIC: ТекстОснования
		{
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag9, Flag28, Flag30
			X: 63
			Y: 36
			Ширина: 322
			Высота: 13
			ПорядокОбхода: 4188
			Формула: "ДокОснование"
			ОснФлаги: ШрифтПоУмолчанию, ПрозрачныйФон
			Hint: "Краткая информация \nо документе, \nна основании которого \nвыписан данный документ"
			ЦветТекста: 8388608
			Слой: Шапка
		}
		BUTTON: кнОснование
		{
			Заголовок: "Основание"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 13
			Y: 36
			Ширина: 43
			Высота: 13
			ПорядокОбхода: 4189
			Формула: "ПоКнопкеОснование()"
			ОснФлаги: ПропускатьПриВводе
			Hint: "Кнопка выбора или \nпросмотра \nдокумента-основания"
			Слой: Шапка
		}
		BMASKED: ДатаДок
		{
			Заголовок: "ДатаДок"
			ИдентификаторМетаданных: -2571
			Тип: Дата
			ДопФлаги: Flag23, Flag28, Flag30
			X: 119
			Y: 19
			Ширина: 62
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4190
			ОснФлаги: Педалька
			Слой: Шапка
		}
		STATIC: 
		{
			Заголовок: "от"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 103
			Y: 19
			Ширина: 13
			Высота: 14
			ПорядокОбхода: 4191
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Шапка
		}
		1CEDIT: НомерДок
		{
			Заголовок: "НомерДок"
			ИдентификаторМетаданных: -2570
			Тип: Число
			Длина: 5
			ДопФлаги: Flag23, Flag28, Flag30
			X: 36
			Y: 19
			Ширина: 62
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4192
			ОснФлаги: ПропускатьПриВводе
			Маска: Производитель_ХозСубъект
			Слой: Шапка
		}
		STATIC: 
		{
			Заголовок: "№"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 17
			Y: 19
			Ширина: 13
			Высота: 14
			ПорядокОбхода: 4193
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Шапка
		}
		1CGROUPBOX: 
		{
			Заголовок: "Термические условия перевозки"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, Flag2, Flag28, Flag30
			X: 271
			Y: 88
			Ширина: 158
			Высота: 72
			ПорядокОбхода: 4194
			Слой: Основной
		}
		RADIO: 
		{
			Заголовок: "Вентирируемый"
			ИдентификаторМетаданных: -1
			Тип: Число
			Длина: 3
			ДопФлаги: Flag0, КартинкаПоЦентру, Flag28, Flag30
			X: 279
			Y: 140
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4195
			Слой: Основной
		}
		RADIO: 
		{
			Заголовок: "Охлаждаемый"
			ИдентификаторМетаданных: -1
			Тип: Число
			Длина: 3
			ДопФлаги: Flag0, КартинкаПоЦентру, Flag28, Flag30
			X: 279
			Y: 126
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4196
			Слой: Основной
		}
		RADIO: 
		{
			Заголовок: "Охлажденный"
			ИдентификаторМетаданных: -1
			Тип: Число
			Длина: 3
			ДопФлаги: Flag0, КартинкаПоЦентру, Flag28, Flag30
			X: 279
			Y: 112
			Ширина: 89
			Высота: 13
			ПорядокОбхода: 4197
			Слой: Основной
		}
		RADIO: ТермическоеСостояние
		{
			Заголовок: "Замороженный"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.ТермическоеСостояние
			Тип: Число
			Длина: 10
			ДопФлаги: Flag0, КартинкаПоЦентру, ПервыйВГруппе, Flag28, Flag30
			X: 279
			Y: 98
			Ширина: 87
			Высота: 13
			Атрибут: Да
			ПорядокОбхода: 4198
			Слой: Основной
		}
		STATIC: 
		{
			Заголовок: "Особые отметки:"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 19
			Y: 206
			Ширина: 61
			Высота: 13
			ПорядокОбхода: 4199
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Основной
		}
		1CEDIT: ОсобыеОтметки
		{
			Заголовок: "ОсобыеОтметки"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.ОсобыеОтметки
			Тип: Строка
			Длина: 99
			ДопФлаги: Flag23, Flag28, Flag30
			X: 84
			Y: 208
			Ширина: 225
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4200
			Слой: Основной
		}
		CHECKBOX: cargoExpertized
		{
			Заголовок: "Отметка о проведении ветеринарной экспертизы продукции."
			ИдентификаторМетаданных: Документ.ВСД_транзакция.cargoExpertized
			Тип: Число
			Длина: 1
			ДопФлаги: Flag0, Flag1, Flag28, Flag30
			X: 24
			Y: 239
			Ширина: 267
			Высота: 12
			Атрибут: Да
			ПорядокОбхода: 4201
			ОснФлаги: ИспользоватьОписание
			Hint: "Отметка о проведении ветеринарной экспертизы продукции.\nЕсли в поле cargoInspected указано true и в этом поле указано true, то на форме сертификата будет отметка ""Подвергнуто ветеринарно-санитарной экспертизе в полном объёме"";\nЕсли в поле cargoInspected указано false, то вне зависимости от значения в этом поле на печатной форме сертификата будет указано ""Не подвергнуто ветеринарно-санитарной экспертизе""."
			Слой: Основной
		}
		1CEDIT: applicationID
		{
			Заголовок: "applicationID"
			ИдентификаторМетаданных: Документ.ВСД_транзакция.applicationID
			Тип: Строка
			Длина: 36
			ДопФлаги: Flag23, Flag28, Flag30
			X: 326
			Y: 19
			Ширина: 152
			Высота: 14
			Атрибут: Да
			ПорядокОбхода: 4202
			Слой: Шапка
		}
		STATIC: 
		{
			Заголовок: "Application ID"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 266
			Y: 19
			Ширина: 53
			Высота: 14
			ПорядокОбхода: 4203
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Шапка
		}
		CHECKBOX: cargoInspected
		{
			Заголовок: "Отметка об обследовании партии продукции ветеринарным врачом."
			ИдентификаторМетаданных: Документ.ВСД_транзакция.cargoInspected
			Тип: Число
			Длина: 1
			ДопФлаги: Flag0, Flag1, Flag28, Flag30
			X: 24
			Y: 224
			Ширина: 281
			Высота: 13
			Атрибут: Да
			ПорядокОбхода: 4204
			Слой: Основной
		}
		BUTTON: кнЗаписать
		{
			Заголовок: "Записать"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 122
			Y: 293
			Ширина: 54
			Высота: 13
			ПорядокОбхода: 4205
			Формула: "#Записать"
			Слой: Подвал
		}
		BUTTON: кнОтправить
		{
			Заголовок: "Отправить"
			ИдентификаторМетаданных: -1
			ДопФлаги: Flag0, Flag1, КартинкаПоЦентру, Flag28, Flag30
			X: 186
			Y: 293
			Ширина: 54
			Высота: 13
			ПорядокОбхода: 4206
			Формула: "Отправить()"
			ОснФлаги: ПропускатьПриВводе
			ShortHint: "Отправить в Меркурий"
			Слой: Подвал
		}
		STATIC: 
		{
			Заголовок: "Фирма:"
			ДопФлаги: Flag9, Flag28, Flag30
			X: 395
			Y: 36
			Ширина: 32
			Высота: 14
			ПорядокОбхода: 4207
			ОснФлаги: ШрифтПоУмолчанию, ЦветТекстаАвто
			Слой: Шапка
		}
		BMASKED: Фирма
		{
			Заголовок: "Фирма"
			ИдентификаторМетаданных: ОбщийРеквизитДокумента.Фирма
			Тип: Справочник
			ДопФлаги: Flag23, Flag28, Flag30
			X: 427
			Y: 38
			Ширина: 143
			Высота: 13
			Атрибут: Да
			ПорядокОбхода: 4208
			Формула: "ПриВыбореФирмы()"
			ОснФлаги: Педалька
			Слой: Шапка
		}
	}
}
