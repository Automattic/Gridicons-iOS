SWIFTGEN_VERSION="6.1.0"

require 'fileutils'
require 'tmpdir'
require 'rake/clean'
PROJECT_DIR = File.expand_path(File.dirname(__FILE__))

task default: %w[gen]

desc "Install required dependencies"
task :dependencies => %w[dependencies:check]

namespace :dependencies do
  task :check => %w[gen:check]

  namespace :gen do

    task :check do
      if swiftgen_needs_install
        dependency_failed("SwiftGen")
        Rake::Task["dependencies:gen:install"].invoke
      end
    end

    task :install do
      puts "Installing SwiftGen #{SWIFTGEN_VERSION} into #{swiftgen_path}"
      Dir.mktmpdir do |tmpdir|
        zipfile = "#{tmpdir}/swiftgen-#{SWIFTGEN_VERSION}.zip"
        sh "curl --fail --location -o #{zipfile} https://github.com/SwiftGen/SwiftGen/releases/download/#{SWIFTGEN_VERSION}/swiftgen-#{SWIFTGEN_VERSION}.zip || true"
        if File.exists?(zipfile)
          zipdir = "#{tmpdir}/swiftgen-#{SWIFTGEN_VERSION}"
          sh "unzip -q #{zipfile} -d #{zipdir}"
          Dir.chdir(zipdir) do
            puts "Copying SwiftGen #{SWIFTGEN_VERSION} into #{swiftgen_path}"
            FileUtils.remove_entry_secure(swiftgen_path) if Dir.exist?(swiftgen_path)
            FileUtils.mkdir_p("#{swiftgen_path}")
            FileUtils.cp_r("#{zipdir}/lib", "#{swiftgen_path}")
            FileUtils.cp_r("#{zipdir}/bin", "#{swiftgen_path}")
          end
        end
      end
    end
    CLOBBER << "vendor/swiftgen"
  end

end

CLOBBER << "vendor"

desc "Regenerates the master Gridicon enum from PDF assets"
task :gen => %w[dependencies:gen:check] do
  swiftgen %w[xcassets -p Gridicons.stencil Gridicons/Gridicons/Gridicons.xcassets]
  puts "Done!"
end

def swiftgen_path
    "#{PROJECT_DIR}/vendor/swiftgen"
end

def swiftgen(args)
  args = [swiftgen_bin] + args
  sh(*args.join(" ") + " > Gridicons/Gridicons/GridiconsGenerated.swift")
end

def swiftgen_bin
    "#{swiftgen_path}/bin/swiftgen"
end

def swiftgen_needs_install
  return true unless File.exist?(swiftgen_bin)
  installed_version = `"#{swiftgen_bin}" --version | awk '{print $2}'`.chomp
  installed_version.slice!(0)
  return (installed_version != SWIFTGEN_VERSION)
end

def dependency_failed(component)
  msg = "#{component} dependencies missing or outdated. "
  if ENV['DRY_RUN']
    msg += "Run rake dependencies to install them."
    fail msg
  else
    msg += "Installing..."
    puts msg
  end
end
