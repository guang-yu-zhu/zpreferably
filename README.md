# zpreferably <img src="man/figures/logo.png" width="120" align="right"/>

{zpreferably} is an **accessible** template for [pkgdown](https://pkgdown.r-lib.org/) documentation websites. It is modified based on [preferably](https://preferably.amirmasoudabdol.name/)

- **Increase font size**: modified 'inst/pkgdown/BS3/assets/preferably.css'

## Installation
```R
devtools::install_github('guang-yu-zhu/zpreferably')
```

## Usage

After the successful installation, if you already have your pkgdown setup ready, you only need to specify the `template` parameter as follow. Then, as before, you can build your site using `build_site()` and deploy it manually using `deploy_on_branch()`.

```YAML
url: http://guang-yu-zhu.github.io/zpreferably/
template:
  package: zpreferably
  bootstrap: 3
  params:
    ganalytics:
    toggle: manual # Manual Light/Dark Toggle
home:
  title: zpreferably - a 'pkgdown' template
  description: An accessible template for pkgdown websites with dynamic light/dark mode support
authors:
  Guangyu Zhu:
    href: https://guangyuzhu.rbind.io/
development:
  mode: auto
repo:
  url:
    home: https://github.com/guang-yu-zhu/zpreferably
  branch: main
navbar:
  structure:
    left:  [home, reference, news]
    right: [personal,github]
  components:
    personal:
        text: "Persoanl Website"
        href: http://guangyuzhu.rbind.io
```

> ⚠️ Keep in mind that you should NOT use `default_assets: false` when you change the default template. 'preferably' relies on some of the 'pkgdown' assets and templates.

### Integration

In the case that you are using CI systems to build and deploy your website, you need to make sure that 'preferably' is available on the environment. For [GitHub Action](https://pkgdown.r-lib.org/articles/pkgdown.html?q=github%20action#publishing), add the following line to the "Install dependencies" section of your `.github/workflows/pkgdown.yaml` file:

```YAML
- name: Install dependencies
  run: |
    # ⚠️ leave other commands intact,
    # and add the following command to the end of the list 👇🏼
    remotes::install_deps(dependencies = TRUE)
    install.packages("pkgdown", type = "binary")
    devtools::install_github('guang-yu-zhu/zpreferably')
```

If you are using Travis-CI, add the following line to your `.travis.yml` file:

```YAML
r_github_packages:
  - guang-yu-zhu/zpreferably
```

## Customization

In addition of pkgdown customization, Preferably offers a few more options as listed here.  

### Custom Analytic

Preferably allows for adding a custom analytic (in addition to `ganalytics`) to your website via the `canalytic` option.

```YAML
template:
  package: preferably
  params:
    canalytic:
      domain: example.com
      src: https://example.com/tracker.js
```

Setting these command will generate the following line in the HTML:

```html
<script async defer data-domain="example.com" src="https://example.com/tracker.js"></script>
```

> `{pkgdown}` 2.0 comes with a [greater list of supported trackers](https://pkgdown.r-lib.org/reference/build_site.html?q=plausi#analytics) that you can use out of the box, including [Plausible](https://plausible.io/).

### Manual Light/Dark Toggle

In addition to the automatic color scheme switching, you can add a switch to the menu bar, e.g, <span class="fas fa-adjust fa"></span>, to allow for manual selection between light and dark themes. This can be done by setting the `toggle` option to `manual`. 

```YAML
template:
  package: preferably
  params:
    toggle: manual
```

Unfortunately, it is not possible to have both the automatic and manual mode at the same time. There is an user experience issue here, and it is almost impossible to deliver a seamless experience without involving the server-side, [here](https://kilianvalkhof.com/2020/design/your-dark-mode-toggle-is-broken/), and [here](https://www.joshwcomeau.com/react/dark-mode/). So, you need to choose whether you like to give your users a manual toggle, or let your website adapts to their system preference.

> ⚠️ In order to remove the toggle button, remove the `toggle` parameter.

- - -

## Misc.

#### Goal

The goal of `zpreferably` is to improve the accessibility and readability of your documentation websites.




