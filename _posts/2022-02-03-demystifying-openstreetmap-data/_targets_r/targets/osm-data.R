list(
  tar_target(
    city.sf, city.ql %>% osmdata_sf() %>% trim_osmdata(study_region.bb)
  ),
  tar_target(
    boundary.sf, boundary.ql %>% osmdata_sf() %>% trim_osmdata(study_region.bb)
  ),
  tar_target(
    road.sf, road.ql %>% osmdata_sf() %>% trim_osmdata(study_region.bb)
  ),
  tar_target(
    building.sf, building.ql %>% osmdata_sf() %>% trim_osmdata(study_region.bb)
  ),
  tar_target(
    amenity.sf, amenity.ql %>% osmdata_sf()
  )
)
