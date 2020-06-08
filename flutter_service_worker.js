'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "b039652f048130a5e4d0b5b501b2ed7c",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/FontManifest.json": "83d8cc8cbc762691f1f015c88de12edf",
"assets/LICENSE": "039d665817da7629cbd8c750c7aa9ac0",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "2abd86f90b3fd9d18d950195282cd8d5",
"assets/assets/fonts/googleFonts/Abel/Abel-400.ttf": "f48ede027d639586e5d96d8583708f7a",
"assets/assets/fonts/googleFonts/Tomorrow/Tomorrow-400.ttf": "8f9c1e8901890cbb0b792dc99f5db932",
"assets/assets/fonts/googleFonts/Tomorrow/Tomorrow-400i.ttf": "779116688dc64d9109caf2e92629cf2b",
"assets/assets/fonts/googleFonts/Tomorrow/Tomorrow-700.ttf": "5556384851cee02430156ff8349c0393",
"assets/assets/fonts/computer-modern/cmunti.ttf": "86153f0958ae90bf30249dcb98d04a7d",
"assets/assets/images/me.jpg": "7d827c43e16693a220b905690456c72c",
"assets/assets/images/logo.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"assets/AssetManifest.json": "74d0fa0cc26f3f931d31399ae4152cbf",
"favicon.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"manifest.json": "28edecd27e3b72fdf0e772b4e622f60c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"index.html": "8ab69b5170188497c7ba57613edb041e",
"/": "8ab69b5170188497c7ba57613edb041e"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
