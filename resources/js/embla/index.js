import EmblaCarousel from 'embla-carousel';
import Autoplay from 'embla-carousel-autoplay';
import { addPrevNextBtnsClickHandlers } from './EmblaCarouselArrowButtons';

export function initEmblaCarousel() {
  const emblaNode = document.querySelector('.embla');
  if (!emblaNode) return;

  const viewportNode = emblaNode.querySelector('.embla__viewport');
  const prevBtnNode = emblaNode.querySelector('.embla__button--prev');
  const nextBtnNode = emblaNode.querySelector('.embla__button--next');

  const OPTIONS = { loop: true, direction: 'rtl', dragFree: true };
  const emblaApi = EmblaCarousel(viewportNode, OPTIONS, [Autoplay({delay: 5000, stopOnInteraction: false})]);


  const onNavButtonClick = (emblaApi) => {
    const autoplay = emblaApi?.plugins()?.autoplay;
    if (!autoplay) return;

    const resetOrStop =
      autoplay.options.stopOnInteraction === false
        ? autoplay.reset
        : autoplay.stop;

    resetOrStop();
  };

  const removePrevNextBtnsClickHandlers = addPrevNextBtnsClickHandlers(
    emblaApi,
    prevBtnNode,
    nextBtnNode,
    onNavButtonClick
  );

  emblaApi.on('destroy', removePrevNextBtnsClickHandlers);
}
