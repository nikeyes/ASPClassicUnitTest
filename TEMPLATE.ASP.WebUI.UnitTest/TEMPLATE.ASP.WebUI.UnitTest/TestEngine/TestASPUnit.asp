﻿
<%
Option Explicit
%>
<!-- #include file="include/ASPUnitRunner.asp"-->

<!-- #include virtual="TEMPLATE.ASP.WebUI.UnitTest/TEMPLATE_AllFail_Tests.asp"-->
<!-- #include virtual="TEMPLATE.ASP.WebUI.UnitTest/TEMPLATE_AllOK_Tests.asp"-->
<%
	Dim oRunner
	Set oRunner = New UnitRunner
	oRunner.AddTestContainer New TEMPLATE_AllFail_Tests
	oRunner.AddTestContainer New TEMPLATE_AllOK_Tests
	
	oRunner.Display()
%>

