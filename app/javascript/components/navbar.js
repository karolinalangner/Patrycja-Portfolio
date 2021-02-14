export const navbar = () => {
    if (document.body.scrollTop > 70 || document.documentElement.scrollTop > 70) {
        document.querySelector('.logoimg').style.height = "70px";
        document.getElementById('navbar').style.backgroundColor = "rgb(255,255,255)";
        document.getElementById('navbar').style.height = "85px";
        document.getElementById('navbar').style.flexDirection = "column-reverse";
        console.log("works");
    } else {
        document.querySelector('.logoimg').style.height = "160px";
        document.getElementById('navbar').style.background = "transparent";
        document.getElementById('navbar').style.height = "255px";
        document.getElementById('navbar').style.flexDirection = "column";
    }
};
