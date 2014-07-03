# Defers constraint checking instead of disabling.
#
# This tries to solve issue
# https://github.com/openfoodfoundation/openfoodnetwork/issues/245
#
# Using fixtures don't need the database role to be superuser anymore.
# But this hack doesn't work with spree's fixture code.
# : DELETE FROM "spree_countries"
# => update or delete on table "spree_countries" violates foreign key
#    constraint "spree_states_country_id_fk" on table "spree_states"
#
# See http://kopongo.com/2008/7/25/postgres-ri_constrainttrigger-error
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
