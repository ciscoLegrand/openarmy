import { Controller } from "@hotwired/stimulus"
import Swiper from 'swiper';

export default class extends Controller {
  static targets = ["container", "next", "prev"];

  connect() {
    console.log('swiper connected')
    console.log(this.containerTarget)
    this.swiper = new Swiper(this.containerTarget, {
      slidesPerView: 1,
      spaceBetween: 16,
      loop: true,
      navigation: {
        nextEl: this.nextTarget,
        prevEl: this.prevTarget,
      },
      breakpoints: {
        640: { // sm
          slidesPerView: 2,
          spaceBetween: 16,
        },
        1024: { // lg
          slidesPerView: 3,
          spaceBetween: 16,
        },
      },
    });

    this.nextTarget.addEventListener('click', () => {
      console.log('next button clicked');
      this.swiper.slideNext();
    });

    this.prevTarget.addEventListener('click', () => {
      console.log('prev button clicked');
      this.swiper.slidePrev();
    });
  }

  disconnect() {
    this.swiper.destroy();
    this.nextTarget.removeEventListener('click');
    this.prevTarget.removeEventListener('click');
  }
}