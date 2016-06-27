require 'bundler'
Bundler.require
require 'tilt/erb'

class AngularTest < Sinatra::Base

  get '/' do
    haml :index
  end

  get '/stories' do
    content_type :json
    [
      {
        :title => "Mayor resigns",
        :blurb => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed posuere justo. Ut elementum vestibulum velit sit amet suscipit. Aliquam erat volutpat. Duis vestibulum convallis erat non euismod. Sed neque nulla, sagittis non tempus non, semper vel purus. Suspendisse potenti. Sed placerat congue nibh, sed pharetra enim mollis vitae.",
        :body => " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed posuere justo. Ut elementum vestibulum velit sit amet suscipit. Aliquam erat volutpat. Duis vestibulum convallis erat non euismod. Sed neque nulla, sagittis non tempus non, semper vel purus. Suspendisse potenti. Sed placerat congue nibh, sed pharetra enim mollis vitae. Aenean ac varius elit. Fusce felis neque, pulvinar eu semper at, ultrices vel neque. Ut cursus dignissim rutrum. Nulla risus metus, ultrices in cursus sed, facilisis imperdiet mauris. Aenean pharetra, justo accumsan suscipit rutrum, sapien ante feugiat quam, nec accumsan ante leo quis nisl. Pellentesque ut scelerisque nisi. Duis ac elementum nisl. Donec lobortis enim neque, id blandit justo lobortis at.

        Suspendisse nisl risus, tempus et semper at, iaculis at nunc. Mauris ut quam ultrices, mollis mi vitae, semper augue. Morbi maximus orci sit amet egestas lacinia. Pellentesque eu urna in leo vestibulum egestas. Integer sed ornare dolor, non cursus ligula. Sed consequat, urna nec ornare faucibus, lectus lectus hendrerit elit, eu suscipit enim turpis at urna. Maecenas ut leo et ligula egestas bibendum. Fusce ac ultricies metus. Proin vehicula sed sapien vel sodales. Praesent aliquet sit amet libero id vestibulum. Interdum et malesuada fames ac ante ipsum primis in faucibus.

        Sed ullamcorper sagittis dolor a venenatis. Donec at tortor in justo convallis interdum ut in sem. Integer euismod elit nisi, a convallis ante cursus vitae. Ut sed tellus ut ligula dignissim sollicitudin. Aenean a elit in lacus dignissim aliquet. Vivamus ante sem, tincidunt non hendrerit at, congue eget tellus. Ut dictum sapien in molestie vulputate. Praesent arcu lorem, mollis quis leo a, hendrerit tempor nibh. Nunc id dignissim ante, sed tristique metus. Suspendisse luctus sem a enim fringilla, nec euismod nibh hendrerit."
      },
      {
        :title => "Dog stuck in tree",
        :blurb => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed posuere justo. Ut elementum vestibulum velit sit amet suscipit. Aliquam erat volutpat. Duis vestibulum convallis erat non euismod. Sed neque nulla, sagittis non tempus non, semper vel purus. Suspendisse potenti. Sed placerat congue nibh, sed pharetra enim mollis vitae.",
        :body => " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed posuere justo. Ut elementum vestibulum velit sit amet suscipit. Aliquam erat volutpat. Duis vestibulum convallis erat non euismod. Sed neque nulla, sagittis non tempus non, semper vel purus. Suspendisse potenti. Sed placerat congue nibh, sed pharetra enim mollis vitae. Aenean ac varius elit. Fusce felis neque, pulvinar eu semper at, ultrices vel neque. Ut cursus dignissim rutrum. Nulla risus metus, ultrices in cursus sed, facilisis imperdiet mauris. Aenean pharetra, justo accumsan suscipit rutrum, sapien ante feugiat quam, nec accumsan ante leo quis nisl. Pellentesque ut scelerisque nisi. Duis ac elementum nisl. Donec lobortis enim neque, id blandit justo lobortis at.

        Suspendisse nisl risus, tempus et semper at, iaculis at nunc. Mauris ut quam ultrices, mollis mi vitae, semper augue. Morbi maximus orci sit amet egestas lacinia. Pellentesque eu urna in leo vestibulum egestas. Integer sed ornare dolor, non cursus ligula. Sed consequat, urna nec ornare faucibus, lectus lectus hendrerit elit, eu suscipit enim turpis at urna. Maecenas ut leo et ligula egestas bibendum. Fusce ac ultricies metus. Proin vehicula sed sapien vel sodales. Praesent aliquet sit amet libero id vestibulum. Interdum et malesuada fames ac ante ipsum primis in faucibus.

        Sed ullamcorper sagittis dolor a venenatis. Donec at tortor in justo convallis interdum ut in sem. Integer euismod elit nisi, a convallis ante cursus vitae. Ut sed tellus ut ligula dignissim sollicitudin. Aenean a elit in lacus dignissim aliquet. Vivamus ante sem, tincidunt non hendrerit at, congue eget tellus. Ut dictum sapien in molestie vulputate. Praesent arcu lorem, mollis quis leo a, hendrerit tempor nibh. Nunc id dignissim ante, sed tristique metus. Suspendisse luctus sem a enim fringilla, nec euismod nibh hendrerit."
      }
    ].to_json
  end
  get '/users' do
    content_type :json

    [{:name => "Matt", :age => "27"},{:name => "Phil", :age => "63"}].to_json
  end
end
