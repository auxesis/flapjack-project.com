# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

include Nanoc::Helpers::LinkTo

def generate_docs_from_source(name)
  doc_path = File.join(@config[:flapjack_src], 'doc')
  output = `rdiscount #{File.join(doc_path, "#{name.upcase}.md")}`
  Haml::Helpers::find_and_preserve(output, ["pre"])
end
