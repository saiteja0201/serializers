class RenamePasswordToPasswordDigitInuserlist < ActiveRecord::Migration[8.0]
  def change
    rename_column :Userlist, :password, :password_digit
  end
end
