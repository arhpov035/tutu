class AddTrainIdToWagons < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :wagons, :train
  end
end
