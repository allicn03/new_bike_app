if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_CVsctQQ0HfYze4znLjuBwmOv',
    secret_key: 'sk_test_dhUQRorBqcFlUXTGMpoXOm6N'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]

#Rails.configuration.stripe[:publishable_key]
#use above to reference in app
