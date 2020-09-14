# frozen_string_literal: true

class DeviseCreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :nom, default: ""
      t.string :prenom, default: ""
      t.string :telephone, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.inet     :current_sign_in_ip
      # t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :clients, :email,                unique: true
    add_index :clients, :reset_password_token, unique: true
    add_index :clients, :nom
    add_index :clients, :prenom
    add_index :clients, :telephone,            unique: true
    # add_index :clients, :confirmation_token,   unique: true
    # add_index :clients, :unlock_token,         unique: true
    validates_presence_of :nom, message: "veuiller indiquer Nom"
    validates_presence_of :prenom, message: "veuiller indiquer votre prenom"
    validates_presence_of :telephone, message: "veiller indiquer votre numero de telephone"
  end
end
