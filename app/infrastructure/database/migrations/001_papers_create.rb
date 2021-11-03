# frozen_string_literal: true

require 'sequel'

Sequel.migration do
  change do
    create_table(:papers) do
      primary_key :id

      String      :eid, unique: true, null: false
      String      :title, unique: true, null: false
      String      :paper_link, unique: true, null: false
      String      :citedby_link, unique: true, null: false
      String      :publication_name, unique: true, null: true
      String      :date, unique: true, null: true
      String      :organization, unique: true, null: true
      String      :author, unique: true, null: true

      Integer     :citedby

      DateTime :created_at
      DateTime :updated_at
    end
  end
end