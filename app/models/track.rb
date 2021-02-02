class Track < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  with_options presence: true do
    validates :track_name1, if: -> { track_name1.present? }
    validates :track_file1, if: -> { track_name1.present? }
    validates :track_name2, if: -> { track_file2.present? }
    validates :track_file2, if: -> { track_name2.present? }
    validates :track_name3, if: -> { track_file3.present? }
    validates :track_file3, if: -> { track_name3.present? }
    validates :track_name4, if: -> { track_file4.present? }
    validates :track_file4, if: -> { track_name4.present? }
    validates :track_name5, if: -> { track_file5.present? }
    validates :track_file5, if: -> { track_name5.present? }
    validates :track_name6, if: -> { track_file6.present? }
    validates :track_file6, if: -> { track_name6.present? }
    validates :track_name7, if: -> { track_file7.present? }
    validates :track_file7, if: -> { track_name7.present? }
    validates :track_name8, if: -> { track_file8.present? }
    validates :track_file8, if: -> { track_name8.present? }
    validates :track_name9, if: -> { track_file9.present? }
    validates :track_file9, if: -> { track_name9.present? }
    validates :track_name10, if: -> { track_file10.present? }
    validates :track_file10, if: -> { track_name10.present? }
    validates :track_name11, if: -> { track_file11.present? }
    validates :track_file11, if: -> { track_name11.present? }
    validates :track_name12, if: -> { track_file12.present? }
    validates :track_file12, if: -> { track_name12.present? }
    validates :track_name13, if: -> { track_file13.present? }
    validates :track_file13, if: -> { track_name13.present? }
    validates :track_name14, if: -> { track_file14.present? }
    validates :track_file14, if: -> { track_name14.present? }
    validates :track_name15, if: -> { track_file15.present? }
    validates :track_file15, if: -> { track_name15.present? }
    validates :track_name16, if: -> { track_file16.present? }
    validates :track_file16, if: -> { track_name16.present? }
    validates :track_name17, if: -> { track_file17.present? }
    validates :track_file17, if: -> { track_name17.present? }
    validates :track_name18, if: -> { track_file18.present? }
    validates :track_file18, if: -> { track_name18.present? }
    validates :track_name19, if: -> { track_file19.present? }
    validates :track_file19, if: -> { track_name19.present? }
    validates :track_name20, if: -> { track_file20.present? }
    validates :track_file20, if: -> { track_name20.present? }
  end

  mount_uploader :track_file1, AudiofileUploader
  mount_uploader :track_file2, AudiofileUploader
  mount_uploader :track_file3, AudiofileUploader
  mount_uploader :track_file4, AudiofileUploader
  mount_uploader :track_file5, AudiofileUploader
  mount_uploader :track_file6, AudiofileUploader
  mount_uploader :track_file7, AudiofileUploader
  mount_uploader :track_file8, AudiofileUploader
  mount_uploader :track_file9, AudiofileUploader
  mount_uploader :track_file10, AudiofileUploader
  mount_uploader :track_file11, AudiofileUploader
  mount_uploader :track_file12, AudiofileUploader
  mount_uploader :track_file13, AudiofileUploader
  mount_uploader :track_file14, AudiofileUploader
  mount_uploader :track_file15, AudiofileUploader
  mount_uploader :track_file16, AudiofileUploader
  mount_uploader :track_file17, AudiofileUploader
  mount_uploader :track_file18, AudiofileUploader
  mount_uploader :track_file19, AudiofileUploader
  mount_uploader :track_file20, AudiofileUploader

  validate :audio_content_type

  def audio_content_type
    extension = ['audio/wav', 'audio/mpeg']
    errors.add(:track_file1, '拡張子が間違っています') unless track_file1.content_type.in?(extension)
    errors.add(:track_file2, '拡張子が間違っています') unless track_file2.content_type.in?(extension)
    errors.add(:track_file3, '拡張子が間違っています') unless track_file3.content_type.in?(extension)
    errors.add(:track_file4, '拡張子が間違っています') unless track_file4.content_type.in?(extension)
    errors.add(:track_file5, '拡張子が間違っています') unless track_file5.content_type.in?(extension)
    errors.add(:track_file6, '拡張子が間違っています') unless track_file6.content_type.in?(extension)
    errors.add(:track_file7, '拡張子が間違っています') unless track_file7.content_type.in?(extension)
    errors.add(:track_file8, '拡張子が間違っています') unless track_file8.content_type.in?(extension)
    errors.add(:track_file9, '拡張子が間違っています') unless track_file9.content_type.in?(extension)
    errors.add(:track_file10, '拡張子が間違っています') unless track_file10.content_type.in?(extension)
    errors.add(:track_file11, '拡張子が間違っています') unless track_file11.content_type.in?(extension)
    errors.add(:track_file12, '拡張子が間違っています') unless track_file12.content_type.in?(extension)
    errors.add(:track_file13, '拡張子が間違っています') unless track_file13.content_type.in?(extension)
    errors.add(:track_file14, '拡張子が間違っています') unless track_file14.content_type.in?(extension)
    errors.add(:track_file15, '拡張子が間違っています') unless track_file15.content_type.in?(extension)
    errors.add(:track_file16, '拡張子が間違っています') unless track_file16.content_type.in?(extension)
    errors.add(:track_file17, '拡張子が間違っています') unless track_file17.content_type.in?(extension)
    errors.add(:track_file18, '拡張子が間違っています') unless track_file18.content_type.in?(extension)
    errors.add(:track_file19, '拡張子が間違っています') unless track_file19.content_type.in?(extension)
    errors.add(:track_file20, '拡張子が間違っています') unless track_file20.content_type.in?(extension)
  end

  
end
