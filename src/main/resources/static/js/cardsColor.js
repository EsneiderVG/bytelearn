const containers = document.querySelectorAll(".card-road");

containers.forEach((container) => {
  container.addEventListener("mouseenter", () => {
    containers.forEach((c) => c.classList.remove("active"));
    container.classList.add("active");
  });

  container.addEventListener("mouseleave", () => {
    container.classList.remove("active");
  });
});
