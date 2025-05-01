// Hamburger Menu Functions
function hamburg() {
  const navbar = document.querySelector(".dropdown");
  navbar.style.transform = "translateY(0px)";
}

function cancel() {
  const navbar = document.querySelector(".dropdown");
  navbar.style.transform = "translateY(-500px)";
}

// Section Navigation Function
function showSection(sectionId) {
  // Hide all sections
  const sections = document.querySelectorAll("section");
  sections.forEach((section) => {
    section.style.display = "none";
  });

  // Show the selected section by its ID
  const targetSection = document.getElementById(sectionId);
  if (targetSection) {
    targetSection.style.display = "block";
  }
  
  // If the dropdown menu is open, close it
  cancel();
}

// Typewriter Effect
const texts = ["DEVELOPER"];
let speed = 100; // Typing speed in ms
const textElements = document.querySelector(".typewriter-text");
let textIndex = 0;
let characterIndex = 0;

function typeWriter() {
  if (characterIndex < texts[textIndex].length) {
    textElements.innerHTML += texts[textIndex].charAt(characterIndex);
    characterIndex++;
    setTimeout(typeWriter, speed);
  } else {
    // Pause before starting to erase
    setTimeout(eraseText, 1000);
  }
}

function eraseText() {
  if (textElements.innerHTML.length > 0) {
    textElements.innerHTML = textElements.innerHTML.slice(0, -1);
    setTimeout(eraseText, 50);
  } else {
    textIndex = (textIndex + 1) % texts.length;
    characterIndex = 0;
    setTimeout(typeWriter, 500);
  }
}

// Initialize the typewriter effect when the window loads
window.onload = function() {
  typeWriter();
};
