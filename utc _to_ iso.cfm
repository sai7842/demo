<cfscript>
string function getIsoTimeString(required date datetime, boolean convertToUTC=true)
{
    if(convertToUTC){
        datetime =dateConvert("local2UTC",datetime);
    }
    return(dateFormat(datetime,"yyyy-mm-dd")&"T"&timeFormat(datetime,"HH:mm;ss")&"Z");
}
 currentTime = now();
    writeOutput( "HTTP Time: " & getHttpTimeString( currentTime ) );
    writeOutput( "<br />" );
    writeOutput( "ISO Time: " & getIsoTimeString( currentTime ) );
</cfscript>