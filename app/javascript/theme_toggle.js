// Theme toggle functionality
// Persists user preference in localStorage

function initThemeToggle() {
  const themeToggle = document.getElementById("theme-toggle");
  const html = document.documentElement;
  
  if (!themeToggle) return;
  
  // Load saved theme preference
  const savedTheme = localStorage.getItem("theme");
  if (savedTheme === "night") {
    html.setAttribute("data-theme", "night");
    themeToggle.checked = true;
  } else {
    html.setAttribute("data-theme", "corporate");
    themeToggle.checked = false;
  }
  
  // Remove existing listener to prevent duplicates
  themeToggle.removeEventListener("change", handleThemeChange);
  // Add event listener
  themeToggle.addEventListener("change", handleThemeChange);
}

function handleThemeChange(e) {
  const html = document.documentElement;
  
  if (e.target.checked) {
    html.setAttribute("data-theme", "night");
    localStorage.setItem("theme", "night");
  } else {
    html.setAttribute("data-theme", "corporate");
    localStorage.setItem("theme", "corporate");
  }
}

// Initialize on first page load
document.addEventListener("DOMContentLoaded", initThemeToggle);

// Re-initialize on Turbo navigation
document.addEventListener("turbo:load", initThemeToggle);

// Also apply theme immediately on page render (before full load)
// This prevents flash of wrong theme
(function() {
  const savedTheme = localStorage.getItem("theme");
  if (savedTheme) {
    document.documentElement.setAttribute("data-theme", savedTheme);
  }
})();
