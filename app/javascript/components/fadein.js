 export function appearOnScroll() {
      let fadeIns = document.querySelectorAll(".fade-in");
      fadeIns.forEach(fadeIn => {
        if (document.documentElement.scrollTop > fadeIn.offsetTop - 600) {
        fadeIn.classList.add('appear');
        console.dir(fadeIn);
        } 
      })
  };
