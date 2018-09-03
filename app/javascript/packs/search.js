const searchButton = document.getElementById('search-button');
const cardBoard = document.querySelector('.cards-board');
const searchBar = document.getElementById('search-bar');
const navBar = document.getElementById('navbar-navbar');

function appendSearch() {
  searchButton.addEventListener('click', (event) => {
    cardBoard.classList.toggle('cards-minimized');
    searchBar.classList.toggle('invisible');
    searchButton.classList.toggle('distorted');
    navBar.classList.toggle('navbar-minimized');
  });
}

export { appendSearch };
