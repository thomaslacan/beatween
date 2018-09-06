const downloadButton = document.getElementById('download');
const downloadIcon = document.getElementById('download-icon');

function appendDownload() {
  downloadButton.addEventListener('mouseover', (event) => {
    downloadButton.insertAdjacentHTML ('beforeend', '<div>Download project</div>');
  });

  downloadButton.addEventListener('mouseout', (event) => {
    downloadIcon.nextElementSibling.remove();
  });
}

export {appendDownload};
