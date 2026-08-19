const CACHE = 'antonio-dental-tech-v-natal-2026';
const FILES = ['./index.html', './manifest.json', './logo.png', './icon-192.png', './icon-512.png'];

self.addEventListener('install', e => {
  e.waitUntil(caches.open(CACHE).then(c => c.addAll(FILES)));
  self.skipWaiting();
});

self.addEventListener('activate', e => {
  e.waitUntil(
    caches.keys().then(keys => Promise.all(
      keys.filter(k => k !== CACHE).map(k => caches.delete(k))
    ))
  );
  self.clients.claim();
});

self.addEventListener('fetch', e => {
  if (e.request.method !== 'GET') return;

  // Sempre procura a versao mais nova na internet. Se estiver offline,
  // usa os arquivos salvos no aparelho.
  e.respondWith(
    fetch(e.request)
      .then(response => {
        if (response && response.status === 200) {
          const copia = response.clone();
          caches.open(CACHE).then(cache => cache.put(e.request, copia));
        }
        return response;
      })
      .catch(() => caches.match(e.request))
  );
});
