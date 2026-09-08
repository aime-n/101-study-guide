# 📚 101 Study Guide - Claude Architect Foundations

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-brightgreen)](https://aime-n.github.io/101-study-guide/)
[![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

> Study notes and resources for the Claude Certification Architect Foundations exam.

## 📖 About

This repository contains my personal study notes, tips, and quick references for the **Claude Certification Architect Foundations** certification. It's designed to help me (and others) prepare effectively for the exam.

### 🎯 What's Inside

- 📝 **Study Posts**: Markdown-based study notes converted to HTML
- 🎨 **Static Site**: Clean, minimal design for easy reading
- 🛠 **Automation**: Python scripts to generate new study posts
- 📚 **Resources**: Curated list of study materials and references

## 🚀 Live Site

The study guide is automatically deployed to GitHub Pages:

🔗 **[View the Live Study Guide](https://aime-n.github.io/101-study-guide/)**

## 📁 Repository Structure

```
.
├── docs/                          # 📄 GitHub Pages source
│   ├── assets/
│   │   └── style.css             # 🎨 Site styling
│   ├── posts/                    # 📝 Study notes (HTML)
│   │   └── 2026-07-21-*.html    # Individual study posts
│   └── index.html               # 🏠 Main page
├── .github/
│   └── workflows/               # ⚙️ GitHub Actions (if used)
├── claude-na-pratica/           # 🤖 Claude study materials
├── my-claude-wiki/              # 📚 Claude Wiki resources
├── study-data/                  # 📊 Study data and references
└── .gitignore                   # 🚫 Git ignore rules
```

## 🛠️ Tech Stack

- **Frontend**: HTML5, CSS3
- **Static Site Hosting**: GitHub Pages
- **Automation**: Python 3, Shell Scripts
- **Version Control**: Git & GitHub

## 🏃‍♂️ Quick Start

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/aime-n/101-study-guide.git
   cd 101-study-guide
   ```

2. **Preview the site locally**
   ```bash
   # Using Python (recommended)
   cd docs
   python3 -m http.server 8000
   # Open http://localhost:8000
   ```

3. **Make changes**
   ```bash
   # Edit index.html or add new posts
   # The site will auto-update on push
   ```

### Adding a New Study Post

Use the Claude study post skill to generate new posts:

```bash
# Run the post generator (if available)
python scripts/generate_post.py "Post Title"
```

## 📝 How It Works

1. **Content Creation**: Study posts are written in HTML format
2. **Site Generation**: The `index.html` automatically lists all posts
3. **Deployment**: GitHub Pages serves the `/docs` folder automatically on push to `main`

## 🔄 Deployment

The site is deployed automatically via GitHub Pages:

1. Push changes to the `main` branch
2. GitHub Pages automatically builds and deploys
3. Site updates within 2-5 minutes

**Manual deployment** (if using Actions):
```bash
git push origin main
```

## 🤝 Contributing

This is a personal study repository, but suggestions and improvements are welcome!

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m '✨ Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📚 Study Resources

- [Claude Documentation](https://docs.claude.com/)
- [Anthropic Developer Resources](https://www.anthropic.com/api)
- [Certification Study Guide](https://www.anthropic.com/certification)


## 🧑‍💻 Author

**Aimê Nobrega**
- GitHub: [@aime-n](https://github.com/aime-n)
- Site: [aime-n.github.io](https://aime-n.github.io/)

## 📄 License

This project is for personal educational use. Feel free to reference or adapt for your own studies.

---

**Happy Studying! 🎓✨**
