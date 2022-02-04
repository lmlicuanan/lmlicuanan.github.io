list(
  tar_target(
    city.ql, study_region.bb %>% opq() %>% 
      add_osm_feature(key = "admin_level", value = "6")
  ),
  tar_target(
    boundary.ql, study_region.bb %>% opq() %>% 
      add_osm_feature(key = "admin_level", value = "10")
  ),
  tar_target(
    road.ql, study_region.bb %>% opq() %>%
      add_osm_feature(key = "highway")
  ),
  tar_target(
    building.ql, study_region.bb %>% opq() %>%
      add_osm_feature(key = "building")
  ),
  tar_target(
    amenity.ql, study_region.bb %>% opq() %>%
      add_osm_feature(key = "amenity")
  )
)
