# Curious Ellie

Personal website for Curious Ellie - IT Infrastructure and DevOps consulting.

**Live site:** https://curiousellie.com

## Tech Stack

- **Static Site Generator:** Jekyll 3.9.5
- **Hosting:** GitHub Pages
- **Theme:** Custom Jekyll theme (based on Indigo)
- **Styling:** Sass/SCSS
- **CI/CD:** Travis CI (legacy, see below)

## Prerequisites

- Ruby (version 2.2.2 or higher recommended)
- Bundler gem

## Setup

1. Clone the repository:

```bash
git clone <repository-url>
cd curiousellie.com
```

2. Install dependencies:

```bash
bundle install --path vendor/bundle
```

## Development

### Quick Start

The fastest way to get started (recommended):

```bash
./run.sh
```

This script will:

- Check for bundler installation
- Install dependencies if needed
- Start Jekyll server with live reload at `http://localhost:4000`

### Manual Start

Alternatively, run the development server manually:

```bash
bundle exec jekyll serve --config _config.yml,_config-dev.yml
```

Or with live reload:

```bash
bundle exec jekyll serve --livereload
```

The site will be available at `http://localhost:4000`

### Production Build

Build the static site for production:

```bash
bundle exec jekyll build
```

Output will be in the `_site` directory.

## Testing

Run HTML validation tests:

```bash
# Using Rake
bundle exec rake test

# Using Travis script
./travis.sh
```

The tests use `html-proofer` to validate links and HTML structure.

## Project Structure

```
.
├── _config.yml           # Main Jekyll configuration
├── _config-dev.yml       # Local development overrides
├── _includes/            # Reusable HTML components
├── _layouts/             # Page templates
├── _posts/               # Blog posts (markdown)
├── _sass/                # Sass stylesheets
├── assets/               # Images, static files
├── about.md              # About page
├── projects.html         # Projects listing page
├── tags.html             # Tags page
└── index.html            # Homepage

```

## Configuration

Key settings in `_config.yml`:

- **Site metadata:** Name, bio, description
- **Social links:** Twitter, LinkedIn, GitHub, email
- **Features:** Projects, about page, read time, tags, related posts
- **Authors:** Support for multiple authors
- **Plugins:** SEO, Gist, Feed, Admin

## Content Management

### Adding Blog Posts

Create a new file in `_posts/` with the format:

```
YYYY-MM-DD-post-title.markdown
```

Front matter example:

```yaml
---
title: "Post Title"
date: 2024-01-01
layout: post
author: migueldavid
tags: [devops, aws]
---
```

### Adding Projects

Projects are blog posts with `projects: true` in the front matter.

## CI/CD

The project currently uses Travis CI (`.travis.yml`) targeting the `gh-pages` and `next` branches. Configuration includes:

- Ruby 2.2.2
- HTML validation via `htmlproofer`
- Environment variable: `NOKOGIRI_USE_SYSTEM_LIBRARIES=true`

**Note:** Consider migrating to GitHub Actions as Travis CI has changed its pricing model.

## Environment Variables

No environment variables required for local development. The `_config-dev.yml` overrides the production URL to `http://localhost:4000`.

## Deployment

The site deploys automatically via GitHub Pages when changes are pushed to the configured branch.

## Links

- FAQ: See [FAQ.md](FAQ.md) for common issues and resources
- LinkedIn: https://www.linkedin.com/in/migueldavid/
- Twitter: @migueldavidx
