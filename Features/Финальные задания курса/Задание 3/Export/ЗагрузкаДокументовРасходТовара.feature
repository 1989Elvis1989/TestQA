﻿#language: ru

@tree
@ExportScenarios

Функционал: Подготовка данных

Сценарий: Загрузка документов расход товара

	// Документ.РасходТовара

	И я проверяю или создаю для документа "РасходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер' | 'Дата'                | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта'                                                            | 'ВидЦен'                                           | 'ОбоснованиеОтгрузки' | 'Организация'                                                            |
		| 'e1cib/data/Документ.РасходТовара?ref=82148cc681e6eaf011efb1a9484bc3b2' | 'False'           | '1000'  | '03.12.2024 22:03:35' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная' | 'Тест 1'              | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' |
		| 'e1cib/data/Документ.РасходТовара?ref=82148cc681e6eaf011efb1a9484bc3b5' | 'False'           | '1001'  | '03.12.2024 22:16:26' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | ''                                                                  | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная' | 'Тест 1'              | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.РасходТовара?ref=82148cc681e6eaf011efb1a9484bc3b2' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 250    | 3            | 750     |
		| 'e1cib/data/Документ.РасходТовара?ref=82148cc681e6eaf011efb1a9484bc3b2' | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30ab2' | 1000   | 1            | 1000    |
		| 'e1cib/data/Документ.РасходТовара?ref=82148cc681e6eaf011efb1a9484bc3b5' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 250    | 3            | 750     |
		| 'e1cib/data/Документ.РасходТовара?ref=82148cc681e6eaf011efb1a9484bc3b5' | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30ab2' | 1000   | 1            | 1000    |
