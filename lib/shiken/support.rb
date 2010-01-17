class Hash
  def method_missing(method)
    self[method.to_sym]
  end
end
