import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["container", "notification"];

  connect() {
    this.timeout = setTimeout(() => {
      this.close();
    }, this.data.get('timeout'));
  }

  close() {
    this.containerTarget.classList.add('toast-fade-out');
    setTimeout(() => {
      this.containerTarget.remove();
    }, 2000);
  }

  submit(event) {
    event.preventDefault();
    this.notificationTarget.innerHTML = 'Se ha inscrito correctamente';
    this.notificationTarget.classList.remove('toast-fade-out');
    this.connect();
  }
}