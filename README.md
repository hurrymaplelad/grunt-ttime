grunt-ttime [![Build Status](https://travis-ci.org/hurrymaplelad/grunt-ttime.png)](https://travis-ci.org/hurrymaplelad/grunt-ttime)
===========

Record task completion time as mtime of a file.  Use with [grunt-find](https://github.com/hurrymaplelad/grunt-find) to skip files that haven't changed since the last time a task ran.

```shell
npm install --save-dev grunt-ttime
```

Run `ttime:foo` to generate a file named `foo` in the ttime directory (`.grunt/ttime` by default).

Run `ttime:clear` to remove all the generated files.

```
grunt.loadNpmTasks('grunt-ttime');
grunt.loadNpmTasks('grunt-contrib-coffee');

grunt.initConfig({
  ttime: {
    dest: 'build/' // generate files in build/ttime/ instead of .grunt/ttime/
  },

  coffee: {
    all: {
      /* ... */
    }
  }
});

grunt.defineTask('default', ['coffee', 'ttime:coffee']
grunt.defineTask('clean', ['ttime:clear']
```