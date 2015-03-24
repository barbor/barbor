# encoding: utf-8

class ArborSimpleFileUploadPage
  include PageObject

  # direct_url BASE_URL + 'node/add/article'

  file_field :simple_file, :id => 'edit-field-arquivo-simples-und-0-upload'

  # file_field_value_set(:id => 'edit-field-arquivo-simples-und-0-upload', '/home/rodrigo/teste.txt')

#   direct_url BASE_URL + 'user'
#
#   text_field :user_name_field, :id => 'edit-name'
#   text_field :user_pass_field, :id => 'edit-pass'
# #  button :login, :value => 'Entrar'
#   button :login, :name => 'op'

  def simple_file_upload simple_file_upload_file
    # puts simple_file_upload_file
    self.simple_file = simple_file_upload_file
    # puts simple_file.inspect

    # file_field_value_set(simple_file, simple_file_upload_file)
    # puts simple_file

    # simple_file='/home/rodrigo/teste.txt'

    # self.user_name_field = user_name
    # self.user_pass_field = user_pass
    # login
  end
end
