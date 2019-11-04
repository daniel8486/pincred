class Publication < ApplicationRecord
    mount_uploaders :documents, DocumentUploader
end
