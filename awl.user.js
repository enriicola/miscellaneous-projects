// ==UserScript==
// @name         awl
// @description  I am a demo user script that you can safely delete (add any files to this folder and I will no longer automatically generate)
// @author       Userscripts
// @version      0.0.1
// @match        *://*/*
// @grant        none
// @inject-into  content
// ==/UserScript==

const actual_url = window.location.href;
const expected_url = 'https://www.youtube.com/playlist?list=PLZTbKUxurxYOwxwe1uCV61GMd5jQJeIXE';

if (actual_url !== expected_url) return;

setTimeout(() => {
   setInterval(() => {
      document
         .querySelector(
            ".style-scope .ytd-playlist-video-list-renderer #button"
         )
         .click();
      document
         .querySelector("#items > ytd-menu-service-item-renderer:nth-child(4)")
         .click();
   }, 200);
}, 2000);

// completion();