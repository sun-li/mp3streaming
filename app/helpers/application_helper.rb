module ApplicationHelper
  BUCKET = 'sunli.streaming'

  def download_url_for(song_key)
    AWS::S3::S3Object.url_for(song_key, BUCKET, :authenticated => false)
  end
end
