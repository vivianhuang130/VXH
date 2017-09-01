class Picture < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_attached_file :url,
                    styles: {medium: '500x500#', thumb: '100x100#'},
                    storage: :s3,
                    url: ':s3_domain_url',
                    path: '/:class/:id_partition/:style/:filename',
                    s3_region: 'us-west-2',
                    s3_credentials: Proc.new{ |a| a.instance.s3_credentials }

def s3_credentials
  {
    bucket: ENV['AWS_BUCKET'],
    access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
  }
end

validates_attachment_content_type :url, content_type: /\Aimage\/.*\Z/
end
