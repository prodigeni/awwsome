module.exports = (grunt) ->
	grunt.initConfig
		coffee:
			dist:
				files: [{
					expand: true
					cwd: 'src'
					src: '*.coffee'
					dest: 'app'
					rename: (d,s) ->
						d + '/' + s.replace(/\.coffee$/, '.js')
				}]

	grunt.loadNpmTasks('grunt-contrib-coffee')

	grunt.registerTask('default', ['coffee'])