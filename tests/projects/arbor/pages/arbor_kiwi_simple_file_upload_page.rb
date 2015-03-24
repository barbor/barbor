# encoding: utf-8

class ArborKiwiSimpleFileUploadPage
  include PageObject

  file_field :simple_file, :id => 'edit-employee-upload-upload'
  # edit-field-arquivo-simples-und-0-upload
  # file_field :simple_file, :id => 'edit-field-arquivo-simples-und-0-upload'

  def simple_file_upload simple_file_upload_file
    absolut_path_file =  Dir.pwd.gsub(/\.tests/, 'tests/files') + '/' + simple_file_upload_file

    self.simple_file = absolut_path_file
  end
end
