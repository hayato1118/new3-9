class OrdersController < ApplicationController
before_action :authenticate_user!
 layout 'not_modal'

  def pay
      Payjp.api_key = 'sk_test_b41540fd792cd864c8590f70'
      charge = Payjp::Charge.create(
      :amount => 3500,
      :card => params['payjp-token'],
      :currency => 'jpy',
      )
      redirect_to root_path
  end

  # def show
  #     @book_orders = BookOrder.find(book_order_params[:id])
  # end

  def new
     @order = Order.new
  end

  def create
        #オーダー保存
        @order = Order.new(order_params)
        @order.user_id = current_user.id
        # if オーダーが保存できたら
        if @order.save
        # book_cartsを持ってくる。（アソシエーションでuserから頑張る）
        book_carts = current_user.cart.book_carts

        book_carts.each do |book_cart|
          
          book_order = BookOrder.new

          book_order.book_id = book_cart.book_id
          book_order.order_id = @order.id
        
          book_order.save
          # book_cartは処理が終わったら削除
          book_cart.destroy
        end
      end
      redirect_to root_path
  end




  private
    def order_params
    params.require(:order).permit(:name , :mobile , :user_id, :price, :quantity, :zip, :state, :city, :street,:freight, :shipping_method, :phone_number, :email)
    end

    # def ブックオーダーのストロングパラメータ
    def book_order_params
      params.require(:book_order).permit(:book_id, :order_id)
    end
end