# frozen_string_literal: true

module Zoom
  module Actions
    module Phone
      extend Zoom::Actions

      get 'phone_call_history', '/phone/call_history', permit: %i[page_size from to next_page_token]

      get 'phone_call_history_detail', '/phone/call_history/:call_log_id'

      get 'phone_users_list', '/phone/users'

      get 'call_recordings', '/phone/users/:user_id/recordings'
    end
  end
end
