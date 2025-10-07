document.addEventListener("scroll", () => {
  const navbar = document.querySelector(".navbar");
  if (window.scrollY > 50) {
    navbar.classList.add("scrolled");
  } else {
    navbar.classList.remove("scrolled");
  }
});

window.onload = () => {
  const title = document.querySelector(".hero-content h2");
  title.style.opacity = 0;
  title.style.transform = "translateY(20px)";
  setTimeout(() => {
    title.style.transition = "all 1s ease";
    title.style.opacity = 1;
    title.style.transform = "translateY(0)";
  }, 300);
};
