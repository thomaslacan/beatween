console.log("Hello from src/browser.js");
import Track from './track';
import Player from './player';

const list = document.querySelectorAll('#track-container li')
const player = new Player(list)
const play = document.getElementById('play')

