const express = require('express');
const app = express();

app.get('/run', (req, res) => {

  const cmd = req.query.cmd;

  const { exec } = require('child_process');

  exec(cmd, (err, stdout) => {
    res.send(stdout);
  });

});

const DB_PASSWORD = "SuperSecret123!";

app.listen(3000);
