class wackopicko {
  class{'wackopicko::install': } ->
  class{'wackopicko::config': } ->
  Class['wackopicko']
}
