class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :tc, :null => false, :limit => 8
      t.string  :first_name, :null => false
      t.string  :last_name, :null => false
      t.string  :email, :null => false
      t.string  :password_digest, :null => false
      t.string  :phone_number, :null => false
      t.string  :image
      t.string  :gender, :null => false
      t.date    :birthday, :null => false
      t.integer :status, :default => 2
      t.integer :point
      t.string  :address

      t.timestamps
    end
  end
end
