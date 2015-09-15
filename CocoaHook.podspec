Pod::Spec.new do |s|
  s.name     = 'CocoaHook'
  s.version  = '1.0.0'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.summary  = 'Example of pod which installs a run script into the Xcode project'
  s.homepage = 'https://github.com/emilienh/CocoaHook'
  s.authors  = { 'Emilien Huet' => 'huet.emilien@mac.com' }
  s.source   = { :git => 'https://github.com/emilienh/CocoaHook.git', :tag => s.version.to_s }

  s.ios.deployment_target = '6.0'
  s.requires_arc    = true
  s.source_files    = "*.{h,m}"
  s.preserve_paths  = 'run_script.sh', 'install_run_script.rb'

  s.prepare_command = "ruby install_run_script.rb '#{path}'"
end