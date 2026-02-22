# Loyalty Foundation Website

**Context:** Official website for the Loyalty Foundation (忠信基金會), a charity organization in Hong Kong.
**Stack:** Hexo 8.1.0 (Static Site Generator), Node.js, EJS, Tailwind CSS.

## Project Overview

This project is a static website generated using [Hexo](https://hexo.io/). It serves as the digital presence for the Loyalty Foundation, providing information about their mission ("Heal Together, Stronger After"), services, and team. The site supports bilingual content (Chinese/English) and uses a custom theme named `loyalty`.

## Key Files & Directories

-   **`_config.yml`**: Main Hexo configuration file (site title, URL, theme selection, etc.).
-   **`package.json`**: Defines Node.js dependencies and scripts.
-   **`source/`**: Contains the raw content (Markdown files) for posts and pages.
    -   `_posts/`: Blog posts.
    -   `about/`: The "About Us" page.
    -   `services/`: Service description pages.
    -   `images/`: Static image assets.
-   **`themes/loyalty/`**: The custom theme directory.
    -   `layout/`: EJS templates for the site structure (`layout.ejs`, `index.ejs`, `_partial/`).
    -   `source/`: Theme-specific assets (CSS, JS).
-   **`public/`**: The generated static website (created after running `hexo generate`). **Do not edit files here directly.**
-   **`deploy.sh`**: Helper script to clean, generate, and reload Nginx for deployment.
-   **`start.sh`**: Helper script to start the local development server.

## Development & Usage

### Prerequisites
-   Node.js (v14+ recommended, project uses v24.4.1)
-   npm or yarn

### Common Commands

| Action | Command | Description |
| :--- | :--- | :--- |
| **Start Server** | `hexo server` | Starts local dev server at `http://localhost:4000`. |
| **Build Site** | `hexo generate` | Generates static files into the `public/` directory. |
| **Clean Cache** | `hexo clean` | Removes the `public/` folder and database cache. |
| **New Post** | `hexo new "Title"` | Creates a new Markdown file in `source/_posts/`. |
| **New Page** | `hexo new page "name"` | Creates a new page directory in `source/`. |
| **Deploy** | `./deploy.sh` | Runs clean, generate, and reloads Nginx (Production). |

### NPM Scripts
-   `npm run dev` / `npm start`: Runs `hexo server`.
-   `npm run build`: Runs `hexo generate`.
-   `npm run clean`: Runs `hexo clean`.
-   `npm run deploy`: Runs `hexo clean && hexo generate`.

## Configuration & Customization

-   **Site Settings**: Edit `_config.yml` for title, author, language, and global site settings.
-   **Theme Settings**: The theme is configured in `themes/loyalty/_config.yml`, but visual structure and Tailwind settings are primarily found in `themes/loyalty/layout/layout.ejs` (Tailwind config) and other EJS files.
-   **Content**:
    -   **Blog Posts**: Written in Markdown with Front-matter (YAML header) for metadata like title, date, and tags.
    -   **Images**: Stored in `source/images/`. Reference in Markdown as `![](/images/filename.jpg)`.

## Deployment Architecture

-   **Web Server**: Nginx
-   **Root Directory**: `/var/www/loyalty-foundation-site/public`
-   **SSL**: Let's Encrypt (auto-renewal configured)
-   **Process**: The `deploy.sh` script handles the build process and verifies the Nginx configuration.

## Administrative Details

-   **Admin User**: configured in `_config.yml` under the `admin` key.
-   **Charity Info**: Tax Exemption No: 91/18718 | Agency Member No: CM000675
-   **Contact**: info@loyalty-foundation.org
