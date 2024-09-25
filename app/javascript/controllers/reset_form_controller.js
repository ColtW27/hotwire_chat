import { Controller } from "stimulus";

export default class extends Controller {
  reset() {
    // Select the input field within the form
     console.log("Resetting form..."); // Debugging log
    const inputField = this.element.querySelector('input[name="message[content]"]');
    if (inputField) {
      inputField.value = ''; // Clear the input value
    }
  }
}
