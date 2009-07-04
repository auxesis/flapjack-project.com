# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

include Nanoc::Helpers::LinkTo

def generate_docs_from_source(name)
  output = `rdiscount #{File.join(File.dirname(__FILE__), '..', 'flapjack', 'doc', "#{name.upcase}.md")}`
  Haml::Helpers::find_and_preserve(output, ["pre"])
end
