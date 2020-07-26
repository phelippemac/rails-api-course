class Contact < ApplicationRecord
  belongs_to :kindness
  def author
    'João Phelippe'
  end
end
