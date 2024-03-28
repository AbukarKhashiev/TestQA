﻿#language: ru

@tree

Функционал: проверка создания клиента

Как оператор я хочу
создать клиента
чтобы ввести клиентскую базу   

Контекст:
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: проверка создания клиента
* Открытие формы создания клиента
	И В командном интерфейсе я выбираю 'Главное' 'Контрагенты'
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение наименования клиента 
	И в поле с именем 'Наименование' я ввожу текст 'Тестовый контрагент2'
	И я нажимаю кнопку выбора у поля с именем "Родитель"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Покупатели'   |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	
	И из выпадающего списка с именем "СтранаРегистрациии" я выбираю точное значение 'РОССИЯ'
* Заполнение номера телефона клиента
	И я перехожу к закладке с именем "ГруппаКонтактнаяИнформация"
	И в поле с именем 'КонтактнаяИнформацияПоле2ab41f60x06bex11e6x9f39x28d2445dde401' я ввожу текст '888002223535'
	И я перехожу к закладке с именем "ГруппаОбщиеСведения"
* Сохранение
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка сохранения по коду
   И я запоминаю значение поля "Код" как "Код"
   И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
   И я жду закрытия окна 'Тестовый контрагеент (Контрагенты)' в течение 20 секунд
   Тогда таблица "Список" содержит строки
   	   | 'Код'       |
   	   | '$Код$' |
   	
   
         
   