class Strip < ApplicationRecord

  before_save :set_slug_unless_already_there

  private
    def set_slug_unless_already_there
      self.slug = self.title.parameterize
    end
end
