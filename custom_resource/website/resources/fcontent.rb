property :path, String
property :content, String
property :mode, String

load_current_value do |new_resource|
  if ::File.exist?(new_resource.path)
    content IO.read(new_resource.path)
    mode ::File.stat(new_resource.path).mode
  end
end

action :create do
  converge_if_changed :content do
    IO.write(new_resource.path, new_resource.content)
  end
  converge_if_changed :mode do
    ::File.chmod(new_resource.mode, new_resource.path)
  end
end
