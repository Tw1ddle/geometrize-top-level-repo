[![Geometrize Top Level Repo Logo](https://github.com/Tw1ddle/geometrize-top-level-repo/blob/master/screenshots/logo.png?raw=true "Geometrize top level repo logo")](https://www.geometrize.co.uk/)

[![License](https://img.shields.io/badge/License-GPL%20v3-blue.svg?style=flat-square)](https://github.com/Tw1ddle/geometrize-top-level-repo/blob/master/LICENSE)

Top level repository for the [Geometrize](https://www.geometrize.co.uk/) project, an app for geometrizing images into geometric primitives and associated tools.

[![Geometrized Borrowdale](https://github.com/Tw1ddle/geometrize-top-level-repo/blob/master/screenshots/coastal_view.png?raw=true "Geometrized Coastal View, 150 Ellipses")](https://www.geometrize.co.uk/)

## Developer Quickstart

Checkout this repository and then download the entire Geometrize codebase by running the [get_geometrize_projects.sh](https://github.com/Tw1ddle/geometrize-top-level-repo/blob/master/get_geometrize_projects.sh) script.

The Geometrize project is split across numerous git repositories and submodules - it comprises several separate, modular pieces of software.

Good places to start would be to build and run the C++ [minimal example program](https://github.com/Tw1ddle/geometrize-lib-example), the [Geometrize desktop application](https://github.com/Tw1ddle/geometrize), or the [web demo](https://github.com/Tw1ddle/geometrize-haxe-web).

To contribute, make a pull request or open an issue on the relevant repository. Write access to repositories may also be granted to trusted contributors.

## Project Structure

The project repositories are structured as follows:

| Repository Name                   | Submodules      | Description | Build Status |
| --------------------------------- | --------------- | ----------- | ------------ |
| [geometrize-top-level-repo](https://github.com/Tw1ddle/geometrize-top-level-repo) |  | The top level Geometrize C++ repository and developer quickstart guide | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-top-level-repo)](https://ci.appveyor.com/project/Tw1ddle/geometrize-top-level-repo) |
| [geometrize](https://github.com/Tw1ddle/geometrize) | lib/burstlinker/burstlinker lib/cereal lib/chaiscript lib/dataslinger lib/geometrize resources/scripts resources/templates resources/web_export translations | The main Geometrize C++ desktop application repository. The submodules include translations, resources, sample images and scripts. | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize)](https://ci.appveyor.com/project/Tw1ddle/geometrize) |
| [geometrize-docs](https://github.com/Tw1ddle/geometrize-docs) | geometrize | Developer documentation generation and hosting for the Geometrize C++ application | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-docs)](https://ci.appveyor.com/project/Tw1ddle/geometrize-docs) |
| [geometrize-functional-tests](https://github.com/Tw1ddle/geometrize-functional-tests) |  | Automated tests for the Geometrize C++ application | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-functional-tests)](https://ci.appveyor.com/project/Tw1ddle/geometrize-functional-tests) |
| [geometrize-gallery](https://github.com/Tw1ddle/geometrize-gallery) |  | Code repository and hosting for a collection of example geometrized images | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-gallery)](https://ci.appveyor.com/project/Tw1ddle/geometrize-gallery) |
| [geometrize-haxe](https://github.com/Tw1ddle/geometrize-haxe) |  | The Geometrize Haxe library repository | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-haxe)](https://ci.appveyor.com/project/Tw1ddle/geometrize-haxe) |
| [geometrize-haxe-example](https://github.com/Tw1ddle/geometrize-haxe-example) | lib/geometrize | A HaxeFlixel-based demo of the Geometrize Haxe library | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-haxe-example)](https://ci.appveyor.com/project/Tw1ddle/geometrize-haxe-example) |
| [geometrize-haxe-unit-tests](https://github.com/Tw1ddle/geometrize-haxe-unit-tests) | geometrize | Unit tests for the Geometrize Haxe library | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-haxe-unit-tests)](https://ci.appveyor.com/project/Tw1ddle/geometrize-haxe-unit-tests) |
| [geometrize-haxe-web](https://github.com/Tw1ddle/geometrize-haxe-web) | lib/geometrize | Code repository for the Geometrize Haxe web application | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-haxe-web)](https://ci.appveyor.com/project/Tw1ddle/geometrize-haxe-web) |
| [geometrize-installer](https://github.com/Tw1ddle/geometrize-installer) | geometrize | Installer and packaging code for the Geometrize C++ desktop application | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-installer)](https://ci.appveyor.com/project/Tw1ddle/geometrize-installer) |
| [geometrize-lib-docs](https://github.com/Tw1ddle/geometrize-lib-docs) | geometrize | Developer documentation generation and hosting for the Geometrize C++ library | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-lib-docs)](https://ci.appveyor.com/project/Tw1ddle/geometrize-lib-docs) |
| [geometrize-lib-example](https://github.com/Tw1ddle/geometrize-lib-example) | lib/args lib/geometrize | A minimal C++ usage example of the Geometrize C++ library | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-lib-example)](https://ci.appveyor.com/project/Tw1ddle/geometrize-lib-example) |
| [geometrize-lib-fuzzing](https://github.com/Tw1ddle/geometrize-lib-fuzzing) | lib/geometrize | Fuzz tests for the Geometrize C++ library | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-lib-fuzzing)](https://ci.appveyor.com/project/Tw1ddle/geometrize-lib-fuzzing) |
| [geometrize-lib-unit-tests](https://github.com/Tw1ddle/geometrize-lib-unit-tests) | geometrize | Unit tests for the Geometrize C++ library | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-lib-unit-tests)](https://ci.appveyor.com/project/Tw1ddle/geometrize-lib-unit-tests) |
| [geometrize-resources](https://github.com/Tw1ddle/geometrize-resources) |  | A collection of curated resources e.g. public domain images, for use with Geometrize | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-resources)](https://ci.appveyor.com/project/Tw1ddle/geometrize-resources) |
| [geometrize-s3-bucket-downloader](https://github.com/Tw1ddle/geometrize-s3-bucket-downloader) |  | A frontend for downloading Geometrize installers (from an Amazon S3 bucket) | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-s3-bucket-downloader)](https://ci.appveyor.com/project/Tw1ddle/geometrize-s3-bucket-downloader) |
| [geometrize-screenshots](https://github.com/Tw1ddle/geometrize-screenshots) |  | Hosting for a set of screenshots showing different parts of the Geometrize C++ application | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-screenshots)](https://ci.appveyor.com/project/Tw1ddle/geometrize-screenshots) |
| [geometrize-tween-optimizer](https://github.com/Tw1ddle/geometrize-tween-optimizer) |  | A tool for creating visually appealing tweens between sets of geometric primitives | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-tween-optimizer)](https://ci.appveyor.com/project/Tw1ddle/geometrize-tween-optimizer) |
| [geometrize-tweens](https://github.com/Tw1ddle/geometrize-tweens) |  | A web-based demo showing tweens between media composed of geometric primitives | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-tweens)](https://ci.appveyor.com/project/Tw1ddle/geometrize-tweens) |
| [geometrize-twitter-bot](https://github.com/Tw1ddle/geometrize-twitter-bot) |  | A Twitter bot that geometrizes images found on Twitter, and tweets the results | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-twitter-bot)](https://ci.appveyor.com/project/Tw1ddle/geometrize-twitter-bot) |
| [geometrize-twitter-bot-docs](https://github.com/Tw1ddle/geometrize-twitter-bot-docs) | geometrize-twitter-bot | Developer documentation generation and documentation hosting for the Geometrize Twitter bot | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-twitter-bot-docs)](https://ci.appveyor.com/project/Tw1ddle/geometrize-twitter-bot-docs) |
| [geometrize-website](https://github.com/Tw1ddle/geometrize-website) |  | A user-facing website and landing page for the Geometrize project | ![[Build Status Badge](https://ci.appveyor.com/api/projects/status/github/Tw1ddle/geometrize-website)](https://ci.appveyor.com/project/Tw1ddle/geometrize-website) |

The table above was generated via the [list_git_repos_and_submodules.sh](https://github.com/Tw1ddle/geometrize-top-level-repo/blob/master/list_git_repos_and_submodules.sh) script.

## Automated Builds

When a commit is made to the master branch of a repository, automated builds are triggered to build, test and deploy any artifacts. For example, when a commit is made to the [main Geometrize C++](https://github.com/Tw1ddle/geometrize) repository, a build job will build the latest changes
for Windows, Mac and Linux. If this succeeds, then a build job for the [Geometrize C++ installer](https://github.com/Tw1ddle/geometrize-installer) is triggered, to build installers for the latest revision of Geometrize. These installers are then deployed to an Amazon S3 bucket.

## Licenses

Most of the Geometrize project is free software, with code usually falling under the copyleft GPL license or the open source MIT license. Check the individual repositories and submodules and their associated LICENSE files for more details.

## Notes
 * Got an idea or suggestion? Open an issue on GitHub, or send Sam a message on [Twitter](https://twitter.com/Sam_Twidale).