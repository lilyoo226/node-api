const express = require("express");
const bodyParser = require("body-parser");
const request = require("request");
const https = require("https");

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/signup.html");
});

app.post("/", (req, res) => {
  const firstName = req.body.firstName;
  const lastName = req.body.lastName;
  const email = req.body.email;

  const data = {
    members: [
      {
        email_address: email,
        status: "subscribed",
        merge_fields: {
          FNAME: firstName,
          LNAME: lastName,
        },
      },
    ],
  };
  const jsonData = JSON.stringify(data);

  const url = "https://us10.api.mailchimp.com/3.0/lists/c9a87ea052";

  const option = {
    method: "POST",
    auth: "samuel1 ae2b5d2e6c09c7dae719067bca2e6fd5-us10",
  };

  const request = https.request(url, option, (response) => {
    if (response.statusCode === 200) {
      res.send("Successfully subscribe");
    } else {
      res.send("There was an error with signing up , please try again ");
    }

    response.on("data", (data) => {
      console.log(JSON.parse(data));
    });
  });
  request.write(jsonData);
  request.end;
});

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});

// ae2b5d2e6c09c7dae719067bca2e6fd5-us10
// ae2b5d2e6c09c7dae719067bca2e6fd5-us10

// c9a87ea052
