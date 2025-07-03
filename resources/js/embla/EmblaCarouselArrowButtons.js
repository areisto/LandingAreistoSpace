const addTogglePrevNextBtnsActive = (emblaApi, prevBtn, nextBtn) => {
  const togglePrevNextBtnsState = () => {
    prevBtn.disabled = !emblaApi.canScrollPrev();
    nextBtn.disabled = !emblaApi.canScrollNext();
  };

  emblaApi
    .on('select', togglePrevNextBtnsState)
    .on('init', togglePrevNextBtnsState)
    .on('reInit', togglePrevNextBtnsState);

  return () => {
    prevBtn.disabled = false;
    nextBtn.disabled = false;
  };
};

export const addPrevNextBtnsClickHandlers = (
  emblaApi,
  prevBtn,
  nextBtn,
  onButtonClick
) => {
  const scrollPrev = () => {
    emblaApi.scrollPrev();
    onButtonClick?.(emblaApi);
  };
  const scrollNext = () => {
    emblaApi.scrollNext();
    onButtonClick?.(emblaApi);
  };

  prevBtn.addEventListener('click', scrollPrev);
  nextBtn.addEventListener('click', scrollNext);

  const removeToggle = addTogglePrevNextBtnsActive(emblaApi, prevBtn, nextBtn);

  return () => {
    removeToggle();
    prevBtn.removeEventListener('click', scrollPrev);
    nextBtn.removeEventListener('click', scrollNext);
  };
};
