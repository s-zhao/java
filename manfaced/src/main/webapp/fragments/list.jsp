<%@page import="java.util.List" %>
<%@page import="java.util.ListIterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Vector" %>

<!-- note it is /jsp/jstl/core for the past and now -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    /**
     * primitive array - fixed size
     *
     *  Type[] ar = new Type[n]
     *  Type[] ar = {a, b, c, ...}
     *  Type[][] ar = new Type[m][n]
     *  Type[][] ar2= {{a,b}, {c,d}, ... {x,y}}
     * 
     * 
     */
    
    String[] arBugs = {"man faced", "weta"};    
    request.setAttribute("bugs", arBugs);
    
    
%>
<div class="well">
    <h3>Bugs that are actaully cute!</h3>
    <ul class="list-inline">
    <c:forEach items="${bugs}" var="bug">
        <li><c:out value="${bug}"/>
    </c:forEach>
    </ul>
</pre>
</div>

<pre>
<code class="java" id="java-code">
    /**
     * primitive array - fixed size
     *
     *  Type[] ar = new Type[n]
     *  Type[] ar = {a, b, c, ...}
     *  Type[][] ar = new Type[m][n]
     *  Type[][] ar2= {{a,b}, {c,d}, ... {x,y}}
     * 
     * 
     */
    
    String[] arBugs = {"man faced", "weta"};    
    request.setAttribute("bugs", arBugs);
        
</code>
</pre>

<script>
$(document).ready(function() {
   hljs.highlightBlock(document.getElementById('java-code')); 
});  
</script>
