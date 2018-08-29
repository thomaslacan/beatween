const searchButton = document.getElementById('search-button');
const cardBoard = document.querySelector('.cards-board');
const searchBar = document.getElementById('search-bar');

function appendSearch() {
  searchButton.addEventListener('click', (event) => {
    cardBoard.classList.toggle('cards-minimized');
    searchBar.classList.toggle('invisible');
  });
}

export { appendSearch };
