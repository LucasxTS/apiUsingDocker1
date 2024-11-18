const express = require('express')
const app = express()
const cors = require('cors'); 

app.use(cors())

app.use(express.json());

app.get('/api/data', (req, res) => {
    res.json({ message: 'Ola jean!!' });
});

app.listen(5500, () => {
  console.log(`O servidor está rodando na porta 5500`)
})