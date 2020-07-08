# MkDoc Test

This site show how to use [MkDocs](https://www.mkdocs.org){target=_blank}  and [GitHub Actions](https://help.github.com/en/actions){target=_blank} to convert project documentation written in Markdown to a static web site, which can be hosted on [GiHub Pages](https://help.github.com/en/github/working-with-github-pages){target=_blank}.  This provides a much better user experience than GitHib rendered Markdown.  The default themes supplied with MkDocs creates a site that is reactive to screen size, so works on all devices automatically.

Combining **MkDocs**, **GitHub Actions** and **GitHub Pages** enables an automatic process of keeping the documentation site on GitHub Pages up to date.  You only need to focus on creating the documentation in Markdown.  

When the Markdown pages are pushed to the master branch of the GitHub repository, a GitHub Action will automatically be triggered to generate and publish the documentation to GitHub Pages.  If your git infrastructure doesn't provide Actions then you can manually generate and push the documentation to GitHub Pages.

These facilities are available on both Free and paid GitHub accounts, though some Enterprise GitHub installations may not have the GitHub Actions feature.

To enable this capability in your project, you need to have a local clone of your GitHub project on your system, then:

1. Add the .github directory, and all the content within the directory and sub-directories, from this project to your own project (covered in more details in the [GitHub Actions](GitHubActions.md) section)
2. Add the mkdocs.yml to the root of your project and configure it for your project (covered in more details in the [MkDocs](MkDocs.md) section)
3. Configure your GitHub repository for GitHub Pages (covered in more details in the [GitHub Pages](GitHubPages.md) section)
4. Push all the changes to the master branch of your GitHub repository
5. Update the GitHub Pages configuration to point to the generated site
