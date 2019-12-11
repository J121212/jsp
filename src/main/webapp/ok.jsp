<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
  
  	 
  		 <center>
      <s:i18n name="register">
    	<h2><s:text name="title3"></s:text></h2><br>
    	<s:text name="message"></s:text>
		  <br/>
    	
    		<table>
    				<s:text name="name"></s:text>
    		<s:property value="name" />
				<br/>
    				<s:text name="birthday"></s:text>
    				<s:property value="birthday" />
				<br/>
    				<s:text name="height"></s:text>
    				<s:property value="height" />
				<br/>
    			<s:text name="sex" />:
				<s:set name="sex" value="%{sex}" />
				<s:if test='#sex=="male"'>
					<s:text name="sex.male" />
				</s:if>
				<s:elseif test='#sex.equals("female")'>
					<s:text name="sex.female" />
				</s:elseif>
				<br/>
    			<s:text name="hobby" />:
				<s:set name="hobby" value="%{hobby}" />		
				<s:if test='#hobby=="sport"'> 				
					<s:text name="hobby.sport" />
				</s:if>
				<s:elseif test='#hobby.equals("liter")'>
					<s:text name="hobby.liter" />
				</s:elseif>
				<s:elseif test='#hobby.equals("other")'>
					<s:text name="hobby.other" />
				</s:elseif>

    		</table>
    		<br>
    </s:i18n>
    </center>
  </body>
</html>
