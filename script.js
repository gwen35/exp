// --- Preloader animation and removal ---
window.addEventListener('load', () => {
  const pre = document.getElementById('preloader');
  gsap.to('.logo-anim', {rotation: 360, duration: 1.2, repeat: -1, ease: "linear"});
  gsap.timeline()
    .to('#preloader .loader', {y: -6, duration: .6, repeat: 1, yoyo: true})
    .to('#preloader', {opacity: 0, pointerEvents: 'none', duration: .6, delay: .4, onComplete: () => pre.style.display = 'none'});
});

// --- Simple nav toggle for small screens ---
const toggle = document.querySelector('.nav-toggle');
toggle && toggle.addEventListener('click', () => {
  const nav = document.querySelector('nav');
  if (!nav) return;
  nav.style.display = nav.style.display === 'block' ? '' : 'block';
});

// --- Hero entrance with GSAP ---
gsap.from('.hero-title', {y: 40, opacity:0, duration:1.0, ease:"power3.out", delay:0.2});
gsap.from('.hero-sub', {y: 20, opacity:0, duration:.8, ease:"power3.out", delay:0.5});
gsap.from('.hero-cta .btn', {y: 20, opacity:0, duration:.7, stagger:0.12, delay:0.8});
gsap.to('.play-overlay', {y:0, opacity:1, duration:0.9, delay:1.0, ease:"elastic.out(1,0.6)"});

// --- ScrollReveal for sections ---
ScrollReveal().reveal('.section h2', {distance:'20px', origin:'bottom', interval:80, duration:700});
ScrollReveal().reveal('.service', {distance:'30px', origin:'bottom', interval:80, duration:700});
ScrollReveal().reveal('.project-card', {distance:'30px', origin:'bottom', interval:80, duration:700});
ScrollReveal().reveal('.split .left, .split .right', {distance:'30px', origin:'left', interval:90, duration:700});

// --- Project modal logic ---
const modal = document.getElementById('project-modal');
const modalImg = document.getElementById('modal-img');
const modalTitle = document.getElementById('modal-title');
const modalDesc = document.getElementById('modal-desc');
const modalLink = document.getElementById('modal-link');
const closeBtn = document.querySelector('.modal-close');

function openModalFromCard(card){
  const img = card.dataset.img || card.querySelector('img')?.src;
  const title = card.dataset.title || card.querySelector('h3')?.innerText;
  const desc = card.dataset.desc || '';
  const link = card.dataset.link || '#';
  modalImg.src = img;
  modalTitle.textContent = title;
  modalDesc.textContent = desc;
  modalLink.href = link;
  modal.classList.add('show');
  modal.setAttribute('aria-hidden', 'false');
  // animate modal content
  gsap.from('.modal-panel', {scale:.96, opacity:0, duration:.45, ease:'power2.out'});
}

document.querySelectorAll('.project-card').forEach(card => {
  card.addEventListener('click', () => openModalFromCard(card));
  // keyboard accessibility
  card.addEventListener('keypress', (e) => { if(e.key === 'Enter') openModalFromCard(card); });
});

closeBtn && closeBtn.addEventListener('click', () => {
  modal.classList.remove('show');
  modal.setAttribute('aria-hidden','true');
});

// close modal on backdrop click
modal && modal.addEventListener('click', (e) => {
  if (e.target === modal) { 
    modal.classList.remove('show');
  }
});

// contact form submit (placeholder)
const contactForm = document.getElementById('contact-form');
contactForm && contactForm.addEventListener('submit', (e) => {
  e.preventDefault();
  // simple success animation
  gsap.to(contactForm, {scale:0.98, duration:0.1, yoyo:true, repeat:1});
  alert('Merci — message simulé envoyé ! (tu peux connecter un backend ou Formspree)');
});

// update footer year
document.getElementById('year').textContent = new Date().getFullYear();


// Texte à faire apparaître
const heroText = "Je conçois des expériences numériques visuelles, rapides et mémorables. Ici se trouvent mes projets et designs.";
const target = document.getElementById("hero-typewriter");
const speed = 50; // Vitesse en ms par caractère

let index = 0;

function typeHeroText() {
  if (index < heroText.length) {
    target.innerHTML += heroText.charAt(index);
    index++;
    setTimeout(typeHeroText, speed);
  }
}


const form = document.querySelector("form");

form.addEventListener("submit", async (e) => {
  e.preventDefault();
  const data = new FormData(form);
  const response = await fetch(form.action, {
    method: "POST",
    body: data,
    headers: { 'Accept': 'application/json' }
  });

  if (response.ok) {
    alert("Merci ! Ton message a bien été envoyé 😊");
    form.reset();
  } else {
    alert("Une erreur est survenue 😢. Réessaie plus tard.");
  }
});


// Lancer l'effet après le chargement de la page
window.addEventListener("DOMContentLoaded", typeHeroText);

