class Strip < ApplicationRecord

  before_save :set_slug_unless_already_there
  before_save :set_published_at_if_needed

  private
    def set_slug_unless_already_there
      self.slug = self.title.parameterize
    end

    def set_published_at_if_needed
      if self.published?
        self.published_at ||= Time.now.utc
      end
    end
end
