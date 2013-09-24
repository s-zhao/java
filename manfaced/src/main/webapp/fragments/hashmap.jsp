<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Iterator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    /*
     * HashMap - key and value must be java Object, cannot be java primitive type
     * 
     * Java Autoboxing and Unboxing
     * 
     */
    HashMap<String, Integer> map = new HashMap<String, Integer>();
    
    map.put("VB", 10);
    map.put("ASP.NET", 5);
    map.put("JSF", 1);
    
    Set<String> keys = map.keySet();
    for(String key: keys) {
        String outStr = key;
        outStr += "="+map.get(key);
        System.out.println(outStr);
    }
    
    /**
     * iterate HashMap
     * 
     */
    Iterator iter = map.entrySet().iterator();
    while (iter.hasNext()) {
        Map.Entry pairs = (Map.Entry)iter.next();
        System.out.println(pairs.getKey()+":="+pairs.getValue());
    }
    
    request.setAttribute("items", map);   
%> 

<pre >
<code class="java" id="java-code">
    /*
     * HashMap - key and value must be java Object, cannot be java primitive type
     * 
     * Java Autoboxing and Unboxing
     * 
     */
    HashMap&lt;String, Integer&gt; map = new HashMap&lt;String, Integer&gt;();
    
    map.put("VB", 10);
    map.put("ASP.NET", 5);
    map.put("JSF", 1);
    
    Set&lt;String&gt; keys = map.keySet();
    for(String key: keys) {
        String outStr = key;
        outStr += "="+map.get(key);
        System.out.println(outStr);
    }
    
    /**
     * iterate HashMap
     * 
     */
    Iterator iter = map.entrySet().iterator();
    while (iter.hasNext()) {
        Map.Entry pairs = (Map.Entry)iter.next();
        System.out.println(pairs.getKey()+":="+pairs.getValue());
    }
    
    request.setAttribute("items", map); 
</code>    
</pre>
<pre>

Language Score:
<c:forEach items="${items.keySet()}" var="key">
    <c:out value="${key}" /> : <c:out value="${items.get(key)}" />
</c:forEach>
WHY?
    - JSF just a copycat of the failed ASP WebForms.
</pre>

<script>
$(document).ready(function() {
   hljs.highlightBlock(document.getElementById('java-code')); 
});  
</script>