require 'fileutils'

FileUtils.copy_file('t20.txt', 'new.txt')

files_to_delete = ["t20.txt", "new.txt"]
FileUtils.rm(files_to_delete)

