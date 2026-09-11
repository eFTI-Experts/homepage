# eFTI Experts Homepage

Static Jekyll site for eftiexperts.eu.

## Prerequisites

- **Ruby >= 3.0** (3.3 recommended; macOS system Ruby is too old — `brew install ruby`)
- **Node.js** (for Tailwind CSS build)
- **Bundler** (`gem install bundler`)

## Setup

```bash
bundle install
npm install
```

## Build CSS

The Tailwind CSS is pre-compiled and committed. Rebuild only if you change classes:

```bash
./build.sh
```

## Run locally

```bash
./dev.sh
```

This starts both Tailwind CSS in watch mode and Jekyll with livereload. Open `http://localhost:4000` — changes to templates, pages, and CSS rebuild automatically.

To run Jekyll alone (without Tailwind watch):

```bash
bundle exec jekyll serve
```

## Project structure

```
├── _config.yml           # Jekyll configuration
├── _data/
│   ├── nav.yml           # Navigation links
│   ├── services.yml      # 11 service items (title, description, SVG icon)
│   ├── team.yml          # Team members (update with real data)
│   └── projects.yml      # Projects (update with real data)
├── _includes/
│   ├── navbar.html       # Sticky nav with mobile hamburger
│   ├── footer.html       # Company info, links, socials
│   ├── cookie-banner.html
│   ├── contact-form.html # FormSubmit.co form
│   ├── service-card.html
│   ├── project-card.html
│   ├── member-card.html
│   └── map.html          # D3.js interactive Europe map
├── _layouts/
│   ├── default.html      # Base HTML shell
│   ├── home.html         # Landing page with hero video
│   ├── page.html         # Generic content page (+ contact page)
│   ├── projects.html     # Projects grid with overlay modal
│   └── about.html        # Team, mission, vision, partnerships
├── _pages/
│   ├── index.md          # /
│   ├── services.md       # /services/
│   ├── projects.md       # /projects/
│   ├── about-us.md       # /about-us/
│   ├── contact.md        # /contact/
│   └── imprint.md        # /imprint/
├── css/
│   ├── fonts.css         # Self-hosted Roboto font faces
│   ├── style.css         # Tailwind directives + custom styles
│   └── tailwind.min.css  # Generated (do not edit)
├── fonts/                # Roboto woff2 files
├── images/               # All static images, video, SVGs
├── data/
│   └── europenew.geojson # D3.js map data
├── build.sh              # Tailwind CSS build script
├── CNAME                 # GitHub Pages custom domain
└── Gemfile
```

## Adding content

### Team members

Edit `_data/team.yml`:

```yaml
- name: "Jane Doe"
  title: "Senior Consultant"
  summary: "Bio text here."
  picture: "/images/members/jane.jpg"
  order: 1
```

Place photos in `images/members/`.

### Projects

Edit `_data/projects.yml`:

```yaml
- title: "Project Name"
  description: "Description text here."
  picture: "/images/projects/project.jpg"
  order: 1
```

Place photos in `images/projects/`.

### Services

Services are in `_data/services.yml`. Each entry has a `title`, `description`, and `icon` (SVG path data for the circle icon).

## Contact form

The contact form uses [FormSubmit.co](https://formsubmit.co/) with `team@eftiexperts.eu`. On first submission, FormSubmit will send a verification email to confirm the address.

## Deployment

The site deploys automatically via GitHub Actions (`.github/workflows/deploy.yml`) on push to `main`. It builds Tailwind CSS and Jekyll, then deploys to GitHub Pages.

To set up:
1. Push to GitHub
2. Go to **Settings > Pages > Source** and select **GitHub Actions**
3. The `CNAME` file sets the custom domain to `eftiexperts.eu`

## CMS (Pages CMS)

The site uses [Pages CMS](https://pagescms.org) for non-technical content editing. The config is in `.pages.yml`.

### What business users can edit

- **Team members** (`_data/team.yml`) — name, title, bio, photo, display order
- **Projects** (`_data/projects.yml`) — title, description, cover image, display order
- **Site settings** (`_config.yml`) — title, description, email, URL

### Setup

1. Go to [pagescms.org](https://pagescms.org) and sign in with GitHub
2. Connect your repository
3. Pages CMS reads `.pages.yml` automatically
4. Invite business users as collaborators

Changes made in Pages CMS are committed to Git, which triggers the GitHub Actions deploy automatically.

## Analytics

Google Analytics (`G-480CVMK8YL`) loads only after the user accepts cookies via the consent banner.
