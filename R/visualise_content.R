

#' Deploy the lecture slides in HTML format
#'
#' @param lecture character object indicating which lecture to visualise:
#'   'Intro_1' : Introduction to R - Part 1
#'   'Intro_2' : Introduction to R - Part 2
#'   'VectRast' : Raster files and spatial data
#'   'DataProcess' : Data processing
#'   'SpatStat' : Spatial and temporal statistics
#'   'Download' : Automating downloading
#'
#' @return this function directs the user to the selected lecture.
#' @export
#'
#' @examples
render_lectures <- function(lecture){
  
  # Setting the directory
  dir <-"./R"
  
  # Setting the lecture names
  lectures <- c("Intro_1", "Intro_2", "VectRast",
                "SpatProcess", "SpatStat", "Download")
  
  # Checking if the name corresponds to the existing lectures
  if(!lecture %in% lectures)
    stop("Please provide the proper name of the lecture: 
          'Intro_1' : Introduction to R - Part 1
          'Intro_2' : Introduction to R - Part 2
          'VectRast' : Raster files and spatial data
          'DataProcess' : Data processing
          'SpatStat' : Spatial and temporal statistics
          'Download' : Automating downloading
          ")
  
  if(lecture == "Intro_1"){
    browseURL(file.path(dir, "Introduction_Part1.html"))
  } else if (lecture == "Intro_2"){
    browseURL(file.path(dir, "Introduction_Part2.html"))
  } else if (lecture == "VectRast"){
    browseURL(file.path(dir, "Vector_and_Raster_data.html"))
  } else if (lecture == "DataProcess"){
    browseURL(file.path(dir, "Spatial_processing.html"))
  } else if (lecture == "SpatStat"){
    browseURL(file.path(dir, "Spatial_statistics.html"))
  } else if (lecture == "Download"){
    browseURL(file.path(dir, "Downloading.html"))
  }
    
  
  
  
  
  
  
  
}