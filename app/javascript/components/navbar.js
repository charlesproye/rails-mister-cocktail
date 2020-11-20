const Modal = () => {
  const bars = document.querySelector('.bars');
  console.log(bars);
  bars.addEventListener('click', (event) => {
    const modal = document.querySelector('#menu div');
    console.log(modal)
    modal.classList.toggle('d-none');
    modal.classList.toggle('d-flex');
    modal.classList.toggle('justify-content-center');
    modal.classList.toggle('align-items-center');
  });
};


const WhiteNavbar = () => {
    const navbar = document.querySelector('.index-navbar');
    const title = document.querySelector('#big-title');
    if (navbar && title) {
      window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('background-white');
        title.classList.remove('d-none');
      } else {
        navbar.classList.remove('background-white');
        title.classList.add('d-none');
      }
      });
    }
};


export {Modal, WhiteNavbar};
