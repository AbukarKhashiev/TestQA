﻿#language: ru

@tree

Функционал: Редактирование документа Реализация услуг в контексте количества 
Как менеджер по продажам я хочу 
при добавлении Услуги в документ Реализация услуг в поле Количество должна быть возможность редактировань значения.   
чтобы упросить расчеты   

Контекст:
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
И я закрываю все окна клиентского приложения

Сценарий: Редактирование уже существующего документа Реализация услуг и попытка внести изменени в поле Количество
Когда В панели разделов я выбираю 'Главное'
И В командном интерфейсе я выбираю 'Услуги' 'Реализация услуг '
Тогда открылось окно 'Реализация услуг '
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Реализация услуг  ФГ000000017 от *'
И в таблице "Услуги" я активизирую поле с именем "УслугиКоличество"
И в таблице "Услуги" я выбираю текущую строку
И в таблице "Услуги" в поле с именем 'УслугиКоличество' я ввожу текст '40,000'
И в таблице "Услуги" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Реализация услуг  ФГ000000017 от * *' в течение 20 секунд

И таблица "Список" содержит строки:
	| 'Номер' |
	| 'ФГ000000017'   |


