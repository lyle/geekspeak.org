ActiveAdmin.register Episode do
  before_filter do
    Episode.class_eval do
        def to_param
          id.to_s
        end
      end
  end
end
