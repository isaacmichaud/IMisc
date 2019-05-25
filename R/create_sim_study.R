create_sim_study <- function(template_dir,name,description,random_seed = TRUE) {
  #get date and time
  file_name <- paste(name,format(Sys.time(), "%b_%d_%Y-%H_%M_%S"),sep="_")
  dir.create(file_name)
  file.copy(list.files(template_dir,full.names = TRUE),file_name)
  #get random_seed
  write(get_random_seed(2),paste(file_name,"/random_seeds.txt",sep=""))
  #make a README file with the title and whatnot
  write(sprintf("# README for Simulation Study - %s",file_name),
        file = paste(file_name,"/README.md",sep=""))
  #make archive copy of the sim study
  tar(paste(file_name,".tar.gz",sep=""),files = file_name,compression = "gzip")
}
