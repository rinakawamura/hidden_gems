class AddDateToVisits < ActiveRecord::Migration[5.2]
  def change
    add_column :visits, :visit_date, :date
  end
end
