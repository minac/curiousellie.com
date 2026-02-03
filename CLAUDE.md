# Curious Ellie - Project Context

## Overview

This is a Jekyll-based static site for curiousellie.com, a DevOps and IT Infrastructure consulting company. The site is hosted on GitHub Pages and features a personal portfolio, blog, and about page.

## Architecture

### Jekyll Theme

- Custom theme based on the Indigo theme
- Uses Liquid templating for dynamic content
- SCSS/Sass for styling with modular component structure
- No JavaScript framework (vanilla JS if needed)

### Key Conventions

1. **Blog Posts:** All posts go in `_posts/` with YYYY-MM-DD prefix
2. **Projects:** Posts with `projects: true` in frontmatter appear on projects page
3. **Author System:** Multi-author support via `_config.yml` authors hash
4. **Layouts:** Three main layouts: `compress`, `page`, `post`

### File Structure Patterns

```
_sass/
  ├── base/         # Core styles (normalize, helpers, syntax)
  ├── components/   # Reusable UI components
  └── pages/        # Page-specific styles

_includes/
  ├── analytics-*.html    # Analytics integrations
  ├── author.html         # Author bio component
  ├── blog-post.html      # Blog post card
  ├── disqus.html         # Comments system
  ├── favicon.html        # Favicon links
  ├── icons.html          # SVG icons
  ├── pagination.html     # Pagination controls
  ├── read-time.html      # Reading time calculator
  ├── related.html        # Related posts
  └── social-links.html   # Social media links
```

## Development Workflow

### Local Development

Always use the dual config for local testing to override the production URL:

```bash
bundle exec jekyll serve --config _config.yml,_config-dev.yml
```

### Testing

Before committing, run HTML validation:

```bash
bundle exec rake test
```

This catches broken links, missing images, and HTML issues.

## Configuration Notes

### \_config.yml

- `width: large` - Sets content width to 810px (default is 560px)
- `blog: false` - Blog is currently commented out (only projects enabled)
- `read-time: true` - Shows estimated reading time on posts
- `show-tags: true` - Displays tags on posts
- `related: true` - Shows related posts at bottom
- `animation: true` - Enables CSS animations

### Social Integration

Current integrations:

- Twitter: @migueldavidx
- LinkedIn: migueldavid
- GitHub: minac
- Email: hello@curiousellie.com

Disabled/commented integrations:

- Google Analytics (commented)
- Piwik Analytics (commented)
- Disqus comments (configured but disabled via empty categories array)
- Facebook, Instagram, Pinterest, YouTube, Spotify, etc.

## Gotchas

1. **Bundler Path:** Dependencies install to `vendor/bundle` to avoid conflicts with system gems
2. **Travis CI:** Currently configured but consider migrating to GitHub Actions
3. **Ruby Version:** Travis uses Ruby 2.2.2 but Gemfile.lock shows gems compatible with newer versions
4. **NOKOGIRI_USE_SYSTEM_LIBRARIES:** Required environment variable for Travis CI builds
5. **Disqus:** Configured but won't show because `categories: []` is empty
6. **Missing Image:** `_config.yml` references `assets/images/miguel.png` for author picture, but file doesn't exist - may cause broken image on author bio
7. **Gemfile.lock:** Currently gitignored, which differs from Jekyll best practices (normally committed for reproducibility). However, this is a working configuration.

## Deployment

- **Production Branch:** Likely `gh-pages` (per Travis config)
- **Auto-deploy:** GitHub Pages auto-builds on push
- **Custom Domain:** curiousellie.com (configured via CNAME file)

## Maintenance Tasks

### Updating Dependencies

```bash
bundle update github-pages
```

### Adding New Posts

1. Create `_posts/YYYY-MM-DD-title.markdown`
2. Add frontmatter with title, layout, author, tags
3. Optionally add `projects: true` for project listing
4. Optionally add `star: true` to highlight important projects

### Theme Customization

- Colors/fonts: Edit `_sass/base/variables.sass`
- Component styles: Edit files in `_sass/components/`
- Layout changes: Edit files in `_layouts/`
- Reusable blocks: Edit files in `_includes/`

## References

- Jekyll Docs: https://jekyllrb.com/docs/
- GitHub Pages Docs: https://docs.github.com/en/pages
- Liquid Templating: https://shopify.github.io/liquid/
- Original Theme: Based on Indigo theme (see FAQ.md for links)
