const express = require('express');
const cors = require('cors');
const app = express();

app.use(cors({
    origin:"http://127.0.0.1:5500",
    credentials:true,
}))
app.get("/",(req,res)=>{
    
    const jsonData = new Array();
    jsonData.push({"name" : "minseo"});
    jsonData.push({"name" : "joy"});
    jsonData.push({"name":"Try"});
    res.send(jsonData);
});
app.post("/",(req,res)=>{
    const jsonData = new Array();
    jsonData.push({"name" : "1minseo"});
    jsonData.push({"name" : "1joy"});
    jsonData.push({"name":"1Try"});
    res.send(jsonData);
});
app.listen(3005);
