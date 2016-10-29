# update-notifier [![Build Status](https://travis-ci.org/yeoman/update-notifier.svg?branch=master)](https://travis-ci.org/yeoman/update-notifier)

> Update notifications for your CLI app

![](screenshot.png)

Inform users of your package of updates in a non-intrusive way.

#### Table of Contents

- [Examples](#examples)
- [How](#how)
- [API](#api)
- [About](#about)


## Examples

### Simple example

```js
const updateNotifier = require('update-notifier');
const pkg = require('./package.json');

updateNotifier({pkg}).notify();
```

### Comprehensive example

```js
const updateNotifier = require('update-notifier');
const pkg = require('./package.json');

// Checks for available update and returns an instance
const notifier = updateNotifier({pkg});

// Notify using the built-in convenience method
notifier.notify();

// `notifier.update` contains some useful info about the update
console.log(notifier.update);
/*
{
	latest: '1.0.1',
	current: '1.0.0',
	type: 'patch', // possible values: latest, major, minor, patch, prerelease, build
	name: 'pageres'
}
*/
```

### Example with settings and custom message

```js
const notifier = updateNotifier({
	pkg,
	updateCheckInterval: 1000 * 60 * 60 * 24 * 7 // 1 week
});

console.log(`Update available: ${notifier.update.latest}`);
```


## How

Whenever you initiate the update notifier and it's not within the interval threshold, it will asynchronously check with npm in the background for available updates, then persist the result. The next time the notifier is initiated the resu