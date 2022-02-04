list(
  tar_target(
    amenity_point.sf, amenity.sf$osm_points %>%
      transmute(
        amenity = case_when(
          amenity == "bank" ~ "bank",
          amenity %in% c("restaurant", "fast_food") ~ "restaurant",
          amenity %in% c("bar", "pub", "gambling", "nightclub", "casino") ~ "bar",
          amenity %in% c("bus_station", "taxi", "ferry_terminal") ~ "terminal",
          amenity %in% c("clinic", "hospital", "doctors", "dentist") ~ "hc_facility",
          amenity == "pharmacy" ~ "pharmacy",
          amenity %in% c("school", "college") ~ "school",
          amenity == "place_of_worship" ~ "place_of_worship",
          TRUE ~ NA_character_
        ), value = TRUE
      ) %>% mutate(amenity_key = amenity) %>%
      filter(!is.na(amenity)) %>% spread(key = amenity_key, value = value, fill = FALSE)
  )
)
