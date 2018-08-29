const colors = ['black-search', 'purple-search', 'pink-search', 'yellow-search', 'palegreen-search', 'orange-search', 'seablue-search', 'turquoise-search', 'violet-search', 'red-search', 'paleyellow-search'];
const searchColorized = document.getElementById('search-button')

function getRandomIntInclusive(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min +1)) + min;
}

function switchColor() {
  let i = getRandomIntInclusive(0, 10);
  searchColorized.classList = "";
  searchColorized.classList.add(colors[i]);
}

setInterval(switchColor, 100);

export { switchColor };
