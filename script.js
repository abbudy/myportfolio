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
  const sections = document.querySelectorAll("section");
  sections.forEach((section) => {
    section.style.display = "none";
  });

  const targetSection = document.getElementById(sectionId);
  if (targetSection) {
    targetSection.style.display = "block";
  }

  cancel();
}

// Typewriter Effect
const texts = ["DEVELOPER"];
let speed = 100;
const textElements = document.querySelector(".typewriter-text");
let textIndex = 0;
let characterIndex = 0;

function typeWriter() {
  if (characterIndex < texts[textIndex].length) {
    textElements.innerHTML += texts[textIndex].charAt(characterIndex);
    characterIndex++;
    setTimeout(typeWriter, speed);
  } else {
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

// Initialize on load
window.onload = function () {
  typeWriter();
};

// Form submission
document.addEventListener("DOMContentLoaded", function () {
  const form = document.getElementById("contact-form");

  if (form) {
    form.addEventListener("submit", function (e) {
      const name = form.elements["name"].value.trim();
      const email = form.elements["email"].value.trim();
      const sex = form.elements["sex"].value;
      const message = form.elements["message"].value.trim();

      if (!name || !email || !sex || !message) {
        alert("Please fill out all fields before submitting.");
        e.preventDefault(); // prevent form from submitting
        return;
      }

      // Construct the mailto message
      const subject = `New Message from ${name}`;
      const body = `Name: ${name}%0AEmail: ${email}%0ASex: ${sex}%0A%0AMessage:%0A${message}`;

      // Change the form action dynamically
      form.action = `mailto:abdurrehmanahmed0182@gmail.com?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(body)}`;
    });
  }
});

document.addEventListener("DOMContentLoaded", function () {
  const form = document.getElementById("contact-form");
  const successMessage = document.getElementById("success-message");

  form.addEventListener("submit", function (event) {
    event.preventDefault();

    // Clear all fields
    form.reset();

    // Show success message
    successMessage.style.display = "flex";
    successMessage.style.alignItems = "center";
    successMessage.style.justifyContent = "center";

    // Optional: Hide message after a few seconds
    setTimeout(() => {
      successMessage.style.display = "none";
    }, 4000);
  });
});

