class Contact < ApplicationRecord
  belongs_to :kindness

  def author
    'João Phelippe'
  end

  def kind_description
    kindness.description
  end

  def as_json(_options = {})
    super(
      root: true,
      methods: %i[author kind_description]
      # include: {kindness: {only: :description} }
    )
  end
end
 