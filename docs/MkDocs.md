# MkDocs

[MkDocs](https://www.mkdocs.org) is an open source project that takes Markdown documents and generates a static web site.  The static web site does have some useful features, such as navigation and search.

MkDocs is easy to [install](https://www.mkdocs.org/#installation) on all common operating systems and provides a good developer experience, where you can see real time changes as you work on a document.  

You also have multiple [built-in](https://www.mkdocs.org/#theming-our-documentation) or  [community](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes) themes available and have the option to customize an existing theme or [create a new theme](https://www.mkdocs.org/user-guide/custom-themes/) the get the documentation layout and style exactly as you want.  For this project the default theme is used.

## Configuring MkDocs

MkDocs is configured using a file named **mkdocs.yml** located in the root directory of your project.  The minimum configuration is simply a site name.

```yaml
site_name: Testing mkdocs
```

Once you have the **mkdocs.yml** file you can start the local server to track changes to the generated site as you modify the Markdown documents.  If you want to turn this feature on you simply run command ```mkdocs serve``` in a terminal window in the directory containing the **mkdocs.yml** file.  You can see the generated site at location http://localhost:8000.

The **mkdocs.yml** file for this project is:

```yaml
site_name: Testing mkdocs
site_url: https://binnes.github.io/mkdocTest
repo_url: https://github.com/binnes/mkdocTest
theme:
    name: mkdocs
#    name: readthedocs
    nav_style: dark
    shortcuts:
        help: 191    # ?
        next: 78     # n
        previous: 80 # p
        search: 83   # s
nav:
  - Home: index.md
  - Actions: GitHubActions.md
  - MkDocs: MkDocs.md
  - Pages: GitHubPages.md
```

You can see all the configuration options in the [MkDocs User Guide](https://www.mkdocs.org/user-guide/configuration/), but some things to note:

- The default location MkDocs looks for docs to render is the **docs** directory in the root of your project.  This can be changed by adding the **docs_dir** configuration option.
- The default location MkDocs will write the rendered site is the **site** directory.  This can be changed by adding the **site_dir** configuration option.
- MkDocs automatically adds the **search** plugin to generate a search capability on a generated site.
- The default theme is **mkdocs**, but this can be altered using the **theme** configuration options.  Some themes have customization options, such as the shortcut keys I've enabled in this project.
- You control the navigation options of the published site using the **nav** configuration option.  

This project is using GitHub Actions to generate the site, so the site directory shouldn't be pushed manually into the GitHub repository, so this project has added the **site/** directory to the **.gitignore** file, to prevent it being added to the repository.

## Controlling site navigation

The **nav** configuration controls the navigation on the site.  Different themes can support different levels of navigation nesting and offer different navigation options on the page.  

You can control the navigation nesting by adding a section in the configuration.  If I changes the navigation for this project to:
  
```yaml
  nav:
  - Home: index.md
  - Configuration:
    - Actions: GitHubActions.md
    - MkDocs: MkDocs.md
    - Pages: GitHubPages.md
```

the navigation now shows the top level **cConfiguration** option as a drop down list containing the 3 sub-level entries.

![new navigation](images/navigation.png)

## Publishing the site

MkDocs has a built in option for deploying to GitHub Pages.  

The default option is to push the generated site to a branch in the GitHub repository called **gh-pages**.  This default can be changed using the **remote_branch** configuration option.

As this project uses a GitHub Action to automatically publish the site when changes are pushed to the master branch it shouldn't be necessary to publish manually.

To manually publish documentation to GitHub Pages:

1. Open a terminal window
2. Navigate to the root directory of your cloned GitHub repository
3. Run the **mkdocs** command:

```sh
mkdocs gh-deploy
```
