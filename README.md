# Job Tracker

A Rails 8 application to track job applications and interview stages.

## Tech Stack

- **Ruby on Rails 8** - Web framework
- **PostgreSQL** - Database
- **Tailwind CSS 4** - Utility-first CSS framework
- **daisyUI 5** - Component library for Tailwind
- **Hotwire (Turbo + Stimulus)** - Frontend interactivity

## Prerequisites

- Ruby 3.x
- Node.js 18+ and npm
- PostgreSQL

## Setup

```bash
# Install Ruby dependencies
bundle install

# Install Node dependencies (Tailwind + daisyUI)
npm install

# Setup database
bin/rails db:setup
```

## Development

### ⚠️ Important: Two terminals required!

You need **two terminal windows** to develop:

#### Terminal 1 - Rails Server
```bash
bin/rails server
```

#### Terminal 2 - CSS Watcher
```bash
npm run watch:css
```

> **Why?** Tailwind CSS generates styles on-demand. The watcher monitors your `.erb` files and regenerates CSS whenever you add new Tailwind/daisyUI classes.

### Alternative: Use Foreman (single command)

```bash
# Install foreman if you don't have it
gem install foreman

# Run both server and CSS watcher
bin/dev
```

This starts both processes using `Procfile.dev`.

## Build CSS for Production

```bash
npm run build:css
```

This generates a minified CSS file in `app/assets/builds/application.css`.

## Running Tests

```bash
bin/rails test
bin/rails test:system
```

## Project Structure

```
app/
├── assets/
│   ├── builds/           # Compiled CSS (git-ignored)
│   └── stylesheets/
│       └── application.tailwind.css  # Tailwind entry point
├── views/
│   ├── job_applications/ # Job application views
│   ├── interview_stages/ # Interview stage views
│   └── layouts/
│       └── application.html.erb  # Main layout with daisyUI theme
```

## Customization

### Change daisyUI Theme

Edit `app/views/layouts/application.html.erb`:

```erb
<html data-theme="corporate">  <!-- Options: light, dark, corporate, night -->
```

### Available Themes

The following themes are configured in `application.tailwind.css`:
- `light` (default)
- `dark`
- `corporate`
- `night`

To add more themes, edit `app/assets/stylesheets/application.tailwind.css`:

```css
@plugin "daisyui" {
  themes: light --default, dark, corporate, night, cyberpunk, dracula;
}
```

Then rebuild CSS: `npm run build:css`

## Useful Links

- [daisyUI Components](https://daisyui.com/components/)
- [Tailwind CSS Docs](https://tailwindcss.com/docs)
- [Rails Guides](https://guides.rubyonrails.org/)
