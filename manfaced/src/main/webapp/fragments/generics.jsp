<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title"><a href="http://docs.oracle.com/javase/tutorial/java/generics/types.html" target="_blank">Java Generics</a></h3>
    </div>
    <div class="panel-body">
        <p>Generics enables types to be parameters when defining classes, interfaces and methods.
            That is, classes, interfaces and methods in Java can take "types" as input parameters 
            when they are defined. The primary reasons to use generics are:
        </p>

        <ul>
            <li>For type safety and finding bugs in compilation time via strong type checking</li>
            <li>Elimination of cast through generic type inference mechanism</li>
            <li>Enable easy implementation of generic algorithm, such as List&lt;Integer&gt;, List&lt;String&gt;</li>
        </ul>
    
        <p>Note that, java generic is a compile time thing, those
            kind of type information are erased after source codes compiled. So they do not
            exist in java byte codes! This is called 
            <strong><a href="http://docs.oracle.com/javase/tutorial/java/generics/erasure.html" target="_blank">Type Erasure</a></strong>
            (it's a design decision and a stupid decision).
        </p>
    </div>
</div>

<pre>
<code class="java" id="java-code">
    /**
     * typical usages
     * 
     * declaring List of String explicitly:
     *      List&lt;String&gt; strList = new ArrayList&lt;String&gt;();
     * 
     * use of "diamond" inference operator (require java 1.7)
     *      List&lt;String&gt; strList2 = new ArrayList&lt;&gt;();
     * 
     * For having only one type parameter, java actually can infer
     * the type used in creating a new object via "new" operator
     *      List&lt;String&gt; strList = new ArrayList();
     */
    List&lt;String&gt; strList = new ArrayList();
    
    /**
     * this works
     */
    strList.add("Man Faced Bug");
    
    /**
     * this leads to compilation error because 0 is not string kind
     *      strList.add(0);
     */

    /**
     * without generics, we need to cast:
     *      String bug = (String)strList.get(0);
     * 
     * with generic and generic inference rule, cast is not needed
     * and java will also do auto-boxing/unboxing
     * 
     */
    String bug = strList.get(0);
    
    /*
     * List of String List - simple new generic data structure
     * 
     */
    List&lt;List&lt;String&gt;&gt; list2 = new ArrayList();
    list2.add(new ArrayList&lt;String&gt;());
    list2.get(0).add("Man Faced Bug");
    
    /**
     * common mistake:
     *      String is an object, so adding object to String List?
     *      
     *  Nope. Reason: 
     *      the parameter to List is "type" String,
     *      so anything to be added to the list must be exactly
     *      String objects. `Object` "type" is not `String`
     * 
     * So the following will lead error at list3.add when compile:
     *      List&lt;String&gt; list3 = new ArrayList();
     *      Object o = new Object();
     *      list3.add(o);
     * 
     * also largely due to Type Erasure, so java cannot do things that make sense!
     *
     */    
</code>
</pre>
<%
    /**
     * typical usages
     * 
     * declaring List of String explicitly:
     *      List<String> strList = new ArrayList<String>();
     * 
     * use of "diamond" inference operator (require java 1.7)
     *      List<String> strList2 = new ArrayList<>();
     * 
     * For having only one type parameter, java actually can infer
     * the type used in creating a new object via "new" operator
     *      List<String> strList = new ArrayList();
     */
    List<String> strList = new ArrayList();
    
    /**
     * this works
     */
    strList.add("Man Faced Bug");
    
    /**
     * this leads to compilation error because 0 is not string kind
     *      strList.add(0);
     */

    /**
     * without generics, we need to cast:
     *      String bug = (String)strList.get(0);
     * 
     * with generic and generic inference rule, cast is not needed
     * and java will also do auto-boxing/unboxing
     * 
     */
    String bug = strList.get(0);
    
    /*
     * List of String List - simple new generic data structure
     * 
     */
    List<List<String>> list2 = new ArrayList();
    list2.add(new ArrayList<String>());
    list2.get(0).add("Man Faced Bug");
    
    /**
     * common mistake:
     *      String is an object, so adding object to String List?
     *      
     *  Nope. Reason: 
     *      the parameter to List is "type" String,
     *      so anything to be added to the list must be exactly
     *      String objects. `Object` "type" is not `String`
     * 
     * So the following will lead error at list3.add when compile:
     *      List<String> list3 = new ArrayList();
     *      Object o = new Object();
     *      list3.add(o);
     * 
     * also largely due to Type Erasure, so java cannot do things that make sense!
     *
     */    
%>
<div class="panel panel-info">
    <div class="panel-heading"><h3 class="panel-title">Output</h3></div>
    <div class="panel-body">
        <%= strList.get(0) %><br/>
        <%= list2.get(0).get(0) %>
    </div>
</div>
        
<script>
$(document).ready(function() {
   hljs.highlightBlock(document.getElementById('java-code')); 
});  
</script>    
      