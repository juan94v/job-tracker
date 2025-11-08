// Filtrado de compañías en tiempo real
document.addEventListener('turbo:load', function() {
  const filterInput = document.getElementById('company-filter');

  if (filterInput) {
    filterInput.addEventListener('input', function() {
      const searchTerm = this.value.toLowerCase().trim();
      const jobApplications = document.querySelectorAll('.job-application');

      jobApplications.forEach(function(card) {
        const companyElement = card.querySelector('.company');

        if (companyElement) {
          const companyName = companyElement.textContent.toLowerCase();

          // Mostrar si la búsqueda está vacía o si el nombre contiene el término
          if (searchTerm === '' || companyName.includes(searchTerm)) {
            card.style.display = '';
          } else {
            card.style.display = 'none';
          }
        }
      });
    });
  }
});
