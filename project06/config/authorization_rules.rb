authorization do
  role :admin do
    has_permission_on [:games, :roles, :users], :to => :manage
  end
  
  role :member do
    has_permission_on :games, :to => [:index, :show, :new, :create, :update, :destroy]
    has_permission_on :users, :to => [:edit, :update, :read]
  end
  
  role :guest do
    has_permission_on :users, :to => :create
    has_permission_on :games, :to => [:index, :show]
    has_permission_on :roles, :to => :read
    has_permission_on :permissions, :to => [:read, :create]
  end
end

privileges do
  privilege :manage, :includes => [:create, :read, :update, :delete]
  privilege :read, :includes => [:index, :show]
  privilege :create, :includes => :new
  privilege :update, :includes => :edit
  privilege :delete, :includes => :destroy
end