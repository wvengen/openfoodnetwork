# Defers constraint checking instead of disabling.
#
# This tries to solve issue
# https://github.com/openfoodfoundation/openfoodnetwork/issues/245.
#
# This version of disable_referential_integrity don't need the database role
# to be a superuser anymore. But it requires all foreign keys to be declared
# as deferrable.
#
# The idea and code comes from:
# http://kopongo.com/2008/7/25/postgres-ri_constrainttrigger-error
module ActiveRecord
  module ConnectionAdapters
    class PostgreSQLAdapter < AbstractAdapter
      def disable_referential_integrity(&block)
         transaction {
           begin
             execute "SET CONSTRAINTS ALL DEFERRED"
             yield
           ensure
             execute "SET CONSTRAINTS ALL IMMEDIATE"
           end
         }
      end
    end
  end
end
$stderr.puts 'checking constraints deferred'
