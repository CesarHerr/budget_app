import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["icon"];

  select() {
    const iconId = this.iconTarget.id;

    this.iconTargets.find((icon) => icon.id === `icon_${iconId}`).checked = true;
  }
}
