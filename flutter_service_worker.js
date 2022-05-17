'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "328c22e3e34db0f9f7de72bec7a6f076",
"assets/assets/fonts/AraHamahAlislam-Regular.ttf": "74cbca105e7ddf5d15d73ee84d05a8cf",
"assets/assets/icons/about.svg": "b22fb6e8e836f12563cc1edc715a1f1f",
"assets/assets/icons/account_element.svg": "a8b40906181635ca90075212e5f35424",
"assets/assets/icons/add.svg": "db6d939bb3398ecd107356182baa4f67",
"assets/assets/icons/addcart.svg": "ebaaa89897d4d1d2c2d835889035cb7b",
"assets/assets/icons/address_ic.svg": "297e5aa3b5a24d08b3ac255872434023",
"assets/assets/icons/animal-charity-svgrepo-com.svg": "debf707d94d20c270aeee20ea07e3788",
"assets/assets/icons/animal-padlock-svgrepo-com.svg": "a110faca65d4ed577cc1f09744b6df3c",
"assets/assets/icons/apple_ic.svg": "a1e6560eafbc2a62cbd7b2afb74bd4cf",
"assets/assets/icons/blind.svg": "a634f949e7bef00aea9580d67cdfa0e7",
"assets/assets/icons/border-collie-dog-head.svg": "9a5008da74332cfa3abae4703e56a1cc",
"assets/assets/icons/border-collie-head.svg": "5d083dcbeeefbfa81c51b1a5853d527c",
"assets/assets/icons/calendar.svg": "8984e7df6a7a1711bd44565503d337e7",
"assets/assets/icons/calendar_a.svg": "8984e7df6a7a1711bd44565503d337e7",
"assets/assets/icons/call_round.svg": "6e51b3fffe5f82ae3837be7bf49333d3",
"assets/assets/icons/carrier.svg": "ce86e6033a219e896cc245bd8cd7cda6",
"assets/assets/icons/choices.svg": "84430226b7bc74f61f5a1fa4680dcd4a",
"assets/assets/icons/clinic.svg": "192bf6d3782b67d0a4e860933065bbf0",
"assets/assets/icons/color-palette.svg": "8e6b0d733549add92731e6e84cd74d22",
"assets/assets/icons/date-range.svg": "5a5b43a1689ffe04325dbdb0ad8aee4b",
"assets/assets/icons/discount.svg": "06ed90aa1f62816db7b379aa047fb521",
"assets/assets/icons/doctor.svg": "593546b81d36312354f5c475f06cf4ba",
"assets/assets/icons/document.svg": "87680823c6ce3c4ba02029efe04645a9",
"assets/assets/icons/dog111.svg": "28eb8693aa4fa299f93304ee0ba84565",
"assets/assets/icons/dog2222.svg": "10f9558af7d1af89cf3cd1fbe8f9412c",
"assets/assets/icons/dog43445.svg": "74d707b6d7586d170aa8856f92703079",
"assets/assets/icons/dog5443.svg": "47abf0169866ec92f0c2d0fd371bcc20",
"assets/assets/icons/dog777.svg": "acd0dfddbd7db1f7553a5ba75ed8317a",
"assets/assets/icons/Ellipse%25203.svg": "dadc7f08e393c95dde5d446f472dde50",
"assets/assets/icons/Ellipse%25204.svg": "6b659b6314af1ccffe72e233e25d795a",
"assets/assets/icons/facebook_ic.svg": "22ba7993069fbb03501cd89a29f8255a",
"assets/assets/icons/file.svg": "b461e1a19b8c5fde949a0416ab0070ff",
"assets/assets/icons/google_ic.svg": "e0bae1305654d8393e033c92b9c3ce51",
"assets/assets/icons/Group%2520730.svg": "67df8571a6b515e53229f45b7d5a7095",
"assets/assets/icons/Group%2520731.svg": "093218af6c50eda62033949017309cfc",
"assets/assets/icons/Group%2520741.svg": "cc6a6a87a7b5ab0c7c00a845f4b71bf5",
"assets/assets/icons/happy.svg": "eaf40f515a4b020ca6d4ab238c09a36f",
"assets/assets/icons/health-clinic.svg": "3b99469ed72b0ed9cdabdba2040d2d46",
"assets/assets/icons/home_ic.svg": "ee6435a636c968f8c5bc0ea21e84f2ad",
"assets/assets/icons/hote546.svg": "36c70f2d3192a0f42baaa740b0760948",
"assets/assets/icons/Icon%2520awesome-car-alt.svg": "9e1e161d50bad60c362b84d9dbdbac8e",
"assets/assets/icons/Icon%2520awesome-city.svg": "15aa9bcee7210d10dcf31de711793956",
"assets/assets/icons/Icon%2520awesome-facebook-square.svg": "1dc883f175456d0582b90c14dba8aa08",
"assets/assets/icons/Icon%2520awesome-heart.svg": "aa98b8b1a3cd9f4c7de6893f16cd5e5b",
"assets/assets/icons/Icon%2520awesome-mobile-alt.svg": "2a48f679710178da75458f2322da60b4",
"assets/assets/icons/Icon%2520awesome-rocketchat.svg": "e3e05bdfe69a1664833bcb635a56f947",
"assets/assets/icons/Icon%2520awesome-share-alt.svg": "58a0a62b293f6dc4195f055306d7b29d",
"assets/assets/icons/Icon%2520awesome-twitter-square.svg": "438fbb59f9bc63b180cbbaa9fc566443",
"assets/assets/icons/Icon%2520awesome-user-edit.svg": "588791aa3d00f3d7615a607a84f600d9",
"assets/assets/icons/Icon%2520awesome-viber.svg": "c0d145f95d07585ab30918ea06bc27ee",
"assets/assets/icons/Icon%2520awesome-whatsapp.svg": "44702c13091564c49a1391996a2db963",
"assets/assets/icons/Icon%2520feather-heart.svg": "d614107e001d6c8495020ef1c196f632",
"assets/assets/icons/Icon%2520feather-lock.svg": "5fcc887e942e833fdf8b3d118f0f3bc3",
"assets/assets/icons/Icon%2520feather-minus-circle.svg": "595142d11eb9361a71ebcb8ea948b668",
"assets/assets/icons/Icon%2520feather-search.svg": "2b13649c11cb4db93abf5038244cc61d",
"assets/assets/icons/Icon%2520feather-send.svg": "8b613f8c0695377bf48f57267bfb93bb",
"assets/assets/icons/Icon%2520feather-user.svg": "2ddd137b9ae2011d84eb5ae999bb2146",
"assets/assets/icons/Icon%2520ionic-ios-add-circle-outline.svg": "3ab5a4963e82fcf317470f395fe1cb3f",
"assets/assets/icons/Icon%2520ionic-ios-add-circle.svg": "14f7ef914f0a5a3a7fdd3ae17912532d",
"assets/assets/icons/Icon%2520ionic-ios-arrow-dropleft-circle.svg": "ed164a7a886d29150abfa83676086db5",
"assets/assets/icons/Icon%2520ionic-ios-arrow-round-back.svg": "dcce63c099f7ff16f16af3d12c100ead",
"assets/assets/icons/Icon%2520ionic-ios-call.svg": "0b17ed0f0ec886259ea283302b0f303c",
"assets/assets/icons/Icon%2520ionic-ios-pricetag.svg": "91c1348dbd92d570a86e3dd6b7f8f726",
"assets/assets/icons/Icon%2520ionic-md-notifications.svg": "d16c0ed9ec9543894eb8d9ec6e545365",
"assets/assets/icons/Icon%2520ionic-md-timer.svg": "ee86b5f717c76ec28dac1f78805d568a",
"assets/assets/icons/Icon%2520material-date-range.svg": "06a46f713165334b855d1a6ad5c9a621",
"assets/assets/icons/Icon%2520material-delete.svg": "c0a0012c92f1001a2e0b82e6932af856",
"assets/assets/icons/Icon%2520material-edit.svg": "f549a6ee1fedaad34e798d93269ac06f",
"assets/assets/icons/Icon%2520material-file-upload.svg": "f0428e0e5c1fcd4a6da0b48b23fffe98",
"assets/assets/icons/Icon%2520material-location-on.svg": "f2564f0a1bb839cc8587e2ee4b1257de",
"assets/assets/icons/Icon%2520metro-instagram.svg": "d6975f187925a51da6f655905d0928fb",
"assets/assets/icons/Icon%2520metro-youtube-play.svg": "5b6378bc7889e21c378d0318b879e2cb",
"assets/assets/icons/Icon%2520open-share-boxed.svg": "badb47748aa0d3e5b4939a885bdde323",
"assets/assets/icons/Icon%2520simple-whatsapp.svg": "811c8c76af0b9793e1abda674a18c05e",
"assets/assets/icons/image.svg": "191801165a31c3e24e58f4fc3551c52f",
"assets/assets/icons/logout.svg": "2798964964facacc0d4dacc621fb77db",
"assets/assets/icons/long-haired-dog-head.svg": "71c54daf084de8723af629319221361b",
"assets/assets/icons/Outline.svg": "5ac6a487721f88c774f6a1cc82d7faa5",
"assets/assets/icons/outline_a.svg": "23e4b25fdb9517a8aa2920877ea97e92",
"assets/assets/icons/pet.svg": "0b36986c70ab5cae9aa5888a9c644f02",
"assets/assets/icons/review.svg": "eba96170bcdbbfeca01a89afe973ce26",
"assets/assets/icons/road.svg": "b514ae4c33604bd07093d51708fe5c6d",
"assets/assets/icons/selected_settings.svg": "054b249be275d7c34fb66d8c7a391f91",
"assets/assets/icons/service_ic_bac.svg": "8c7bfc5ab7b9c4e7ee8f86d837303741",
"assets/assets/icons/settings.svg": "b5793f0be7482bd959f74e621c382b83",
"assets/assets/icons/share.svg": "824397cf66e4f0f4318f0988e981c24c",
"assets/assets/icons/splash_icons.svg": "baa60d242cfbc680f6aad4c7fed4802d",
"assets/assets/icons/technical-support.svg": "a99cb2e58f7a7af93f4a09bbeb928bcb",
"assets/assets/icons/upload.svg": "4bf0df7ac24314b2f9378ada45f79363",
"assets/assets/icons/user_ic.svg": "010939109ebf82d6126e8877f16eaa27",
"assets/assets/images/about_logo.png": "c7a94f2662fb3e05dbaee2e622f3c46e",
"assets/assets/images/account_element.png": "4d99b9e808a0e00e923506adeb28aaf6",
"assets/assets/images/App%2520Gallery.png": "9a343203081762caead4fd8d2cef1abc",
"assets/assets/images/App%2520Store.svg": "40c133f93252badca9a28a10c18c4f4c",
"assets/assets/images/app_galary.png": "d769c45dc58964d2f7c7a93f480a71a6",
"assets/assets/images/app_store.png": "78630ec0070de57f6a82fb1964c68a12",
"assets/assets/images/background.png": "7c32bc605aea910774448b226f4f3b2b",
"assets/assets/images/bottom.png": "92d84e161dceeb4f73dda8b5e4df8a32",
"assets/assets/images/box1.png": "36022c5d5cf9b27bdd7b55defbef5c65",
"assets/assets/images/box_c.png": "91e7f40e0c3a4783cf11d6142809adc4",
"assets/assets/images/cart_ic.png": "4ba29dda1c2f2b0a50e5b4d934a17177",
"assets/assets/images/cash.png": "b569262c6acad5fd088f0f28b4a1dc8c",
"assets/assets/images/dog1.png": "f8001b9bbecd769cc309528cb0bf0a24",
"assets/assets/images/dog2.png": "8851fccc354ffc7db3453d859b233eba",
"assets/assets/images/dog3.png": "c6c7fedb5cf68a39dee3f1ba511180ad",
"assets/assets/images/dog4.png": "36b94f74ce7b5e0f0d217e7b0a43adbf",
"assets/assets/images/facebook_ic.png": "b59d15f1d09ebd9882cad4a448688aac",
"assets/assets/images/feet.png": "10bbe4fce3d1f6d128d2792f4979dab5",
"assets/assets/images/feets.png": "c20d95256c25e4ffa0f13e43ab6deb40",
"assets/assets/images/google.png": "fab9613fdf3160ba460df3ef4fc929e3",
"assets/assets/images/Icon%2520material-location-on.png": "53c450bfea815c98b52bf517b3b563bc",
"assets/assets/images/Instagram_icon.png": "cb8e3584d0b825508c587ff6133cb68e",
"assets/assets/images/logo.png": "014bf044bc2981d4d523b7701aab3b39",
"assets/assets/images/not_found.png": "7126b7d424adf43603c4cb7f3f6f64c2",
"assets/assets/images/Play%2520Store.svg": "9df969d9b7ba4f03538e7dc74025b9ee",
"assets/assets/images/services_ic_back.png": "ac7832a6d38aaea6d493b6426ed3c697",
"assets/assets/images/test1.png": "83c27cb2b83e472216de556493f67cda",
"assets/assets/images/test2.png": "c73fb16b662f03b8baa8913a70303c74",
"assets/assets/images/test3.png": "6b7ef4a978aca4510fb8ba57bf710ff0",
"assets/assets/images/testdog.png": "cae868fde1af1da03238b308ff8c884a",
"assets/assets/images/twitter_ic.png": "88aa93c7d7d0b4f3bb45a0c7ad8f9a4b",
"assets/assets/images/Walking%2520Paws.gif": "f2e9caf02c3d25cd2760452d9fd88770",
"assets/assets/images/zen.png": "0fc5d4f7fbb8a58a34c169dbf91dccf2",
"assets/assets/translations/ar.json": "61a1badf8b76b687bdd568266cc232fe",
"assets/assets/translations/en.json": "1980188a83f16295bea649128a05fa12",
"assets/FontManifest.json": "4e77ddcfd4a6823b0888136c2fd9b55b",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "8b294887ed4b381ae57605d41d633270",
"assets/packages/awesome_dialog/assets/flare/error.flr": "e3b124665e57682dab45f4ee8a16b3c9",
"assets/packages/awesome_dialog/assets/flare/info.flr": "bc654ba9a96055d7309f0922746fe7a7",
"assets/packages/awesome_dialog/assets/flare/info2.flr": "21af33cb65751b76639d98e106835cfb",
"assets/packages/awesome_dialog/assets/flare/info_without_loop.flr": "cf106e19d7dee9846bbc1ac29296a43f",
"assets/packages/awesome_dialog/assets/flare/question.flr": "1c31ec57688a19de5899338f898290f0",
"assets/packages/awesome_dialog/assets/flare/succes.flr": "ebae20460b624d738bb48269fb492edf",
"assets/packages/awesome_dialog/assets/flare/succes_without_loop.flr": "3d8b3b3552370677bf3fb55d0d56a152",
"assets/packages/awesome_dialog/assets/flare/warning.flr": "68898234dacef62093ae95ff4772509b",
"assets/packages/awesome_dialog/assets/flare/warning_without_loop.flr": "c84f528c7e7afe91a929898988012291",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/easy_localization/i18n/ar-DZ.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/packages/easy_localization/i18n/ar.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/packages/easy_localization/i18n/en-US.json": "5bd908341879a431441c8208ae30e4fd",
"assets/packages/easy_localization/i18n/en.json": "5bd908341879a431441c8208ae30e4fd",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_AMS-Regular.ttf": "657a5353a553777e270827bd1630e467",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Caligraphic-Bold.ttf": "a9c8e437146ef63fcd6fae7cf65ca859",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Caligraphic-Regular.ttf": "7ec92adfa4fe03eb8e9bfb60813df1fa",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Fraktur-Bold.ttf": "46b41c4de7a936d099575185a94855c4",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Fraktur-Regular.ttf": "dede6f2c7dad4402fa205644391b3a94",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-Bold.ttf": "9eef86c1f9efa78ab93d41a0551948f7",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-BoldItalic.ttf": "e3c361ea8d1c215805439ce0941a1c8d",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-Italic.ttf": "ac3b1882325add4f148f05db8cafd401",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-Regular.ttf": "5a5766c715ee765aa1398997643f1589",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Math-BoldItalic.ttf": "946a26954ab7fbd7ea78df07795a6cbc",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Math-Italic.ttf": "a7732ecb5840a15be39e1eda377bc21d",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_SansSerif-Bold.ttf": "ad0a28f28f736cf4c121bcb0e719b88a",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_SansSerif-Italic.ttf": "d89b80e7bdd57d238eeaa80ed9a1013a",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_SansSerif-Regular.ttf": "b5f967ed9e4933f1c3165a12fe3436df",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Script-Regular.ttf": "55d2dcd4778875a53ff09320a85a5296",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size1-Regular.ttf": "1e6a3368d660edc3a2fbbe72edfeaa85",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size2-Regular.ttf": "959972785387fe35f7d47dbfb0385bc4",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size3-Regular.ttf": "e87212c26bb86c21eb028aba2ac53ec3",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size4-Regular.ttf": "85554307b465da7eb785fd3ce52ad282",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Typewriter-Regular.ttf": "87f56927f1ba726ce0591955c8b3b42d",
"assets/packages/wakelock_web/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "7a76f72b5624f86d9f70222e3354f44d",
"/": "7a76f72b5624f86d9f70222e3354f44d",
"main.dart.js": "7b380f0ff85f31b09e3f39c41f31b607",
"manifest.json": "0ede767da87248c34e580f901dd66679",
"version.json": "21b60d415374031526ebe304809a0f7a"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
