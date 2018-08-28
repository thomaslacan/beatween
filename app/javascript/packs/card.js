const allCards = document.querySelectorAll('.song-card-content-wrapper');
const contentMetadata = document.querySelector('.song-card-metada');


allCards.forEach((card) => {
  card.addEventListener('mouseenter', (event) => {
    event.preventDefault();
    const contentMetadata = event.currentTarget.querySelector('.song-card-metada');
    const contentBackground = event.currentTarget.querySelector('.song-card-content-bg');
    const contentContent = event.currentTarget.querySelector('.song-card-content');

    contentMetadata.classList.remove('invisible');
    contentBackground.classList.add('song-card-content-bg-fat');
    contentContent.classList.add('opacity-hover');
  })

  card.addEventListener('mouseout', (event) => {
    event.preventDefault();
    const contentMetadata = event.currentTarget.querySelector('.song-card-metada');
    const contentBackground = event.currentTarget.querySelector('.song-card-content-bg');
    const contentContent = event.currentTarget.querySelector('.song-card-content');

    contentMetadata.classList.add('invisible');
    contentBackground.classList.add('song-card-content-bg-small');
    contentBackground.classList.remove('song-card-content-bg-fat');
    contentContent.classList.remove('opacity-hover');
  });
});

toggleContent();

export { toggleContent };
