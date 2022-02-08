const testFunction = () => {
  const form = document.getElementById("form");

  form.addEventListener("submit", (event) => {
    event.preventDefault();
    const c = document.querySelectorAll(".C");
    const h = document.querySelectorAll(".H");
    const a = document.querySelectorAll(".A");
    const s = document.querySelectorAll(".S");
    const i = document.querySelectorAll(".I");
    const d = document.querySelectorAll(".D");
    const e = document.querySelectorAll(".E");
    console.log(h);
    const sum_c = area(c);
    const sum_h = area(h);
    const sum_a = area(a);
    const sum_s = area(s);
    const sum_i = area(i);
    const sum_d = area(d);
    const sum_e = area(e);

    console.log(sum_c, "resultado c");
    console.log(sum_h, "resultado h");
    console.log(sum_a, "resultado a");

    const max = Math.max(sum_c, sum_h, sum_a, sum_s, sum_i, sum_d, sum_e);
    console.log(max);

    const areas = [
      { area: 'ADMINISTRATIVAS Y CONTABLES', quantity: sum_c },
      { area: 'HUMANISTA Y SOCIALES', quantity: sum_h },
      { area: 'ARTISTICAS', quantity: sum_a },
      { area: 'MEDICINA Y CIENCIAS DE LA SALUD', quantity: sum_s },
      { area: 'INGENIERIA Y COMPUTACION', quantity: sum_i },
      { area: 'DEFENSA Y SEGURIDAD ', quantity: sum_d },
      { area: 'CIENCIAS EXACTAS Y AGRARIAS', quantity: sum_e }
    ];

    const finalResult = areas.find(quant => quant.quantity === max);
    console.log(finalResult.area)

    window.location.replace(`careers?query=${finalResult.area}`);

  });
}



const area = (array) => {
  console.log(array)
  let result = 0;
  array.forEach((question) => {
    console.log(question)
    console.log(question.querySelector("input").name, "aqui")
    let nameQ = question.querySelector("input").name;
    let valueQ = document.querySelector(`input[name=${nameQ}]:checked`)?.value;

    console.log(result, "RESULT!")
    console.log(valueQ, "resultado")
    result += parseInt(valueQ);

  }
  )
  return result
}

export {testFunction}
