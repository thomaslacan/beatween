const userPictures = document.querySelectorAll('.track-user-picture');

userPictures.forEach((picture) => {
  picture.addEventListener('mouseover', (event) => {
    let tooltip = event.target.parentElement.parentElement.childNodes[1];
    tooltip.classList.remove('hidden');
  });

  picture.addEventListener('mouseout', (event) => {
    let tiptool = event.target.parentElement.parentElement.childNodes[1];
    tiptool.classList.add('hidden');
  });
})
