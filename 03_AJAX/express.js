const express = require('express');
const app = express();

app.get("/",(req,res)=>{
    
    const jsonData = new Array();
    jsonData.push({"name" : "minseo"});
    jsonData.push({"name" : "joy"});
    jsonData.push({"name":"Try"});
    res.send(jsonData);
});
app.listen(3005);
