const initNavbarScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');

  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 10) {
         navbar.classList.add('navbar-lewagon-white');
      } else {
          navbar.classList.remove('navbar-lewagon-white');
      }
    })
    if(window.location.pathname === '/')
    {
      const searchbar = document.querySelector(".searchbar");
      searchbar.classList.add("d-none");
    }
  }
}

export { initNavbarScroll }