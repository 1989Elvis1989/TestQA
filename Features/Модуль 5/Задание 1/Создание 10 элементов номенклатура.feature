#language: ru

@tree

Функционал: создание номенклатуры

Как тестировщик я хочу
создать 10 элемнтов справочника номенклатура
чтобы создать данные для тестирования   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание 10 элемнтов справочника номенклатуры циклом
	И Я запоминаю значение выражения '1' в переменную "шаг"
	И я делаю 10 раз
		И Я запоминаю значение выражения '$шаг$ + 1' в переменную "шаг"
		И Я запоминаю значение выражения '"Номенклатура" + $шаг$' в переменную "Номенклатура"
		И я проверяю или создаю для справочника "Items" объекты:
			| 'Ref'                                                             | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor'                                                           | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
			| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | '58791'  | ''            | '$Номенклатура$' | ''                 | ''               | ''               |          |          |          | 0.21     |         |


	
