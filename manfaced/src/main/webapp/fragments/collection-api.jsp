<%@page import="java.util.Collections"%>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.SortedSet" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Collection | List | Set | Map</h3>
    </div>
    <div class="panel-body">
        <img src="<%= request.getContextPath() %>/images/java-collections.png" />
        
        <hr/>
        <dl class="dl-horizontal">
            <dt>Set</dt>
            <dd><span class="label label-info">interface</span> - list of objects, duplicates not allowed.<br/>
                Implementations: <strong>HashSet</strong>, SortedSet
            </dd>
            
            <dt>List</dt>
            <dd><span class="label label-info">interface</span> - list of objects, duplicates are ok.<br/>
                Implementations: <strong>ArrayList</strong>, Vector (synchronized), Stack (inherited from Vector)
            </dd>
            
            
            <dt>Map</dt>
            <dd><span class="label label-info">interface</span> - dictionary, key to value pairs. No duplicates in keys.<br/>
                Implementations: <strong>HashMap</strong> (null key/value allowed), Hashtable (no nulls and synchronized),  ...
            </dd>
        </dl>
        
        Dictionary | Properties | Attributes ...
    </div>
</div>

<pre>
<code class="java" id="java-code">
Map&lt;String, Integer&gt; GPA = new HashMap();
GPA.put("Weta", 5);
GPA.put("ManFaced", 4);
GPA.put("Beetles", 4);
GPA.put("Earwigs", 2);

Set&lt;String&gt; bugs = GPA.keySet();
Iterator iter = bugs.iterator();
System.out.println("iterate over bugs set");
while(iter.hasNext()) {
    System.out.println(iter.next());
}
System.out.println("");

Collection&lt;Integer&gt; scores = GPA.values();
iter = scores.iterator();
System.out.println("iterate over scores set");
while(iter.hasNext()) {
    System.out.println(iter.next());
}
System.out.println("");

Set&lt;Map.Entry&lt;String, Integer&gt;&gt; entries = GPA.entrySet();
for(Map.Entry e : entries) {
    System.out.println(e.getKey()+":="+e.getValue());    
}

/**
 * sort the keys
 * 
 */
List&lt;String&gt; sortedKeys = new ArrayList(GPA.keySet());
Collections.sort(sortedKeys);

</code>
</pre>
<%
Map<String, Integer> GPA = new HashMap();
GPA.put("Weta", 5);
GPA.put("ManFaced", 4);
GPA.put("Beetles", 4);
GPA.put("Earwigs", 2);

Set<String> bugs = GPA.keySet();

Iterator iter = bugs.iterator();
System.out.println("iterate over bugs set");
while(iter.hasNext()) {
    System.out.println(iter.next());
}
System.out.println("");

Collection<Integer> scores = GPA.values();
iter = scores.iterator();
System.out.println("iterate over scores set");
while(iter.hasNext()) {
    System.out.println(iter.next());
}
System.out.println("");

Set<Map.Entry<String, Integer>> entries = GPA.entrySet();
for(Map.Entry e : entries) {
    System.out.println(e.getKey()+":="+e.getValue());    
}

/**
 * sort the keys
 * 
 */
List<String> sortedKeys = new ArrayList(GPA.keySet());
Collections.sort(sortedKeys);

request.setAttribute("gpa", GPA);
request.setAttribute("keys", sortedKeys);

%>
<div class="panel panel-info">
    <div class="panel-heading"><h3 class="panel-title">Output</h3></div>
    <div class="panel-body">
        <c:forEach items="${keys}" var="key">
            <c:out value="${key} := ${gpa.get(key)}" /><br/>
        </c:forEach>
    </div>
</div>
        
<script>
$(document).ready(function() {
   hljs.highlightBlock(document.getElementById('java-code')); 
});  
</script>    
    