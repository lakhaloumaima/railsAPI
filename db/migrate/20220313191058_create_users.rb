class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :lastname
      t.string :firstname
      t.string :email
      t.string :adresse
      t.date :birthday
      t.string :password_digest
      t.string :sexe
      t.float :rating
      t.integer :phone
      t.string :job
      t.string :description
      t.string :photo
      t.boolean :isadmin  , :default => false, :null => false
      t.boolean :isclient ,  :default => false, :null => false
      t.boolean :isfreelancer  , :default => false, :null => false
      t.integer :earning
      t.timestamps
    end
  end
end
