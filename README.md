[![Geometrize Top Level Repo Logo](https://github.com/Tw1ddle/geometrize-top-level-repo/blob/master/screenshots/logo.png?raw=true "Geometrize top level repo logo")](https://www.geometrize.co.uk/)

[![License](https://img.shields.io/badge/License-GPL%20v3-blue.svg?style=flat-square)](https://github.com/Tw1ddle/geometrize-top-level-repo/blob/master/LICENSE)

Top level repository for the [Geometrize](https://www.geometrize.co.uk/) project, an app for geometrizing images into geometric primitives and associated tools.

[![Geometrized Borrowdale](https://github.com/Tw1ddle/geometrize-top-level-repo/blob/master/screenshots/coastal_view.png?raw=true "Geometrized Coastal View, 150 Ellipses")](https://www.geometrize.co.uk/)

## Getting Started

Checkout this repository and then download the entire Geometrize codebase by running the [get_geometrize_projects.sh](https://github.com/Tw1ddle/geometrize-top-level-repo/blob/master/get_geometrize_projects.sh) script.

The Geometrize project is split across numerous git repositories and submodules - it comprises several separate, modular pieces of software.

Good places to start would be to build and run the C++ [minimal example program](https://github.com/Tw1ddle/geometrize-lib-example), the [Geometrize desktop application](https://github.com/Tw1ddle/geometrize), or the [web demo](https://github.com/Tw1ddle/geometrize-haxe-web).

To contribute, please make a pull request or open an issue on the relevant repository. Write access to repositories may also be granted to trusted contributors.

## Project Structure

The project repositories are structured as follows:

| Repository Name                   | Submodules      |
| --------------------------------- | --------------- |
| [geometrize-top-level-repo](https://github.com/Tw1ddle/geometrize-top-level-repo) |  |
| [geometrize](https://github.com/Tw1ddle/geometrize) | lib/burstlinker/burstlinker lib/cereal lib/chaiscript lib/dataslinger lib/geometrize resources/scripts resources/templates resources/web_export translations |
| [geometrize-docs](https://github.com/Tw1ddle/geometrize-docs) | geometrize |
| [geometrize-functional-tests](https://github.com/Tw1ddle/geometrize-functional-tests) |  |
| [geometrize-gallery](https://github.com/Tw1ddle/geometrize-gallery) |  |
| [geometrize-haxe](https://github.com/Tw1ddle/geometrize-haxe) |  |
| [geometrize-haxe-example](https://github.com/Tw1ddle/geometrize-haxe-example) | lib/geometrize |
| [geometrize-haxe-unit-tests](https://github.com/Tw1ddle/geometrize-haxe-unit-tests) | geometrize |
| [geometrize-haxe-web](https://github.com/Tw1ddle/geometrize-haxe-web) | lib/geometrize |
| [geometrize-lib-docs](https://github.com/Tw1ddle/geometrize-lib-docs) | geometrize |
| [geometrize-lib-example](https://github.com/Tw1ddle/geometrize-lib-example) | lib/args lib/geometrize |
| [geometrize-lib-fuzzing](https://github.com/Tw1ddle/geometrize-lib-fuzzing) | lib/geometrize |
| [geometrize-lib-unit-tests](https://github.com/Tw1ddle/geometrize-lib-unit-tests) | geometrize |
| [geometrize-resources](https://github.com/Tw1ddle/geometrize-resources) |  |
| [geometrize-s3-bucket-downloader](https://github.com/Tw1ddle/geometrize-s3-bucket-downloader) |  |
| [geometrize-screenshots](https://github.com/Tw1ddle/geometrize-screenshots) |  |
| [geometrize-tween-optimizer](https://github.com/Tw1ddle/geometrize-tween-optimizer) |  |
| [geometrize-tweens](https://github.com/Tw1ddle/geometrize-tweens) |  |
| [geometrize-twitter-bot](https://github.com/Tw1ddle/geometrize-twitter-bot) |  |
| [geometrize-twitter-bot-docs](https://github.com/Tw1ddle/geometrize-twitter-bot-docs) | geometrize-twitter-bot |
| [geometrize-website](https://github.com/Tw1ddle/geometrize-website) |  |


The table above is generated via the [list_git_repos_and_submodules.sh](https://github.com/Tw1ddle/geometrize-top-level-repo/blob/master/list_git_repos_and_submodules.sh) script.

## Notes
 * Got an idea or suggestion? Open an issue on GitHub, or send Sam a message on [Twitter](https://twitter.com/Sam_Twidale).