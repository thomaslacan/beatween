import Track from './track';

export default class Player {

  constructor(nodes){
    this.count = 0;
    this.solo = false;
    this.status = 'stop';
    this.max = nodes.length;
    this.tracks = [];
    this.time = 0
    this.clickPosition = 0
    this.audioContext = new (window.AudioContext || window.webkitAudioContext)();
    nodes.forEach((node) => {
      const track = new Track(node, this.audioContext, this);
      this.tracks.push(track);
    });
    this.load();
  }

  load(){
    this.tracks.forEach((track) => {
      track.load();
    });
  }

  loading(){
    this.count += 1
    if (this.count === this.max) {
      this.init();
    }
  }

  init() {
    const playHead = document.querySelector('.playhead-container')
    playHead.addEventListener('click', (event) => {
      if (event.target.classList.contains('waveform')) {
        this.clickPosition = event.layerX
        if (this.status === 'stop') {
          this.tracks.forEach((track) => {
            track.play(0, track.buffer.duration/(track.canvas.clientWidth/this.clickPosition))
            this.status = 'running'
          });
        } else {
          this.tracks.forEach((track) => {
            track.stop(this.audioContext.currentTime)
          });
          this.tracks.forEach((track) => {
            track.decode();
            track.play(0, track.buffer.duration/(track.canvas.clientWidth/this.clickPosition));
            this.status = 'running'
          })
        }
        this.playHead(this.clickPosition);
      }
    });

    const playBtn = document.getElementById('play');
    playBtn.removeAttribute("disabled");

    const play = document.getElementById('play')
    play.addEventListener('click', (event) => {
      this.play();
      if (this.status === 'paused') {
        play.innerHTML = '<i class="fas fa-play-circle"></i>';
      } else if (this.status === 'running') {
        play.innerHTML = '<i class="fas fa-pause-circle"></i>';
      }
    });

    const clearBtn = document.getElementById('clear')
    clearBtn.addEventListener('click', (event) => {
      this.soloClear();
    });
  }

  play(){
    if (this.status === 'stop') {
      this.playHead();
      this.time = this.audioContext.currentTime;
      this.tracks.forEach((track) => {
        console.log(this.audioContext.currentTime)
        track.play();
        this.status = 'running'
      })
    } else if (this.status === 'running') {
      // this.time = this.audioContext.currentTime
      console.log(this.time)
      this.audioContext.suspend();
      this.status = 'paused'
      this.stopHead();
    } else if (this.status === 'paused') {
      console.log(this.time)
      this.playHead();
      this.audioContext.resume();
      this.status = 'running'
    }
  }

  isolate(toSolo){
    if (this.solo === false) {
      console.log("Mode solo inactif");
      this.tracks.forEach((track) => {
        if (track != toSolo && track.solo === false) {
          track.mute(track);
        }
      })
      this.solo = true;
      console.log("Mode solo activé")
      toSolo.solo = true;
      console.log(`${toSolo.name} en solo`)
      const mutes = document.querySelectorAll('.mute')
      mutes.forEach((mute) => {
        mute.setAttribute("disabled", "");
      })
    } else {
      if (toSolo.solo === true) {
        console.log("Mode solo actif")
        toSolo.solo = false;
        toSolo.nodeGain.gain.value = 0;
        console.log(`${toSolo.name} mute`)
        let runSolo = false;
        this.tracks.forEach((track) => {
          if (track.solo === true && track != toSolo) {
            runSolo = true;
          }
        });
        if (runSolo === false) {
          console.log("No solo")
          this.tracks.forEach((track) => {
            track.nodeGain.gain.value = 1;
          })
          this.solo = false;
          console.log("Mode solo inactivé");
          const mutes = document.querySelectorAll('.mute')
          mutes.forEach((mute) => {
            console.log(mute)
            mute.removeAttribute("disabled");
          })
        }
      } else {
        toSolo.nodeGain.gain.value = 1;
        toSolo.solo = true;
        console.log(`${toSolo.name} en concert`)
      }
    }
  }

  soloClear(){
    if (this.solo === true) {
      this.tracks.forEach((track) => {
        track.nodeGain.gain.value = 1;
        track.solo = false;
        this.solo = false;
        const mutes = document.querySelectorAll('.mute')
        mutes.forEach((mute) => {
          mute.removeAttribute("disabled");
        })
        const soloBtn = document.querySelectorAll('.solo');
        soloBtn.forEach((btn) => {
        btn.classList.remove('solo-on')
        })
      });
    }
  }

  frame(position) {
    const duration = this.tracks[0].source.buffer.duration
    const width = this.tracks[0].canvas.clientWidth
    var elem = document.getElementById("playhead");
    let pos = ((this.audioContext.currentTime - this.time)/duration)*width
    if (pos >= width) {
      clearInterval(this.playInterval);
      this.status = 'stop'
      this.tracks.forEach((track) => {
        track.decode();
        play.innerHTML = '<i class="fas fa-play-circle"></i>';
      });
    } else {
      if (position) {
        // fix playhead position
        let newPos = pos + position - 10
        elem.style.left = newPos + 'px';
      } else {
        elem.style.left = pos + 'px';
      }
    }
  }

  playHead(position) {
    if (position) {
      clearInterval(this.playInterval);
      this.playInterval = setInterval(()=>{this.frame(position)}, 100);
    } else {
      this.playInterval = setInterval(()=>{this.frame()}, 100);
    }
  }

  stopHead() {
    clearInterval(this.playInterval);
  }
}


