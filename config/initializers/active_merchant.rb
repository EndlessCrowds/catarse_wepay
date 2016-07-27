ActiveMerchant::Billing::WepayGateway.default_currency = 'USD'
ActiveMerchant::Billing::Base.mode = :test if (::Configuration[:wepay_test] == 'true')
