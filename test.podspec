Pod::Spec.new do |s|
  s.name     = 'POD_NAME'
  s.version  = '1.0.0'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.summary  = 'Example of pod which installs a run script into the Xcode project (first target)'
  s.homepage = 'https://github.com/phatblat/POD_NAME'
  s.authors  = { 'Ben Chatelain' => 'benchatelain@gmail.com' }
  s.source   = { :git => 'https://github.com/phatblat/POD_NAME.git', :tag => s.version.to_s }

  s.ios.deployment_target = '6.0'
  s.requires_arc    = true
  s.source_files    = "Classes/**/*.{h,m}"
  s.preserve_paths  = 'run_script.sh', 'install_run_script.rb'

  s.prepare_command = "ruby install_run_script.rb '#{path}'"
end