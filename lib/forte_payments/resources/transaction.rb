module FortePayments
  class Client
    module Transaction

      def create_transaction(options = {})
        post("/transactions", options)
      end

      def list_transactions(options = {})
        get("/transactions", options)
      end

      def find_transaction(transaction_id, options = {})
        get("/transactions/#{transaction_id}", options)
      end

      def list_customer_transactions(customer_id, options = {})
        get("/customers/#{customer_id}/transactions", options)
      end

      def update_transaction(transaction_id, options = {})
        put("/transactions/#{transaction_id}", options)
      end

      def reverse_transaction(options = {})
        post("/transactions", options)
      end

    end
  end
end
