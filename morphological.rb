# -*- coding: utf-8 -*-
require 'MeCab'

module NaiveBayes
  class Morphological
    def split(sentence)
      mecab = MeCab::Tagger.new
      node  = mecab.parseToNode(sentence)

      result = []
      until node.nil?
        result << node.surface.force_encoding('utf-8')
        node = node.next
      end
      
      result
    end
  end
end
