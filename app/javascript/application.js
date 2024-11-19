// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

document.addEventListener("DOMContentLoaded", () => {
  const flashModal = document.getElementById("flashModal");
  if (flashModal && flashModal.querySelector(".modal-body").innerHTML.trim() !== "") {
    const modal = new bootstrap.Modal(flashModal);
    modal.show();
  }
});
