Spree::Admin::LineItemsController.class_eval do
  prepend_before_filter :load_order, except: :index

  respond_to :json

  def index
    respond_to do |format|
      format.json do
        render json: editable_orders.map(&:line_items).flatten, each_serializer: Api::Admin::LineItemSerializer
      end
    end
  end

  private

    def load_order
      @order = Spree::Order.find_by_number!(params[:order_id])
      authorize! :update, @order
    end
end
