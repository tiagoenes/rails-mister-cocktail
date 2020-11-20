const clickMenu = () => {
const bt  = document.querySelector('.navbar-collapse');

const test = bt.addEventListener('click', (e) => {
  const list = document.querySelector('.navbar-space-logo');
  if (bt.getAttribute('class').includes('show')) {
    list.classList.add("add-margin");
  }else{
    list.classList.remove("add-margin");
  }
});

}



export { clickMenu };
