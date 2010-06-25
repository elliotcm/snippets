module Snippets
  module DSL
    ## Too verbose:
    # post = Post.create(:title => 'Example post')
    # if post
    #   ...
    # end
    #
    ## Too unintuitive:
    # if post = Post.create(:title => 'Example post')
    #   ...
    # end
    #
    ## Telegraphs intent and provides lexical scoping:
    # given Post.create(:title => 'Example post') do |post|
    #   ...
    # end
    def given(conditional_object)
      yield conditional_object unless conditional_object.nil?
    end
  end
end
