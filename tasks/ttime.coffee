touch = require 'touch'
mkdirp = require 'mkdirp'
rimraf = require 'rimraf'
pkg = require '../package.json'

module.exports = (grunt) ->
  grunt.registerTask 'ttime', pkg.description, ->
    dest = grunt.config([@name, 'dest']) or '.grunt'
    dest = "#{dest}ttime"
    [target] = @args

    if target is 'clear'
      rimraf.sync dest
    else
      mkdirp.sync dest
      touch.sync "#{dest}/#{target}"
