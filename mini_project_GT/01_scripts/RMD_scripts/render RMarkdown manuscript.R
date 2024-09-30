# render RMarkdown manuscript
rmarkdown::render("./04_manuscript/My_manuscript.Rmd", 
                  output_dir = "./04_manuscript/rendered", output_format = "pdf_document")
