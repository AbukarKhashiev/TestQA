﻿#language: ru

@tree

Функционал: автоматическое создание данных Номенклатура

Как Тестировщик я хочу
написать цикл для автоматического создания элементов справочника Номенклатура 
чтобы проверить,как создаются элементы справочника в 1с  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание большого объема данных (справочник Номенклатура)
И Я запоминаю значение выражения '1' в переменную "Шаг"
		И я делаю 10 раз
			И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
			И Я запоминаю значение выражения '"Товар с характеристиками"' в переменную "ТоварСХарактеристиками"
			И я проверяю или создаю для справочника "Units" объекты:
				| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Item' | 'Quantity' | 'BasisUnit' | 'UOM' | 'Description_en'     | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
				| '{"e1cib/data/Catalog.Units?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        | ''     | 1          | ''          | ''    | '$ТоварСХарактеристиками$' | ''                 | ''               | ''               |          |          |          |          |         |

