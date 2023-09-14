const gameCard = document.querySelectorAll(".games-card")
gameCard.forEach((element) => {
  console.log(element);
  element.addEventListener('click', (event) => {
    gameData = event.currentTarget.nextElementSibling;
    console.log(gameData);
    if (gameData.style.display === 'block') {
      gameData.style.display = "none";
    } else {
      gameData.style.display = "flex";
    }
  })
});
