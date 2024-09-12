import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sort"
export default class extends Controller {
  static targets = ["critera"]

  sort(event) {
    const param = event.target.innerText
    const url = new URL(window.location.href);
    url.searchParams.delete('sort');
    const new_url = `${url}&sort=${param}`
    fetch(new_url)
    console.log(new_url)
  }
}
