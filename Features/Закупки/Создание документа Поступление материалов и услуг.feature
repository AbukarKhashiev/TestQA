﻿#language: ru

@tree




Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
    И я закрываю все окна клиентского приложения
@Поступление материалов и услуг	
Сценарий: создание документа Поступления материалов и услуг
//создание документа
* Открытие формы создания документа
И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Услуги' 'Поступления материалов и услуг'
	Тогда открылось окно 'Поступления материалов и услуг'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Поступление материалов и услуг (создание)'
* Заполнения шапки документа	
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Грузовой склад'
	Тогда элемент формы с именем "Склад" стал равен 'Грузовой склад'
	И из выпадающего списка с именем "Контрагент" я выбираю точное значение 'ИМПЭКС ООО'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ФККГРУП ООО'
	И я нажимаю кнопку выбора у поля с именем "ДоговорКонтрагента"
	Тогда открылось окно 'Договоры контрагентов'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Поступление материалов и услуг (создание) *'
* Заполнение товарной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю точное значение 'Торт'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" из выпадающего списка с именем "ТоварыЕдиницаИзмерения" я выбираю точное значение 'шт'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10,000'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '100,00'
	И в таблице "Товары" я завершаю редактирование строки
* проверка заполнения табличной части
	Тогда таблица "Товары" содержит строки:
		| 'Номенклатура' | 'Ед.' | 'Количество' | 'Цена'   | 'Сумма'    | 'Ставка НДС' | 'Сумма НДС' | 'Всего'    | 'Статья расходов' | 'Счет расходов' |
		| 'Торт'         | 'шт'  | '10,000'     | '100,00' | '1 000,00' | '20%'        | '166,67'    | '1 000,00' | 'Оплата услуг'    | '26'            |
	
		
	И я нажимаю на кнопку "Записать"
	
* Номер
	И я запоминаю значение поля "Номер" как "$Номер$"
* Проведение документа	
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Поступление материалов и услуг (создание) *' в течение 20 секунд
* Проверка создания документа	
    И таблица "Список" содержит строки :
		| 'Номер' |
		| '$Номер$'   |

@Номенклатура		
Сценарий: проверка наличия в справочнике номенклатуры Торт
	И В командном интерфейсе я выбираю 'Склад' 'Номенклатура'
	Тогда открылось окно 'Номенклатура'
	И я нажимаю на кнопку с именем 'ФормаСписок'
    И таблица "Список" содержит строки :
		| 'Наименование' |
		| 'Торт'   |