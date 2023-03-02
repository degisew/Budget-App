class TransactsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @all_transactions = @category.all_transacts
  end

  def show
    @category = Category.find(params[:category_id])
    @trans = @category.all_transacts.find_by(id: params[:id])
  end

  def new
    @category = current_user.all_categories.find(params[:category_id])
    @transaction = Transact.new
  end

  def create
    @new_transaction = Transact.new(author: current_user, name: params[:transact][:name],
                                    amount: params[:transact][:amount])
    @new_transaction.categories << Category.find(params[:transact][:category])
    if @new_transaction.save
      flash[:notice] = 'Transaction successfully added.'
      redirect_to user_category_transacts_path(current_user, params[:category_id])
    else
      flash.now[:alert] = 'Oops, failed to add new transaction.'
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @trans = Transact.find_by(id: params[:id])
    if @trans.destroy
      flash[:notice] = 'transaction was successfully destroyed.'
    else
      flash[:alert] = 'try again.'
    end
  end
end
