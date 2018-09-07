const userPictures = document.querySelectorAll('.track-user-picture');

userPictures.forEach((picture) => {
  picture.addEventListener('mouseover', (event) => {
    console.log('mouseover')
    let tooltip = event.target.parentElement.parentElement.childNodes[1];
    tooltip.classList.remove('hidden');
  });

  picture.addEventListener('mouseout', (event) => {
    console.log('mouseout')
    let tiptool = event.target.parentElement.parentElement.childNodes[1];
    tiptool.classList.add('hidden');
  });
})
