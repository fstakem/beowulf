
# Variables
seed_file_dirs = [ 'test' ]
debug = true

# Load the files in the seeds directory
def find_files_to_load(seed_file_dirs)
  seed_files = {}

  seed_file_dirs.each do |file_dir|
    seed_files[file_dir] = []
    all_files = Dir[File.join(Rails.root, 'db', 'seeds', file_dir, '*.rb')].sort

    all_files.each do |filename|
      seed_files[file_dir].push(filename)
    end
  end

  return seed_files
end

def load_files_into_db(seed_files, debug)
  seed_files.each do |key, values|
    if !values.empty?
      if debug
        puts "Files set: " + key.to_s
      end

      values.each do |filename|
        if debug
          puts "  " + filename.to_s
        end

        load filename
      end
    end
  end
end


# Main
seed_files = find_files_to_load(seed_file_dirs)
load_files_into_db(seed_files, debug)

