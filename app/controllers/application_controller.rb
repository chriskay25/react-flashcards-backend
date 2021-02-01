class ApplicationController < ActionController::API

    def generate_token(payload)
        token = JWT.encode(payload, 'token')
    end

    def decode_token_and_get_user_id
        JWT.decode(request.headers['Authorization'], 'token')[0]['id']
    end

end
