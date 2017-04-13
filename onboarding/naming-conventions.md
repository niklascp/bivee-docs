# Organizing Chaos

We are all used to working in our own little bubble – some of us are complete OCD freaks, and others enjoy working in absolute chaos, but that seems to make sense to you. For all of our sanity, here is how we like to structure our files, folders and the like to keep things sorted.

## Project Naming

This is probably where our team has the most debate, and probably where we will be refining over time. All projects have a project number which usually consists of a three letter acronym for the client, the year the project was initiated, a project identifier, and a number to show how many projects we have done with that specific identifier.

For example, working with the Climate Change VPU at the World Bank Group on a design project in 2015 would look like this:

**WBG-15-CC-001**

To the uninitiated, this looks like gibberish, so we are adding in square brakets after the folder name in our folder structure something a little more meaningful like:

**WBG-15-CC-001 [Climate]**

## General Naming Conventions

There are some constants to help us sort and order items in our naming. 

### Revisions

Nothing is ever final! There will always be revisions to all work, even when we think it is finished, so do not add the word Final to any file name. Instead, add the following to the end of the filename to indicate the revision number:

**-rev-0.1.0**

#### Version numbering for design files

For design files (Sketch, Photoshop, Illustrator, Affinity, Indesign, etc.), it's helpful to use version numbering to reflect the project's overall stage of revision. In general, we follow a basic version of the ["Semantic Versioning"](http://semver.org) spec software developers use. When the design is "released" (ie it is approved to implement or publish) the version is "1.0". Until then it's in "alpha", using "0.x" version numbers. Deeper decimals reflect internal revisions.

- First round is `-rev-0.0.1`. This number means "pre-release, first round, first internal revision".
- To record your changes as the design evolves, increase the decimal: `-rev-0.0.2`. Treat this like a commit to a repository: save a new version each time you reach a 'stopping point', or anytime there's work you might want to refer back to. Also save a new version each time you address feedback from an internal review.
- Each time the client sees the design, the next version is considered an "alpha release." Increase the second decimal, e.g. `-rev-0.1.0`.
- If you need to make a few variations to explore options (for example, say you're trying out different fonts or color schemes), add a letter to the last decimal: `-rev-1.1.1a`, `-rev-1.1.1b`, `-rev-1.1.1c`. If you want to add notes or "labels" for variations, append after the version number with a hyphen, like so: `-rev-1.1.1b-red_and_blue`.

### Dates

Anything that can be dated should be dated. And that date should appear before anything else in the filename as YYYY-MM-DD. This will keep the files naturally ordered by date when opening a folder and help create a history.

**2015.06.25-File_Name-rev-0.1**
