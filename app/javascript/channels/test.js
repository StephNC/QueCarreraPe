const form = document.getElementById("form");

form.addEventListener("submit", (event) => {
  event.preventDefault();
  const h = document.querySelectorAll(".C");
  console.log(h);
  const sum_h = area(h);
});

const area = (array) => {
  console.log(array)
  let result = 0;
  array.forEach((question) => {
    console.log(question)
    console.log(question.querySelector("input").name, "aqui")
    let nameQ = question.querySelector("input").name;
    let valueQ = document.querySelector(`input[name=${nameQ}]:checked`)?.value;

    console.log(valueQ, "resultado")
    result += parseInt(valueQ);
    console.log(result, "RESULT!")
  }
  )
}

//window.location.replace("<%= recipe_path(@recipe) %>");

// var radios = document.getElementsByName('genderS');

// for (var i = 0, length = radios.length; i < length; i++) {
//   if (radios[i].checked) {
//     // do whatever you want with the checked radio
//     alert(radios[i].value);

//     // only one radio can be logically checked, don't check the rest
//     break;
//   }
// }
