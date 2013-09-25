<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            <a href="http://docs.oracle.com/javase/tutorial/java/IandI/interfaceAsType.html" target="_blank">Interface as a Type</a></h3>
    </div>
    <div class="panel-body">
        <p>In java, interfaces are abstract contracts between classes and outside world.
            Classes implement interfaces, promise to provide the behaviors the interface specified.
        </p>
        <p>In java programming language, an interface is also a type - 
            <em><a href="http://docs.oracle.com/javase/tutorial/java/IandI/createinterface.html" target="_blank">reference <strong>type</strong></a></em>.
           Since it is a <span class="label label-info">type</span>(reference type), one can define reference variables, and assign
           objects from classes implemented the interface to the variables!            
        </p>
        <p>
            An interface variable can be of both its own superclass type and the interface type
            (<span class="label label-info">dual-typed</span>).
            Therefore an interface var may be casted by its superclass and vice versa. Example: 
        </p>
<pre>
<code class="java" id="java-code">
    /**
     * reference var
     * 
     */
    List&lt;String&gt; list = new ArrayList();
    list.add("Weta");
    list.add("Grass Hopper");
    list.add("Earwigs");
    list.add("Beetles");
    list.add("Man-faced"); 
    
    /**
     * per java language spec - 
     *  http://docs.oracle.com/javase/tutorial/java/IandI/interfaceAsType.html
     * 
     * reference vars are dual typed - the reference type and the class type 
     * that creates the reference objec. Therefore, reference var can be casted
     * to its superclass ...
     * 
     */
    ArrayList&lt;String&gt; arList = (ArrayList)list;
    for(String bug: arList) {
        System.out.println(bug);
    }     
</code>
</pre>
        <blockquote>
            <p>
                java lovers advocate use of reference variables for
                better substitutability and the right to switch
                interface implementation from one to another ...
            </p>
        </blockquote>
    </div>
</div>
<%
    /**
     * reference var
     * 
     */
    List<String> list = new ArrayList();
    list.add("Weta");
    list.add("Grass Hopper");
    list.add("Earwigs");
    list.add("Beetles");
    list.add("Man-faced");
    
    request.setAttribute("bugs", list);
    
    /**
     * per java language spec - 
     *  http://docs.oracle.com/javase/tutorial/java/IandI/interfaceAsType.html
     * 
     * reference vars have dual types - the reference type and the class type 
     * that creates the reference objec. Therefore, reference var can be casted
     * to its superclass ...
     * 
     */
    ArrayList<String> arList = (ArrayList)list;
    for(String bug: arList) {
        System.out.println(bug);
    }
%>
<div class="panel panel-info">
    <div class="panel-heading"><h3 class="panel-title">Output</h3></div>
    <div class="panel-body">
        <c:forEach items="${bugs}" var="bug">
            <c:out value="${bug}" /><br/>
        </c:forEach>
    </div>
</div>
        
<script>
$(document).ready(function() {
   hljs.highlightBlock(document.getElementById('java-code')); 
});  
</script>    
    