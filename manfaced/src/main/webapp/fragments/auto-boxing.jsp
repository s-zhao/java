<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Autoboxing/unboxing</h3>
    </div>
    <div class="panel-body">
        Autoboxing - automatic conversion between primitive types and their wrapper classes. Example:
<pre>
    Integer I = new Integer(0);
    I = 10; //primitive to object kind
</pre>
        so one can use primitive and object kind interchangeably.
    </div>
</div>
<%
    Integer I = new Integer(0);
    I = 10;
%>
<div class="panel panel-info">
    <div class="panel-heading"><h3 class="panel-title">Output</h3></div>
    <div class="panel-body">
        I := <%= I %>
    </div>
</div>
    