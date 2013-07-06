Dir.glob(File.expand_path('../rails/*.rb', __FILE__)) do |path|
  require(path)
end
