class GemfileGenerator
  attr_reader :gemfile_buffer
  def initialize(gem_descs)
    @gem_desc = gem_descs
  end

  def generate
    @gemfile_buffer = "source 'https://rubygems.org'"
    @gem_desc.each do |desc|
      @gemfile_buffer << "\ngem '#{desc.name}'"
      @gemfile_buffer << ", '#{desc.version}'" if desc.version.present?
    end
    @gemfile_buffer
  end
end
