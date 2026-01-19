# DevBlog - Community-driven platform for developers

```sh
npm create astro@latest -- --template minimal
```

> 🧑‍🚀 **Seasoned astronaut?** Delete this file. Have fun!

## 🚀 Project Structure

This project follows a standard Astro structure with organized components and content collections:

```text
/
├── src/
│   ├── components/       # Reusable UI components
│   │   ├── Header.astro       # Navbar with search and mobile menu
│   │   ├── Footer.astro       # Balanced site footer
│   │   ├── Sidebar.astro      # Main blog sidebar with trending tags
│   │   ├── PostSidebarRight.astro # TOC and related posts for articles
│   │   └── ArchiveCard.astro  # Card component for archive grid
│   ├── content/          # Markdown content and schemas
│   │   ├── posts/             # Blog articles in Markdown
│   │   └── config.ts          # Content collection schema definitions
│   ├── layouts/          # Main page layouts
│   │   └── Layout.astro       # Base template with fonts and meta tags
│   ├── pages/            # App routing (Astro File-based Routing)
│   │   ├── index.astro        # Home page
│   │   ├── archive.astro      # Filterable archive with pagination
│   │   └── posts/[...slug].astro # Dynamic blog post template
│   └── styles/           # Global styles
│       └── global.css         # Tailwind v4 configuration and custom styles
├── public/               # Static assets (images, robots.txt, etc.)
└── astro.config.mjs      # Astro configuration file
```

### Key Features
- **Modern Tech Stack**: Astro 5 + Tailwind CSS v4.
- **Dynamic Content**: Managed via Content Collections for type-safety.
- **Interactive Search**: Real-time article search in the header.
- **Responsive Navigation**: Full-screen mobile menu with animations.
- **Advanced Filtering**: Categorize and filter posts by topics and tags.
- **Smart Pagination**: Numbered navigation for large post archives.

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `npm install`             | Installs dependencies                            |
| `npm run dev`             | Starts local dev server at `localhost:4321`      |
| `npm run build`           | Build your production site to `./dist/`          |
| `npm run preview`         | Preview your build locally, before deploying     |
| `npm run astro ...`       | Run CLI commands like `astro add`, `astro check` |
| `npm run astro -- --help` | Get help using the Astro CLI                     |

## 👀 Want to learn more?

Feel free to check [our documentation](https://docs.astro.build) or jump into our [Discord server](https://astro.build/chat).
