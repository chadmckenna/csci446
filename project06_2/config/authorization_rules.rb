authorization do
  role :guest do
    #has_permission_on :games, :to => :read
  end
  
  role :member do
    #has_permission_on :games, :to => :read
    has_permission_on :users, :to => :manage
  end
  
  role :admin do
    has_permission_on :users, :to => :manage
    has_permission_on :roles, :to => :manage
    #has_permission_on :games, :to => :manage
  end
end

privileges do
  privilege :manage, :includes => [:create, :read, :update, :delete]
  privilege :read, :includes => [:index, :show]
  privilege :create, :includes => :new
  privilege :update, :includes => :edit
  privilege :delete, :includes => :destroy
end