begin
  PaymentEngines.register({
    name: 'wepay',
    review_path: ->(backer) {
      CatarseWepay::Engine.routes.url_helpers.review_wepay_path(backer)
    },
    refund_path: ->(backer) {
      CatarseWepay::Engine.routes.url_helpers.refund_wepay_path(backer)
    },
    locale: 'en'
  })
rescue Exception => e
  puts "Error while registering payment engine: #{e}"
end
