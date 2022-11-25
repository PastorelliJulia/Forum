const user = document.querySelector("#user");
const psw = document.querySelector("#psw");

function login() {
    let info = {
        "name": user.value,
        "username": psw.value
    }

    fetch("https://jsonplaceholder.typicode.com/users", {
        "method":"POST",
        "headers": {
            "Content-Type":"application/json"
        },
        "body": JSON.stringify(info)
    })
    .then(res => {return res.json()})
    .then(data => {
        if(data.erro === undefined) {
            localStorage.setItem("info", JSON.stringify({"username":data.username, "image":data.img}));

            window.location.href = "./../Home/index.html";
        }
    })
}