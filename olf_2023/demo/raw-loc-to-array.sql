SELECT
    city,
    string_to_array(
        loc_list, ', ')
FROM raw_locations;
