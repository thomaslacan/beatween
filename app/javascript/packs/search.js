const searchButton = document.getElementById('search-button');
const cardBoard = document.querySelector('.cards-board');
const searchBar = document.getElementById('search-bar');
const burgerMenu = document.getElementById('menu-menu');

function appendSearch() {
  searchButton.addEventListener('click', (event) => {
    cardBoard.classList.toggle('cards-minimized');
    searchBar.classList.toggle('invisible');
    searchButton.classList.toggle('distorted');
    burgerMenu.classList.toggle('distorted');
  });
}

export { appendSearch };
