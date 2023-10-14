local settings = {}

settings.rust_analyzer = {}
settings.rust_analyzer['rust-analyzer'] = {
  cargo = {
    features = { 'runtime-benchmarks' }
  },
  check = {
    command = 'clippy',
  },
}

return settings;
