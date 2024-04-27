const express = require("express");
const port = 3000;

const app = express();
app.use(express.json());

app.post("/shadowbox/hook/auth/login/username", (req, res) => {
  console.log(req.body);
  res.send({
    jwt: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
  });
});

app.post("/shadowbox/hook/auth/signup/username", (req, res) => {
  console.log(req.body);
  res.send({
    jwt: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
  });
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
