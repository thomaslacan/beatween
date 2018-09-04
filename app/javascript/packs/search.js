const searchButton = document.getElementById('search-button');
const searchBar = document.getElementById('search-bar');

function appendSearch() {
  searchButton.addEventListener('click', (event) => {
    searchBar.classList.toggle('form-invisible');
    searchButton.classList.toggle('invisible');
  });
}

export { appendSearch };
