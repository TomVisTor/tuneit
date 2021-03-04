const initNavbarScroll = () => {
  // select both start_date and end_date inputs
  // const navbar = document.getElementById(navbar);

	window.onscroll = function() {scrollFunction()};

	function scrollFunction() {
	  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
	    document.getElementById("navbar").classList.add('navbar-background');
	  } else {
	    document.getElementById("navbar").classList.remove('navbar-background');
	  }
	} 
};

export { initNavbarScroll };