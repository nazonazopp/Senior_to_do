window.addEventListener("DOMContentLoaded", function () {
  var backgroundImages = [
    "/assets/black-and-white-mountain-over-yellow-white-and-blue-sky-46253.jpg",
    "/assets/shaun-low-v8Un2Roo1Ak-unsplash.jpg",
    "/assets/daniel-hehn-NdkM92CRaxg-unsplash.jpg",
    "/assets/sun-2297961_1920.jpg",
    "/assets/underwater-4286600_1920.jpg",
  ];
  var randImages =
    backgroundImages[Math.floor(Math.random() * backgroundImages.length)];
  $(".contents_success--background").css(
    "background-image",
    "url(" + randImages + ")"
  );
});
