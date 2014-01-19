pkg = require '../package.json'

module.exports = (grunt) ->
  grunt.registerTask 'ttime', pkg.description, ->
    dest = grunt.config([@name, 'dest']) or '.grunt'
    dest = "#{dest}ttime"
    [target] = @args

    if target is 'clear' and grunt.file.exists dest
      grunt.file.delete dest
    else
      grunt.file.write "#{dest}/#{target}", new Date()
