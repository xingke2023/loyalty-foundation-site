# Loyalty Foundation Website

Official website for Loyalty Foundation (忠信基金會) built with Hexo 8.1.0.

## About

The Loyalty Foundation is dedicated to promoting a culture of care throughout Hong Kong, providing resources with love and helping find ways out together for low-income families facing post-pandemic recovery.

**Mission**: Love • Infinite (愛•無窮)

## Quick Start

### Prerequisites

- Node.js 14.0.0 or higher
- npm or yarn

### Installation

```bash
npm install
```

### Development

Start local development server:

```bash
hexo server
```

The site will be available at `http://localhost:4000`

### Generate Static Files

```bash
hexo generate
```

Static files will be generated in the `public/` directory.

### Clean Cache

```bash
hexo clean
```

## Project Structure

```
.
├── _config.yml          # Main configuration
├── package.json         # Dependencies
├── scaffolds/           # Post templates
├── source/              # Source files
│   ├── _posts/         # Blog posts
│   └── about/          # About page
├── themes/              # Themes
│   └── loyalty/        # Custom theme
│       ├── layout/     # Theme layouts
│       └── source/     # Theme assets
└── public/             # Generated static files
```

## Creating Content

### New Blog Post

```bash
hexo new "Post Title"
```

### New Page

```bash
hexo new page "page-name"
```

## Theme Customization

The custom "loyalty" theme is located in `themes/loyalty/`.

Main files:
- `layout/layout.ejs` - Main layout template
- `layout/index.ejs` - Homepage layout
- `layout/_partial/header.ejs` - Header component
- `layout/_partial/footer.ejs` - Footer component

## Deployment

### Build for Production

```bash
hexo clean && hexo generate
```

### Deploy to Web Server

Copy contents of `public/` directory to your web server:

```bash
rsync -avz public/ user@server:/var/www/html/
```

## Configuration

Edit `_config.yml` to customize:
- Site title, description, author
- URL and permalink structure
- Theme settings
- Deployment options

## Contact

- Website: https://www.loyalty-foundation.org
- Email: info@loyalty-foundation.org
- Phone: +852 5274 5160
- Address: 1445, Radio City, 505 Hennessy Road, Causeway Bay, Hong Kong

## License

Copyright © 2023 by Loyalty Foundation. All rights reserved.

Charity Organization Tax Exemption No: 91/18718
Agency Member No: CM000675
