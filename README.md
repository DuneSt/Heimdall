# Heimdall

Heimdall is a login identification system directly usable for [Seaside](https://github.com/SeasideSt/Seaside). 

For now this is pretty exerimental. 

# Documentation

## Version management 

This project use semantic versionning to define the releases. This mean that each stable release of the project will get associate a version number of the form `vX.Y.Z`. 

- **X** define the major version number
- **Y** define the minor version number 
- **Z** define the patch version number

When a release contains only bug fixes, the patch number increase. When the release contains new features backward compatibles, the minor version increase. When the release contains breaking changes, the major version increase. 

Thus, it should be safe to depend on a fixed major version and moving minor version of this project.

## Install Heimdall

To install Heimdall on your Pharo image you can just execute the following script:

```Smalltalk
    Metacello new
    	githubUser: 'DuneSt' project: 'Heimdall' commitish: 'v1.x.x' path: 'src';
    	baseline: 'Heimdall';
    	onWarningLog;
		onUpgrade: [ :e | e useIncoming ];
    	load
```

To add Heimdall to your baseline just add this:

```Smalltalk
    spec
    	baseline: 'Heimdall'
    	with: [ spec repository: 'github://DuneSt/Heimdall:v1.x.x/src' ]
```

Note that you can replace the v1.x.x tag by a branch as #master or #development or a tag as #v1.0.0, #v1.? or #v1.0.x or a commit SHA.

## Getting started 

The first thing to do in order to use Heimdall is to add its `FileLibrary` to your Seaside application and use the Heimdall session.

```Smalltalk
	| app |
	app := WAAdmin register: self asApplicationAt: 'myApplication'.
	app preferenceAt: #sessionClass put: HeimdallSession.
	app
		addLibrary: HeimdallFileLibrary;
		addLibrary: JQDeploymentLibrary
```

## Smalltalk versions compatibility

| Heimdall version 	| Compatible Pharo versions 	|
|------------------	|---------------------------	|
| v1.0.0	   		| Pharo 61, 70, 80, 90         	|
| development      	| Pharo 61, 70, 80, 90         	|

## Contact

If you have any question or problem do not hesitate to open an issue or contact cyril (a) ferlicot.me or guillaume.larcheveque (a) gmail.com


