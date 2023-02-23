class User < ActiveRecord::Base
      def change
          create_table :users do |t|
            t.string :name
            t.timestamps
          end
        end
      end
end

class AddUserIdToReviews < ActiveRecord::Migration[6.1]
    def change
      add_column :reviews, :user_id, :integer
    end
  end
  