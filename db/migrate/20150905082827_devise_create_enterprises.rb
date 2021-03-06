class DeviseCreateEnterprises < ActiveRecord::Migration
  def change
    create_table(:enterprises) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
       t.string   :confirmation_token
       t.datetime :confirmed_at
       t.datetime :confirmation_sent_at
       t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

	#extra data
  t.string :name
	t.string :nit
	t.string :city
	t.string :departament
	t.string :direction
	t.string :phone
	t.string :fax
	t.string :web_site
	t.string :ciiu
	t.string :rep_legal
	t.string :date
	t.string :duns
	t.string :country
  #FriendlyId
  t.string  :nickname, :null => false
  t.string  :slug, :null => false

      t.timestamps null: false
    end

    add_index :enterprises, :email,                unique: true
    add_index :enterprises, :reset_password_token, unique: true
    add_index :enterprises, :slug,                 unique: true
    # add_index :enterprises, :confirmation_token,   unique: true
    # add_index :enterprises, :unlock_token,         unique: true
  end
end
