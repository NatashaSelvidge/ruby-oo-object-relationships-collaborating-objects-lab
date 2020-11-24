class MP3Importer
attr_accessor :path
@@all = []
  def initialize(file_path)
    @path = file_path
    @@all << self
  end 

    def files
        @files ||= Dir.glob("#{path}/*.mp3").collect { |f| f.gsub("#{path}/", "") }
    end

    def import
      files.each {|filename| Song.new_by_filename(filename)}
    end 

end 

#files found in stackoverflow
# Dir.glob("#{path}/*.yml").each_with_object({}) do |filename,hsh|
#    hsh[File.basename(filename,'.yml')] = filename