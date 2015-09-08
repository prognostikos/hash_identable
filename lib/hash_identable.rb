require "hash_identable/version"
require "hash_identable/class_methods"
require "hash_identable/configuration"
require "hash_identable/lookup_table"
require "hash_identable/exceptions"
require "hash_identable/identity"
require "hash_identable/locator"

module HashIdentable

  def _hashidentible_identity
    @_hashidentible_identity ||= Identity.new(self.class, id)
  end

  def encoded_id
    _hashidentible_identity.encoded_id
  end

end
