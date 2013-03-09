desc 'Creates SHA512 checksums for all built Gems'
task :checksum do
  checksums = File.expand_path('../../checksum', __FILE__)
  pattern   = File.expand_path('../../pkg/*.gem', __FILE__)

  Dir.glob(pattern).each do |path|
    name     = File.basename(path) + '.sha512'
    checksum = Digest::SHA512.new.hexdigest(File.read(path))

    File.open(File.join(checksums, name), 'w') do |handle|
      handle.write(checksum)
    end
  end
end
