<h3>directory details</h3>

<cfdirectory 
    directory="#GetDirectoryFromPath(GetTemplatePath())#" 
    name="myDirectory" 
    sort="name ASC, size DESC">
<cftable border="2"
    query="myDirectory" 
    htmltable 
    colheaders> 
    <cfcol 
        header="NAME:" 
        text="#Name#"> 
    <cfcol 
        header="SIZE:" 
        text="#Size#">
        <cfcol  
        header="lastmodifieddate"  
        text="#dateformat(dateLastModified)#"> 
        <cfcol  
        header="lastmodifiedtime"  
        text="#timeformat(dateLastModified)#"> 
</cftable> 