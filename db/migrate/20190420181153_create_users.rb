class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :before_save {self.email = email.downcase}
      t.timestamps
    end
  end
end
