﻿#language: ru

@tree

Функционал: Проверка отчета D2001 Продажи

Как тестировщик я хочу
убедиться что проведение документа продажи влияет на результат отчета D2001 Продажи    

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка отчета на отображение возврата
	И я закрываю все окна клиентского приложения
	И я выполняю код встроенного языка на сервере
		
			|'Документы.SalesReturn.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.ОтменаПроведения);'|
	И В командном интерфейсе я выбираю "Отчеты" "D2001 Продажи"
	Тогда открылось окно "D2001 Продажи"
	И я нажимаю на кнопку с именем 'FormGenerate'
	И в табличном документе "Result" ячейка с адресом "R17C3" равна "2 868,00" 
	И я выполняю код встроенного языка на сервере
		
			|'Документы.SalesReturn.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
	Дано Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales"
	И я нажимаю на кнопку с именем 'FormGenerate'
	И в табличном документе "Result" ячейка с адресом "R19C3" равна "2 678,00" 
	
	




