fs = require 'fs'

module.exports = (grunt) ->
  grunt.initConfig
    ttime:
      dest: 'build/'

  grunt.loadTasks 'tasks'

  grunt.registerTask 'test', ['ttime:coffee', 'verify', 'ttime:clear']
  grunt.registerTask 'verify', ->
    fs.statSync 'build/ttime/coffee'
