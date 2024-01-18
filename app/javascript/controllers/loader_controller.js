import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["loader", "form"];

  connect() {
    this.formTarget.classList.toggle("hidden");
    this.loaderTarget.classList.add("hidden");
  }

  handleSubmit() {
    this.formTarget.classList.toggle("hidden");
    this.loaderTarget.classList.remove("hidden");
  }
}
