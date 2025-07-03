const observer = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    const square = entry.target.querySelector('.progress-bar');

    if (entry.isIntersecting) {
      square.classList.add('animationbar');
	  return; // if we added the class, exit the function
    }

    // We're not intersecting, so remove the class!
    square.classList.remove('animationbar');
  });
});

observer.observe(document.querySelector('.skil'));

const observer1 = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    const square = entry.target.querySelector('.progress-bar');

    if (entry.isIntersecting) {
      square.classList.add('animationbar');
	  return; // if we added the class, exit the function
    }

    // We're not intersecting, so remove the class!
    square.classList.remove('animationbar');
  });
});

observer.observe(document.querySelector('.skil1'));

const observer3 = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    const square = entry.target.querySelector('.progress-bar');

    if (entry.isIntersecting) {
      square.classList.add('animationbar');
	  return; // if we added the class, exit the function
    }

    // We're not intersecting, so remove the class!
    square.classList.remove('animationbar');
  });
});

observer.observe(document.querySelector('.skil2'));

const observer4 = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    const square = entry.target.querySelector('.progress-bar');

    if (entry.isIntersecting) {
      square.classList.add('animationbar');
	  return; // if we added the class, exit the function
    }

    // We're not intersecting, so remove the class!
    square.classList.remove('animationbar');
  });
});

observer.observe(document.querySelector('.skil3'));

const observer5 = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    const square = entry.target.querySelector('.progress-bar');

    if (entry.isIntersecting) {
      square.classList.add('animationbar');
	  return; // if we added the class, exit the function
    }

    // We're not intersecting, so remove the class!
    square.classList.remove('animationbar');
  });
});

observer.observe(document.querySelector('.skil4'));

const observer6 = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    const square = entry.target.querySelector('.progress-bar');

    if (entry.isIntersecting) {
      square.classList.add('animationbar');
	  return; // if we added the class, exit the function
    }

    // We're not intersecting, so remove the class!
    square.classList.remove('animationbar');
  });
});

observer.observe(document.querySelector('.skil5'));