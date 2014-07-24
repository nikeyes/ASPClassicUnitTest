1) Las clases que definen los Tests tienen que llamarse igual que el fichero que las contiene pero sin extensión
2) La carpeta virtual en el IIS se tiene que llamar igual que el proyecto.
3) Para tener disponibles los Tests son necesarios los siguientes pasos:
	Build -> Transform All T4 Templates
	Build -> Build Solution o Build Project
4) ASPUnit: En cada fichero de Test es obligatorio definir un array con los Tests que contiene:
	Public Function TestCaseNames()
		TestCaseNames = Array("TestAssertsTypes", "TestError")
	End Function