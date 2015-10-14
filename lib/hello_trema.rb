# Hello World!
class HelloTrema < Trema::Controller
  def start(_args)
    cls_name = self.class.name
    logger.info "Hi! from #{cls_name}"
  end

  def switch_ready(_datapath_id)
    logger.info 'Hello #{datapath_id.to_hex}!'
  end

  def switch_disconnected(datapath_id)
    logger.info "Bye #{datapath_id.to_hex}!"
  end
end
