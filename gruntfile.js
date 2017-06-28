var config = require('./config.json');

module.exports = function(grunt){
    grunt.initConfig({
        'string-replace': {
            inline: {
                files: 
                [
                    {
                    'scripts/buildimage.sh': 'scripts/templates/buildimage.sh',
                    },
                    {
                    'scripts/containerup.sh': 'scripts/templates/containerup.sh',
                    },
                ],
                    options: {
                    replacements: [
                        {
                            pattern: /{image_name}/g,
                            replacement: config.imageName
                        },
                        {
                            pattern: /{app_start_point}/g,
                            replacement: config.appStartPoint
                        }
                    
                    ]
                }
            }        
        },
        shell: {
            makeDir: {
                    command: 'chmod 755 ./scripts/*'
                }
        }
    });

  // These plugins provide necessary tasks. 
  grunt.loadNpmTasks('grunt-string-replace');
  grunt.loadNpmTasks('grunt-shell');
 
  // Default task. 
  grunt.registerTask('default', ['string-replace','shell']);
}