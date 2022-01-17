# frozen_string_literal: true
#
module Zoom
  module Actions
    module Phone
      extend Zoom::Actions

      get 'call_logs', '/phone/users/:user_id/call_logs'

      get 'phone_call_logs', '/phone/call_logs', permit: %i[page_size from to next_page_token]

      get 'phone_users_list', '/phone/users'

      get 'call_recordings', '/phone/users/:user_id/recordings'
    end
  end
end
