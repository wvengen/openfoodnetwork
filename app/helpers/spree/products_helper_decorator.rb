module Spree
  ProductsHelper.class_eval do
    # Return the price of the variant
    def variant_price_diff(variant)
      "(#{Spree::Money.new(variant.price)})"
    end
  end
end
