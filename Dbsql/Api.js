const express = require ('express');
const routes = express.Router();
// === GET A LIST OF STUDENTS FROM DATABASE ===
routes.get('/students', (req, res)=>{
    res.send ({type:'Get Request'});
});
// === ADD STUDENTS TO DATABASE ===
routes.post('/students', (req, res)=>{
    res.send ({type:'Post Request'});
});
// === UPDATE STUDENTS IN DATABASE ===
routes.put('/students/:id', (req, res)=>{
    res.send ({type:'Update Request'});
});
// === DELETE A STUDENTS FROM DATABASE ===
routes.delete('/students/:id', (req, res)=>{
    res.send ({type:'Delete Request'});
});


module.exports = routes;
