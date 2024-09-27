# `college-beamer`

Hi👋 Here are some beamer templates which are secondary creations of [SINTEF Presentation](https://www.overleaf.com/latex/templates/sintef-presentation/jhbhdffczpnx) template. Thanks [Federico Zenith](federico.zenith@sintef.no) for creating such well-designed works. To use it in my and my friends' schools/institutes, I rewrote and added some icons and features to adapt to specific surroundings✨.

## Colleges & institutes

- The Hong Kong Polytechnic University
![PolyU](https://github.com/liu-qilong/college-beamer/blob/main/gallery/PolyU.png?raw=true)
- Southwest University
![SWU](https://github.com/liu-qilong/college-beamer/blob/main/gallery/SWU.png?raw=true)
- Shenzhen University
![SZU](https://github.com/liu-qilong/college-beamer/blob/main/gallery/SZU.png?raw=true)
- Shenzhen Academic of Environmental Science
![SAES](https://github.com/liu-qilong/college-beamer/blob/main/gallery/SAES.png?raw=true)
- Harbin Institute of Technology
![HIT](https://github.com/liu-qilong/college-beamer/blob/main/gallery/HIT.png?raw=true)
  > Thank [LeeWlving](https://github.com/LeeWlving) for contributing this template!
- Zhejiang A&F University
![ZAFU](https://github.com/liu-qilong/college-beamer/blob/main/gallery/ZAFU.png?raw=true)
  > Thank [ke1ewang](https://github.com/ke1ewang) for contributing this template!

Some of these templates have been submitted to [Overleaf](https://cs.overleaf.com/gallery), please check them here👇

- [The Honk Kong Polytechnic University (PolyU) Beamer Presentation Theme - Overleaf](https://www.overleaf.com/latex/templates/the-honk-kong-polytechnic-university-polyu-beamer-presentation-theme/vywngqprjwrq)
- [西南大学 SWU Beamer 模板 - Overleaf](https://www.overleaf.com/latex/templates/xi-nan-da-xue-swu-beamer-mo-ban-zhu-ti/bgprxfbyhqsb)
- [深圳大学 SZU Beamer 模板 - Overleaf](https://www.overleaf.com/latex/templates/shen-zhen-da-xue-szu-beamer-mo-ban/bjwzmkpsgygf)
- [深圳环境科学院 SAES Beamer 模版 - Overleaf](https://www.overleaf.com/latex/templates/shen-zhen-huan-jing-ke-xue-yuan-saes-beamer-zhu-ti/gqfgpdwcrcpt)
- [哈尔滨工业大学 Beamer 模版](https://www.overleaf.com/latex/templates/harbin-institute-of-technology-hit-beamer-presentation-theme/prwxqwfdzkqj)

## Options & usage

### Switch college/institute

Switching between different college/institute is quite easy, just add college/institute name (all lower case) to the `collegeBeamer` package. For example, to switch to the PolyU theme, add `polyu` to the package:

```
\usepackage[polyu,en]{collegeBeamer}
```

### Switch language

To switch the language, just change the language option in the `collegeBeamer` package. For example, to switch to the Chinese language, add `zh` to the package:

```
\usepackage[szu,zh]{collegeBeamer}
```

> When select `zh`, please add the `xeCJK`package to the preamble and use XeLaTeX as the typesetting engine.

```
\usepackage{xeCJK}
```

Please use `XeLaTeX` engine for typesetting.

### Page elements

- Table of Contents

  At the beginning of each section, the table of contents will be shown with the current chapter highlighted.
![toc](https://github.com/liu-qilong/college-beamer/blob/main/gallery/table%20of%20contents.png?raw=true)
- Sub-section page
![ssec](https://github.com/liu-qilong/college-beamer/blob/main/gallery/subsection.png?raw=true)
- Math equation
![math](https://github.com/liu-qilong/college-beamer/blob/main/gallery/math.png?raw=true)
- Code block
![code](https://github.com/liu-qilong/college-beamer/blob/main/gallery/code.png?raw=true)
- End page
![end](https://github.com/liu-qilong/college-beamer/blob/main/gallery/end.png?raw=true)

## Add your own college?

Would like to make your own theme on top of these themes? It's quite easy, only a few steps are needed:

### Step 1: Get the files

To get the files, you can fork & clone the repository to your computer.

Alternatively, you can open the templates' Overleaf webpages and click `Open as Template`.

### Step 2: Place logos and background

Create a subfolder under `src/` named as your college. Place `color-logo.png` (logo image with background color), `trans-logo.png` (logo image with transparent background), and `background.png` (background image on the cover page) into it.

### Step 3: Add college/institute option

Starting from the 37-th line of `collegebeamer.sty`, all college/institute options are defined. Add your college/institute name in the same format, e.g.:

```
\DeclareOption{polyu}{
  \renewcommand{\maincolorRGB}{128, 57, 61}  % the theme's main color in RGB
  \renewcommand{\colorlogoPath}{src/PolyU/color-logo.png}  % path to the logo image with background color
  \renewcommand{\translogoPath}{src/PolyU/trans-logo.png}  % path to the logo image with transparent background
  \renewcommand{\backgroundPath}{src/PolyU/background.png}  % path to the background image
}
```

Noted that the theme's main color will be used in the front-ground of titles and background colors of the sectional page.

> _P.S. You may also choose to use a logo with white background for `\translogoPath`. Please refer to [issue #8](https://github.com/liu-qilong/college-beamer/issues/8) for considerations._

Now you have your brand new template 👏🎉

## Issues & suggestions

If you have any revision suggestions, please create an issue in this repository. Thanks indeed🤝
