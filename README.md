ASPClassicUnitTest
==================

Template para VS2013 para la creación de Unit Test en ASP clásico integrados en MSTest. Basado en ASPUnit (http://aspunit.sourceforge.net/)

Para instalar el Template solo hay que copiar el .zip en la carpeta: My Documents\Visual Studio 2013\Templates\ProjectTemplates

Para Crear Tests hay que seguir las siguientes reglas:

  1) Las clases ASP que definen los Tests tienen que llamarse igual que el fichero que las contiene pero sin extensión.
  
  2) En el IIS donde tenemos publicada nuesta app ASP tenemos que crear un directorio virtual. que apunte al proyecto de UnitTest y que se llame igual que el Proyecto de UnitTest.
  
  3) En el App.config del proyecto de Unit Test tenemos que poner la ruta web de la aplicación que queremos probar.
  
  4) Para tener disponibles los Tests son necesarios los siguientes pasos:
    Build -> Transform All T4 Templates
    Build -> Build Solution o Build Project
	  
  5) ASPUnit: En cada fichero de Test es obligatorio definir un array con los Tests que contiene: (Ver ejemplo de la plantilla):
  
	Public Function TestCaseNames()
		TestCaseNames = Array("TestAssertsTypes", "TestError")
	End Function

Si no se quiere utilizar la integración con MSTest, se puede acceder a la interfaz Web de ASPUnit en la ruta: /TestEngine/TestASPUnit.asp
