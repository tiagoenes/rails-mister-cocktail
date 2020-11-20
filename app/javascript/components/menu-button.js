const clickMenu = () => {
const bt  = document.querySelector('.navbar-toggler');

const test = bt.addEventListener('click', (e) => {
  const list = document.querySelector('.navbar-space-logo');
  const listItem = document.querySelector('.navbar-space-logo>li');
  if (bt.getAttribute('class').includes('collapsed')) {
    list.classList.remove("add-margin");
    list.classList.remove("add-justify");
  }else{
    list.classList.add("add-margin");
    list.classList.add("add-justify");
  }
});

}



export { clickMenu };
