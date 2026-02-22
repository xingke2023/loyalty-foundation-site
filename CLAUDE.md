# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the official website for Loyalty Foundation (忠信基金會), a Hong Kong-based charity organization. The site is built with Hexo 8.1.0, a static site generator, and uses a custom theme called "loyalty".

**Mission**: Love • Infinite (愛•無窮)
**Live Site**: https://bak.loyalty-foundation.org

## Development Commands

### Local Development
```bash
npm run dev           # Start development server at http://localhost:4000
hexo server          # Alternative command
hexo server -d       # Start with admin interface enabled
```

### Building
```bash
npm run build        # Generate static files to public/
hexo generate        # Alternative command
hexo clean          # Clean cache and previous builds
```

### Creating Content
```bash
hexo new "Post Title"                    # Create new blog post
hexo new page "page-name"                # Create new page
hexo new news "News Title"               # Create news article (uses news scaffold with image gallery)
hexo new service "services/Service Name" # Create service page (uses service scaffold with image gallery)
```

### Deployment
```bash
./deploy.sh         # Full deployment script (clean, build, nginx reload, verify)
npm run deploy      # Clean and generate only
```

The `deploy.sh` script:
- Cleans previous builds
- Generates static files
- Tests and reloads Nginx configuration
- Verifies site accessibility at https://bak.loyalty-foundation.org
- Serves from `/var/www/loyalty-foundation-site/public`

### Hexo Admin Interface

Remote content management system accessible at `https://bak.loyalty-foundation.org/admin/`

**Starting the admin server:**
```bash
./start-admin.sh                              # Manual start (testing)
pm2 start hexo --name "loyalty-admin" -- server -d  # Production (PM2)
pm2 restart loyalty-admin                     # Restart admin service
pm2 logs loyalty-admin                        # View logs
pm2 status                                    # Check service status
```

**Admin credentials:**
- Username: `admin`
- Nginx Basic Auth password: `loyalty2025`
- Hexo Admin password: `loyalty2025`
- Requires dual authentication (both passwords are the same)

**Note**: The admin interface requires Hexo server to be running on port 4000. In production, use PM2 to keep it running persistently.

## Architecture

### Hexo Framework
- **Static Site Generator**: Converts Markdown + EJS templates → HTML
- **Content Source**: `source/` directory
- **Generated Output**: `public/` directory (served by Nginx)
- **Configuration**: `_config.yml` (site-wide settings)

### Custom Theme: "loyalty"
Located in `themes/loyalty/`, this is where ALL visual customization happens.

**Key Template Files**:
- `layout/layout.ejs` - Master layout wrapper (loads Tailwind CSS CDN, defines color scheme)
- `layout/index.ejs` - Homepage template (Hero, Mission, Services, Team, Partners, Footer sections)
- `layout/_partial/header.ejs` - Navigation bar component
- `layout/_partial/footer.ejs` - Footer component
- `layout/service-page.ejs` - Individual service page template
- `layout/page.ejs` - Generic page template

**Styling Architecture**:
- Uses **Tailwind CSS via CDN** (configured in `layout.ejs`)
- Custom color scheme defined in Tailwind config:
  - Primary: `#003366` (Deep Navy Blue)
  - Secondary: `#C5A059` (Muted Gold)
  - Accent: `#E74C3C` (Soft Red)
  - Light: `#F5F7FA`
- Typography: Noto Sans TC (body) and Noto Serif TC (headings)
- No separate CSS files - all styling is Tailwind utility classes in templates

### Content Structure

**Services** (`source/services/`):
Six service pages as Markdown files with frontmatter. Service cards on homepage are hardcoded in `index.ejs` (lines 94-117) with:
- Chinese/English bilingual descriptions
- Images from `source/images/old-site-images/`
- URLs mapping to generated service pages

**Important**: Service list in `index.ejs` must be manually synced with files in `source/services/` directory.

**Homepage Sections** (in `index.ejs`):
1. Hero Section - Background image with WELCOME message
2. Mission Section - Foundation's purpose with donation info (bank + cryptocurrency)
3. Services Section - 6 service cards
4. Team Section - Board members
5. Partners Section - Logos with links
6. Footer - Contact info

### Image Management
- All images in `source/images/old-site-images/`
- Images are copied to `public/images/` during build
- Referenced in templates via `<%- url_for('/images/...') %>`

### Custom Scaffolds

The project includes custom scaffolds in `scaffolds/` for creating structured content:

**News Scaffold** (`scaffolds/news.md`):
- Creates news articles with tags/categories
- Includes smart image gallery with responsive grouping
- JavaScript automatically groups images of similar height into rows on desktop

**Service Scaffold** (`scaffolds/service.md`):
- Creates service pages with `service-page` layout
- Includes same image gallery feature as news scaffold
- Pre-structured sections for service introduction and activity highlights

**Image Gallery Feature**: Both scaffolds include JavaScript that:
- Groups images by height similarity (5% tolerance)
- Displays single-height groups as full-width images
- Arranges similar-height images in flex rows
- Responsive: reverts to vertical stack on mobile
- Uses lazy loading for performance

## Configuration Notes

### Site Settings (`_config.yml`)
- Language: `zh-HK` (Traditional Chinese - Hong Kong)
- Timezone: `Asia/Hong_Kong`
- Theme: `loyalty` (custom theme)
- URL structure: `/:year/:month/:day/:title/`

### Theme Configuration
Color scheme and fonts are configured directly in `themes/loyalty/layout/layout.ejs` via Tailwind config object (not in a separate config file).

## Content Guidelines

### Creating New Service Pages
1. Use scaffold command to auto-generate template with image gallery:
   ```bash
   hexo new service "services/Service-Name-In-Pinyin"
   ```
   Or create Markdown file manually in `source/services/` with frontmatter:
   ```yaml
   ---
   layout: service-page
   title: Service Title
   date: YYYY-MM-DD
   tags:
     - services
   ---
   ```
2. **Critical**: Add service card to `themes/loyalty/layout/index.ejs` services array (hardcoded, not auto-generated)
3. Add corresponding image to `source/images/old-site-images/`
4. Rebuild site: `hexo clean && hexo generate`

### Creating News Articles
```bash
hexo new news "News Title"
```
Creates a post with news tags/categories and image gallery template pre-configured.

### Bilingual Content
The site is primarily Traditional Chinese with English translations. Maintain both languages when editing content, especially in:
- Service descriptions
- Mission statements
- Donation instructions

### Content Deployment via Admin
When using Hexo Admin interface:
1. Create/edit content through web UI
2. Click "Deploy" button (executes `./deploy.sh`)
3. System automatically cleans, generates, and reloads Nginx
4. Changes go live immediately at https://bak.loyalty-foundation.org

## Deployment Environment

- **Server**: Linux (Ubuntu 24.04.3 LTS) with Nginx 1.24.0
- **Working Directory**: `/var/www/loyalty-foundation-site`
- **Public Files**: Served directly from `public/` by Nginx
- **Deploy Process**: Build static files → Nginx serves them (no runtime processing)
- **SSL**: Let's Encrypt (auto-renewal configured)
- **Process Manager**: PM2 (for Hexo Admin server)

## Technology Stack

**Core:**
- Node.js: 24.4.1
- Hexo: 8.1.0
- Tailwind CSS: via CDN (configured in layout.ejs)

**Key Dependencies:**
- `hexo-admin`: ^2.3.0 - Web-based content management interface
- `hexo-renderer-ejs`: ^2.0.0 - EJS template rendering
- `hexo-renderer-marked`: ^7.0.0 - Markdown parsing
- `hexo-server`: ^3.0.0 - Development server
- `hexo-generator-seo-friendly-sitemap`: ^0.2.1 - SEO sitemap generation

## Important Constraints

- **No Build-Time Processing**: Hexo generates static HTML. Any dynamic behavior requires JavaScript in templates.
- **Theme Changes Require Rebuild**: Template modifications in `themes/loyalty/` need `hexo generate` to take effect.
- **Service Cards Are Hardcoded**: The homepage service list is not auto-generated from files.
- **Admin Requires Server**: Hexo Admin interface only works when `hexo server` is running.
- **Image Paths**: Images must use absolute paths starting with `/images/` (not relative paths).
