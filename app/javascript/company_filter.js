// Filtrado de compañías en tiempo real
function initializeCompanyFilter() {
  const filterInput = document.getElementById('company-filter');

  if (filterInput) {
    // Remover listener anterior si existe para evitar duplicados
    filterInput.replaceWith(filterInput.cloneNode(true));
    const newFilterInput = document.getElementById('company-filter');

    newFilterInput.addEventListener('input', function() {
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
}

// Inicializar en la carga inicial y cuando Turbo recarga la página
document.addEventListener('turbo:load', initializeCompanyFilter);
document.addEventListener('DOMContentLoaded', initializeCompanyFilter);
