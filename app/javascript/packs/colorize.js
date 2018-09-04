const colors = ['black-search', 'purple-search', 'pink-search', 'yellow-search', 'orange-search', 'green-search', 'light-green'];
const searchColorized = document.getElementById('search-button')

function getRandomIntInclusive(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min +1)) + min;
}

function switchColor() {
  let i = getRandomIntInclusive(0, 4);
  searchColorized.classList = "";
  searchColorized.classList.add(colors[i]);
}

setInterval(switchColor, 100);

export { switchColor };
