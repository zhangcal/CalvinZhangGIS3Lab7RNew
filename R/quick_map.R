#' quick_map
#' quick map to show leaflet view of polygon sf
#' @param sf_data sf
#' @param color_str string of color e.g. "red"
#'
#' @return
#' @export
#'
#' @examples
#' quick_map(spData::world, "red")
quick_map <-
  function(sf_data, color_str){
    map_built <- leaflet() %>%
      addProviderTiles(providers$CartoDB.Positron) %>%
      addPolygons(data=sf_data, color=color_str, opacity=0.8)
  }
