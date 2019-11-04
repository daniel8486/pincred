class Img < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
end
