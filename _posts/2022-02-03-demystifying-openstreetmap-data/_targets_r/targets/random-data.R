list(
  tar_target(
    mc_point.sf, st_as_sf(st_sample(city.sf$osm_multipolygons, 1000))
  ),
  tar_target(
    mc_point_params.sf, aggregate(
      amenity_point.sf,
      mc_point.sf,
      FUN = function(x) sum(as.logical(x), na.rm = TRUE),
      join = function(x, y) st_is_within_distance(x, y, dist = 500)
    ) %>% filter(!is.na(amenity))
  )
)
