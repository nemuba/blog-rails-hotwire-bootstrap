import { Controller } from "@hotwired/stimulus"
import { Tooltip } from "bootstrap"

// Connects to data-controller="tooltip"
export default class extends Controller {
  connect() {
    this.tooltip = new Tooltip(this.element)
  }
}
