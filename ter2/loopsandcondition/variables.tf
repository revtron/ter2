variable "instance_names" {
  description = "List of instance names"
  type = list(string)
  default = [ "app-server","db-server","cacahe-server" ]
  
}