# preprocess-js

This repository contains some simple experiments I am conducting to test applications for preprocessing Javascript code.

One application that comes to mind is the ability to share constants between JS and non-JS files. e.g. sharing a constant between Sass and JS files.

```scss
/* -- styles.scss -- */
$num-buttons: <% num-buttons %>; // used for ui
...
```

```javascript
/* -- index.js -- */
for (let i = 0; i < <% num-buttons %>; i++) {
  buttons = buttons.concat(<span className="ui-button" />);
}
...
```

```text
/* -- constants.txt -- */
num-buttons = 4
...
```

```bash
$ run.sh constants.txt
```

`run.sh` should look in the current directory for any sass and javascript files to substitute `<% num-buttons %>` with `4`. Right now everything is in a crude state. I expect improvements to be made in a piecemeal fashion. I am not sure if this would scale either. Again, it is only intended as an experiment at this stage.
