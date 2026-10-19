# Resume

LaTeX source for my resume, based on [Jake's Resume](https://github.com/jakegut/resume).

**Latest PDF:** [Releases → latest](../../releases/latest)

## Updating

1. Edit `resume.tex`.
2. Preview locally: `make` builds `Palash_Pawar_Resume.pdf` (`make watch` rebuilds on every save).
3. Commit and push. GitHub Actions compiles the PDF and replaces the `latest` release.

The build warns if the resume goes over one page.

## Tailored versions

For a company-specific version, branch off `main`:

```bash
git switch -c tailored/tesla
# edit resume.tex, commit, push
```

Each branch's PDF is attached to its run on the Actions tab. Your main version stays untouched, and `git diff main tailored/tesla` shows exactly what you changed for that application.

## Commands

| Command      | What it does                            |
|--------------|-----------------------------------------|
| `make`       | Build the PDF                           |
| `make watch` | Rebuild automatically while you edit    |
| `make clean` | Remove the PDF and LaTeX build files    |
