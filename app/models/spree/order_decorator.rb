Spree::Order.class_eval do
	checkout_flow do
        go_to_state :address
        # go_to_state :delivery <== remove this line
        go_to_state :payment, :if => lambda { |order| order.payment_required? }
        go_to_state :confirm, :if => lambda { |order| order.confirmation_required? }
        go_to_state :complete
        remove_transition :from => :delivery, :to => :confirm
    end

    def ensure_available_shipping_rates
        true
    end
end

Spree::Address.class_eval do
  def require_zipcode?
      false
  end
  def require_last_name?
      false
  end
end
