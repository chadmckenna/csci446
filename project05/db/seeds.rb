# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
author_attributes = [
                      {
                        :author => 'Chad McKenna'
                      },
                      {
                        :author => 'John Smith'
                      },
                      {
                        :author => 'Stephen Colbert'
                      }, 
                      {
                        :author => 'Rawnald Gregory Erikson the Second'
                      }
                    ]

article_attributes =  [
                        {
                          :title => 'Test Title',
                          :author_id => 1,
                          :body => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eleifend condimentum magna nec interdum. Quisque ut enim vel felis sollicitudin ornare nec at leo. Mauris sit amet mauris vitae eros blandit facilisis scelerisque eget nisl. Praesent sed metus id nulla aliquam pulvinar tincidunt ac nibh. Quisque a ultricies lectus. Mauris sed neque et leo aliquet placerat quis id arcu. Integer dolor nisi, aliquam et euismod sed, dignissim at turpis. Etiam molestie risus non enim eleifend in convallis nunc porttitor. Sed lectus ante, faucibus vel dapibus sit amet, tincidunt non nulla. Vivamus quam sem, placerat nec egestas non, dapibus non diam. Suspendisse potenti. Phasellus eleifend elit eu sem imperdiet tempus blandit purus tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod consequat ipsum, ut mollis arcu venenatis sed. Nunc dictum dolor sit amet mauris elementum rhoncus.

                          Phasellus hendrerit feugiat massa ac aliquet. Suspendisse porta eros sit amet odio pretium in pretium dolor tincidunt. Ut feugiat commodo faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam vel leo in nunc pellentesque tincidunt id sit amet libero. In hac habitasse platea dictumst. Nunc nec felis vel libero varius elementum ut pretium metus. Integer iaculis, felis at sodales tristique, eros quam dignissim dui, sed ultricies est tortor id tortor. Mauris a euismod ligula. Quisque ut orci ut leo placerat tincidunt ultrices ut mi. Aenean varius mollis velit, a sodales augue congue ac. In quis sapien at risus porta vehicula ac nec justo. Nulla facilisi. Proin ullamcorper, nulla sed dignissim placerat, lacus est euismod leo, ac mollis erat sapien vel orci.

                          Mauris tincidunt fermentum dapibus. Nulla mi dolor, egestas adipiscing elementum id, mollis non erat. Vestibulum a nunc dolor. Fusce nec massa lacus. Phasellus rutrum, nisl id aliquet ultrices, velit diam tincidunt quam, blandit facilisis quam arcu ac nisi. Fusce neque risus, venenatis sit amet tempor sed, euismod at dui. Donec id diam orci. Pellentesque in risus et sem blandit aliquam sodales non leo. Donec commodo viverra ligula nec elementum. Phasellus justo erat, posuere sit amet volutpat id, condimentum posuere felis.'
                         },
                         {
                           :title => 'Test Title 2',
                           :author_id => 3,
                           :body => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eleifend condimentum magna nec interdum. Quisque ut enim vel felis sollicitudin ornare nec at leo. Mauris sit amet mauris vitae eros blandit facilisis scelerisque eget nisl. Praesent sed metus id nulla aliquam pulvinar tincidunt ac nibh. Quisque a ultricies lectus. Mauris sed neque et leo aliquet placerat quis id arcu. Integer dolor nisi, aliquam et euismod sed, dignissim at turpis. Etiam molestie risus non enim eleifend in convallis nunc porttitor. Sed lectus ante, faucibus vel dapibus sit amet, tincidunt non nulla. Vivamus quam sem, placerat nec egestas non, dapibus non diam. Suspendisse potenti. Phasellus eleifend elit eu sem imperdiet tempus blandit purus tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod consequat ipsum, ut mollis arcu venenatis sed. Nunc dictum dolor sit amet mauris elementum rhoncus.

                           Phasellus hendrerit feugiat massa ac aliquet. Suspendisse porta eros sit amet odio pretium in pretium dolor tincidunt. Ut feugiat commodo faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam vel leo in nunc pellentesque tincidunt id sit amet libero. In hac habitasse platea dictumst. Nunc nec felis vel libero varius elementum ut pretium metus. Integer iaculis, felis at sodales tristique, eros quam dignissim dui, sed ultricies est tortor id tortor. Mauris a euismod ligula. Quisque ut orci ut leo placerat tincidunt ultrices ut mi. Aenean varius mollis velit, a sodales augue congue ac. In quis sapien at risus porta vehicula ac nec justo. Nulla facilisi. Proin ullamcorper, nulla sed dignissim placerat, lacus est euismod leo, ac mollis erat sapien vel orci.

                           Mauris tincidunt fermentum dapibus. Nulla mi dolor, egestas adipiscing elementum id, mollis non erat. Vestibulum a nunc dolor. Fusce nec massa lacus. Phasellus rutrum, nisl id aliquet ultrices, velit diam tincidunt quam, blandit facilisis quam arcu ac nisi. Fusce neque risus, venenatis sit amet tempor sed, euismod at dui. Donec id diam orci. Pellentesque in risus et sem blandit aliquam sodales non leo. Donec commodo viverra ligula nec elementum. Phasellus justo erat, posuere sit amet volutpat id, condimentum posuere felis.'
                         },
                         {
                           :title => 'Test Title 3',
                           :author_id => 2,
                           :body => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eleifend condimentum magna nec interdum. Quisque ut enim vel felis sollicitudin ornare nec at leo. Mauris sit amet mauris vitae eros blandit facilisis scelerisque eget nisl. Praesent sed metus id nulla aliquam pulvinar tincidunt ac nibh. Quisque a ultricies lectus. Mauris sed neque et leo aliquet placerat quis id arcu. Integer dolor nisi, aliquam et euismod sed, dignissim at turpis. Etiam molestie risus non enim eleifend in convallis nunc porttitor. Sed lectus ante, faucibus vel dapibus sit amet, tincidunt non nulla. Vivamus quam sem, placerat nec egestas non, dapibus non diam. Suspendisse potenti. Phasellus eleifend elit eu sem imperdiet tempus blandit purus tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod consequat ipsum, ut mollis arcu venenatis sed. Nunc dictum dolor sit amet mauris elementum rhoncus.

                           Phasellus hendrerit feugiat massa ac aliquet. Suspendisse porta eros sit amet odio pretium in pretium dolor tincidunt. Ut feugiat commodo faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam vel leo in nunc pellentesque tincidunt id sit amet libero. In hac habitasse platea dictumst. Nunc nec felis vel libero varius elementum ut pretium metus. Integer iaculis, felis at sodales tristique, eros quam dignissim dui, sed ultricies est tortor id tortor. Mauris a euismod ligula. Quisque ut orci ut leo placerat tincidunt ultrices ut mi. Aenean varius mollis velit, a sodales augue congue ac. In quis sapien at risus porta vehicula ac nec justo. Nulla facilisi. Proin ullamcorper, nulla sed dignissim placerat, lacus est euismod leo, ac mollis erat sapien vel orci.

                           Mauris tincidunt fermentum dapibus. Nulla mi dolor, egestas adipiscing elementum id, mollis non erat. Vestibulum a nunc dolor. Fusce nec massa lacus. Phasellus rutrum, nisl id aliquet ultrices, velit diam tincidunt quam, blandit facilisis quam arcu ac nisi. Fusce neque risus, venenatis sit amet tempor sed, euismod at dui. Donec id diam orci. Pellentesque in risus et sem blandit aliquam sodales non leo. Donec commodo viverra ligula nec elementum. Phasellus justo erat, posuere sit amet volutpat id, condimentum posuere felis.'
                         },
                         {
                           :title => 'Test Title 4',
                           :author_id => 1,
                           :body => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eleifend condimentum magna nec interdum. Quisque ut enim vel felis sollicitudin ornare nec at leo. Mauris sit amet mauris vitae eros blandit facilisis scelerisque eget nisl. Praesent sed metus id nulla aliquam pulvinar tincidunt ac nibh. Quisque a ultricies lectus. Mauris sed neque et leo aliquet placerat quis id arcu. Integer dolor nisi, aliquam et euismod sed, dignissim at turpis. Etiam molestie risus non enim eleifend in convallis nunc porttitor. Sed lectus ante, faucibus vel dapibus sit amet, tincidunt non nulla. Vivamus quam sem, placerat nec egestas non, dapibus non diam. Suspendisse potenti. Phasellus eleifend elit eu sem imperdiet tempus blandit purus tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod consequat ipsum, ut mollis arcu venenatis sed. Nunc dictum dolor sit amet mauris elementum rhoncus.

                           Phasellus hendrerit feugiat massa ac aliquet. Suspendisse porta eros sit amet odio pretium in pretium dolor tincidunt. Ut feugiat commodo faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam vel leo in nunc pellentesque tincidunt id sit amet libero. In hac habitasse platea dictumst. Nunc nec felis vel libero varius elementum ut pretium metus. Integer iaculis, felis at sodales tristique, eros quam dignissim dui, sed ultricies est tortor id tortor. Mauris a euismod ligula. Quisque ut orci ut leo placerat tincidunt ultrices ut mi. Aenean varius mollis velit, a sodales augue congue ac. In quis sapien at risus porta vehicula ac nec justo. Nulla facilisi. Proin ullamcorper, nulla sed dignissim placerat, lacus est euismod leo, ac mollis erat sapien vel orci.

                           Mauris tincidunt fermentum dapibus. Nulla mi dolor, egestas adipiscing elementum id, mollis non erat. Vestibulum a nunc dolor. Fusce nec massa lacus. Phasellus rutrum, nisl id aliquet ultrices, velit diam tincidunt quam, blandit facilisis quam arcu ac nisi. Fusce neque risus, venenatis sit amet tempor sed, euismod at dui. Donec id diam orci. Pellentesque in risus et sem blandit aliquam sodales non leo. Donec commodo viverra ligula nec elementum. Phasellus justo erat, posuere sit amet volutpat id, condimentum posuere felis.'
                          },
                          {
                            :title => 'Test Title 5',
                            :author_id => 4,
                            :body => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eleifend condimentum magna nec interdum. Quisque ut enim vel felis sollicitudin ornare nec at leo. Mauris sit amet mauris vitae eros blandit facilisis scelerisque eget nisl. Praesent sed metus id nulla aliquam pulvinar tincidunt ac nibh. Quisque a ultricies lectus. Mauris sed neque et leo aliquet placerat quis id arcu. Integer dolor nisi, aliquam et euismod sed, dignissim at turpis. Etiam molestie risus non enim eleifend in convallis nunc porttitor. Sed lectus ante, faucibus vel dapibus sit amet, tincidunt non nulla. Vivamus quam sem, placerat nec egestas non, dapibus non diam. Suspendisse potenti. Phasellus eleifend elit eu sem imperdiet tempus blandit purus tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod consequat ipsum, ut mollis arcu venenatis sed. Nunc dictum dolor sit amet mauris elementum rhoncus.

                            Phasellus hendrerit feugiat massa ac aliquet. Suspendisse porta eros sit amet odio pretium in pretium dolor tincidunt. Ut feugiat commodo faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam vel leo in nunc pellentesque tincidunt id sit amet libero. In hac habitasse platea dictumst. Nunc nec felis vel libero varius elementum ut pretium metus. Integer iaculis, felis at sodales tristique, eros quam dignissim dui, sed ultricies est tortor id tortor. Mauris a euismod ligula. Quisque ut orci ut leo placerat tincidunt ultrices ut mi. Aenean varius mollis velit, a sodales augue congue ac. In quis sapien at risus porta vehicula ac nec justo. Nulla facilisi. Proin ullamcorper, nulla sed dignissim placerat, lacus est euismod leo, ac mollis erat sapien vel orci.

                            Mauris tincidunt fermentum dapibus. Nulla mi dolor, egestas adipiscing elementum id, mollis non erat. Vestibulum a nunc dolor. Fusce nec massa lacus. Phasellus rutrum, nisl id aliquet ultrices, velit diam tincidunt quam, blandit facilisis quam arcu ac nisi. Fusce neque risus, venenatis sit amet tempor sed, euismod at dui. Donec id diam orci. Pellentesque in risus et sem blandit aliquam sodales non leo. Donec commodo viverra ligula nec elementum. Phasellus justo erat, posuere sit amet volutpat id, condimentum posuere felis.'
                          },
                          {
                            :title => 'Test Title 6',
                            :author_id => 1,
                            :body => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eleifend condimentum magna nec interdum. Quisque ut enim vel felis sollicitudin ornare nec at leo. Mauris sit amet mauris vitae eros blandit facilisis scelerisque eget nisl. Praesent sed metus id nulla aliquam pulvinar tincidunt ac nibh. Quisque a ultricies lectus. Mauris sed neque et leo aliquet placerat quis id arcu. Integer dolor nisi, aliquam et euismod sed, dignissim at turpis. Etiam molestie risus non enim eleifend in convallis nunc porttitor. Sed lectus ante, faucibus vel dapibus sit amet, tincidunt non nulla. Vivamus quam sem, placerat nec egestas non, dapibus non diam. Suspendisse potenti. Phasellus eleifend elit eu sem imperdiet tempus blandit purus tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod consequat ipsum, ut mollis arcu venenatis sed. Nunc dictum dolor sit amet mauris elementum rhoncus.

                            Phasellus hendrerit feugiat massa ac aliquet. Suspendisse porta eros sit amet odio pretium in pretium dolor tincidunt. Ut feugiat commodo faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam vel leo in nunc pellentesque tincidunt id sit amet libero. In hac habitasse platea dictumst. Nunc nec felis vel libero varius elementum ut pretium metus. Integer iaculis, felis at sodales tristique, eros quam dignissim dui, sed ultricies est tortor id tortor. Mauris a euismod ligula. Quisque ut orci ut leo placerat tincidunt ultrices ut mi. Aenean varius mollis velit, a sodales augue congue ac. In quis sapien at risus porta vehicula ac nec justo. Nulla facilisi. Proin ullamcorper, nulla sed dignissim placerat, lacus est euismod leo, ac mollis erat sapien vel orci.

                            Mauris tincidunt fermentum dapibus. Nulla mi dolor, egestas adipiscing elementum id, mollis non erat. Vestibulum a nunc dolor. Fusce nec massa lacus. Phasellus rutrum, nisl id aliquet ultrices, velit diam tincidunt quam, blandit facilisis quam arcu ac nisi. Fusce neque risus, venenatis sit amet tempor sed, euismod at dui. Donec id diam orci. Pellentesque in risus et sem blandit aliquam sodales non leo. Donec commodo viverra ligula nec elementum. Phasellus justo erat, posuere sit amet volutpat id, condimentum posuere felis.'
                          }
                      ]
author_attributes.each do |author|
  Author.create!(author)
end                      
                      
article_attributes.each do |attribute|
  Article.create!(attribute)
end