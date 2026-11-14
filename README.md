# Ang Kai Ming — Portfolio

Public links:
- https://kmmula69.github.io/portfolio/
- https://kmmula69.github.io/portfolio/games/
- https://kmmula69.github.io/portfolio/ui/

## Edit and publish

On Windows, double-click **Open Editor.cmd** in this project folder. Install Node.js LTS and Git for Windows if prompted. The editor opens in your browser and runs only on your computer; keep its window open while editing.

Add a project, choose **Game** or **UI**, and edit its text/media. Font & spacing lets you select components in the preview and change fonts, sizes, bold, colours and pixel spacing. **Save draft** keeps edits privately on this computer. **Publish all 3** commits the shared data and uploads it to this GitHub repository. GitHub Actions builds and deploys all three public views together. Allow roughly 1–2 minutes and check the repository's Actions tab for the result. Changes appear after reloading the public page.

Git may ask you to sign in to GitHub on the first publication. Use the repository owner's account. No passwords or access tokens belong in this project. If a publication fails, your draft remains saved; fix the connection/sign-in issue and try again. Avoid editing and publishing from two computers at once. Pull newer GitHub changes before beginning work on another computer.

The editor does not update the previous ChatGPT-hosted site. That site remains a separate copy.

## Files and storage

- home.json, projects.json and design.json: the published source shared by all three views.
- dist/assets: images, MP4 videos, fonts and documents.
- renderer.mjs: shared page layout.
- dist/style.css and dist/app.js: design and browser behaviour.
- .github/workflows/pages.yml: automatic deployment on each push to main.
- .local: private drafts and local state, excluded from Git and the public website.
- _site: generated public website, excluded from Git.

The source repository is public. Published text, files and media in it are publicly accessible. Local drafts remain under .local until you publish. Back up this project folder if you want to preserve unpublished drafts; GitHub backs up published source.

## Setup on another computer

Install Git and Node.js LTS, then clone:

```text
git clone https://github.com/kmmula69/portfolio.git
```

Open the cloned folder and run Open Editor.cmd. On macOS/Linux, run `node editor-server.mjs` and open the address it prints.

For an initial ZIP download instead of a clone, the editor will offer a setup instruction; cloning is recommended so Publish has its Git history and remote.

## Build and deployment

No package installation is needed. Run `node build-pages.mjs`, then `node check-pages.mjs`. The output is _site. GitHub Pages must use **GitHub Actions** as its publishing source. The workflow runs on main pushes or manually from Actions, builds using Node 22, checks local links and project categories, and deploys the public artifact. The editor and private local data are never included in that artifact.

The homepage video silently loops; case-study videos play only after a click. The original Wix text/media structure is retained alongside saved formatting, the original About section colours, and thin toolkit dividers.

## Attribution

Lucide repeat-2, chess-pawn and speech SVGs were converted into transparent PNGs. Their SVG sources and ISC licence are in icon-sources; a licence copy is in dist/assets. Portfolio projects and other media remain subject to their respective owners' rights. This repository does not grant a blanket licence to redistribute the portfolio artwork.

Project browsing: homepage Game and UI/UX projects are horizontal scroll rows. Scroll or swipe, or focus a row and use the left/right arrow keys. All Projects remains a card grid with category and year filters that work together. Both layouts show newest years first; the editor project order breaks ties within the same year. Year ranges match every year in the range and sort by their latest year. New year options appear automatically when you add projects.

