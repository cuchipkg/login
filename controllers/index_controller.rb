class IndexController < ApplicationController
	def index_complete
		@check = Account.where("name = ?",params[:taikhoan]).take
		if @check.password == params[:matkhau]
			@msg = "dang nhap thanh cong"
		else
			@msg = "sai mat khau"
		end
	end
	def index_page

	end
	def create_account_complete
		@gtk = params[:taikhoan]
		@gmk = params[:matkhau]
		@gxtmk = params[:xtmatkhau]
		if @gmk == @gxtmk 
			Account.create(name: @gtk, password: @gxtmk)
			@msg = "Dang ky tai khoan thanh cong"
		else
			@msg = "Sai Mat Khau Xac Thuc"
		end
	end
end
