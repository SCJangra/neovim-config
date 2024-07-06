local settings = {}

settings.rust_analyzer = {}
settings.rust_analyzer['rust-analyzer'] = {
  cargo = {
    features = 'all'
  },
  check = {
    command = 'clippy',
  },
}

return settings;
