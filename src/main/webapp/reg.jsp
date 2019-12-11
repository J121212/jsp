<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title><s:text name="title"/></title>
    

  </head>
  
  <body>
  <center>
      <s:i18n name="register">
    	<h2><s:text name="title1"></s:text></h2><br>
    	<s:text name="message"></s:text>
    	    	<s:form  method="post" action="RegisterAction">
    		<table>
    		
    			<tr>
    				<td><s:text name="name"></s:text></td>
    				<td><s:textfield name="name" ></s:textfield></td>
    			</tr>
    			<tr>
    				<td><s:text name="birthday"></s:text></td>
    				<td><s:textfield name="birthday"></s:textfield></td>
    			</tr>
    			<tr>
    				<td><s:text name="height"></s:text></td>
    				<td><s:textfield name="height"></s:textfield></td>
    			</tr>
    			<tr>
    				<td><s:text name="sex"></s:text>
    				<s:radio name="sex"  list="%{#{'male':getText('sex.male'),'female':getText('sex.female')}}"></s:radio></td>
    			</tr>
    			<tr>
    				<td><s:text name="hobby">请选择</s:text></td>
    				<td><s:select list="%{#{'sport':getText('hobby.sport'),'liter':getText('hobby.liter'),'other':getText('hobby.other')}}" name="hobby"  value="1"></s:select></td>
    			</tr>
    	</table>
    		<br>                                                                
    		<input type="submit" name="submit" value="<s:text name='submit'/>" />
    		
    	</s:form>
    		
    </s:i18n>
    </center>
  </body>
</html>
