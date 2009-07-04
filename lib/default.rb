# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

include Nanoc::Helpers::LinkTo

def generate_docs_from_source(name)
  doc_path = File.join(@config[:flapjack_src], 'doc')
  filename = File.join(doc_path, "#{name.upcase}.md")
  if File.exists?(filename)
    output = `rdiscount #{filename}`
    Haml::Helpers::find_and_preserve(output, ["pre"])
  else
    "<span style='color: red'>Error: #{name.upcase}.md doesn't exist in #{doc_path}</span>"
  end
end
