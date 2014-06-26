ActiveAdmin.register Picture do

	permit_params :album_id, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at
	show do |ad|
      attributes_table do
	  image_tag(ad.avatar.url(:thumb))
    end
  end
end