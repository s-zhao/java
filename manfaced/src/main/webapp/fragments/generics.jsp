<%-- 
    Document   : generics
    Created on : Sep 25, 2013, 9:20:18 PM
    Author     : shichang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <pre>
The Diamond: http://docs.oracle.com/javase/tutorial/java/generics/types.html#diamond
Generics: http://docs.oracle.com/javase/tutorial/java/generics/types.html
Type Erasure: http://docs.oracle.com/javase/tutorial/java/generics/erasure.html
Type Inference: http://docs.oracle.com/javase/tutorial/java/generics/genTypeInference.html

Type Safety ...
compile time type error check ...
cast ...
        </pre>        
        
<%!
public class MyClass<Tx> {
    private Tx t;
    
    public MyClass() {
        
    }
    public void set(Tx t) {
        this.t = t;
    }
    public Tx get() {
        return t;
    }    
}
%>

<%
    MyClass<String> myStr = new MyClass<String>();
    myStr.set("hello");
    String msg = myStr.get();
    System.out.println(msg);
%>

    </body>
</html>
