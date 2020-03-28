#We could make things look a bit more like a web server by taking our 
#server code out of the rackup file and put it into a class file. We could create:
#my_server.rb




class MyServer
    def call(env)
      return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
    end
   
    def pretty_response
      (Time.now.to_i % 2).zero? ?  ["<em>Hello Deijah</em>"] : ["<strong>Hello Deijah</strong>"]
    end
  end

#run with 'rackup third.ru'