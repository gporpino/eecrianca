class CreateEnrollmentsServices < ActiveRecord::Migration
  def change
    create_table :enrollments_services, id: false do |t|
      t.belongs_to :enrollment, index: true
      t.belongs_to :service, index: true
    end
  end
end
