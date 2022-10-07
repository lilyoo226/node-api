const mongoose = require("mongoose");

mongoose.connect("mongodb://localhost:27017/people");

const peopleSchema = new mongoose.Schema({
  name: {
    type: String,
    required: [true, "you must add a Name"],
  },
  age: Number,
  
});

const Person = mongoose.model("Person", peopleSchema);

// const samuel = new Person({
//   name: "Samuel",
//   age: 20,
// });

// const john = new Person({
//   name: "John",
//   age: 30,
// });

// const philip = new Person({
//   name: "Philip",
//   age: 80,
// });

// Person.insertMany([samuel, john, philip], (err) => {
//   if (err) {
//     console.log("error in me");
//   } else {
//     console.log("success");
//   }
// });

Person.find((err, people) => {
  if (err) {
    console.log(err);
  } else {
    mongoose.connection.close();

    // console.log(people);
    people.forEach((person) => {
      console.log(person.name);
    });
  }

  {
    /* auto exit the mongoose */
    process.exit(0);
  }
});

// person.save();
//

// .updateOne({condition},{what you want to update},(err)=>{if (err) {
//     console.log("error in me");
//   } else {
//     console.log("success");
//   }}})


// .deleteOne({condition},{what you want to update},(err)=>{if (err) {
//     console.log("error in me");
//   } else {
//     console.log("success");
//   }}})


// .deleteMany({condition},(err)=>{
// if (err) {
//     console.log("error in me");
//   } else {
//     console.log("success");
//   }})


// to establish relation 
/* 

*/