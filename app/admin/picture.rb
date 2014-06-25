ActiveAdmin.register Picture do
	show do |ad|
      attributes_table do
	  image_tag(ad.avatar.url(:thumb))
    end
  end
end