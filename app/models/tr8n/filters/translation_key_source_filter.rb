class Tr8n::TranslationKeySourceFilter < Tr8n::BaseFilter

  def initialize(identity)
    super('Tr8n::TranslationKeySource', identity)
  end

  def default_order
    'created_at'
  end
  
  def default_order_type
    'desc'
  end
  
  def self.load_predefined_filter(profile, filter_name)
    filter = super(profile, filter_name)
    filter.empty? ? nil : filter
  end
  
end