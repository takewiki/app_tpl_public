menu_column <- tabItem(tabName = "column",
                       fluidRow(
                         column(width = 4,
                                box(
                                  title = "column", width = NULL, solidHeader = TRUE, status = "primary",
                                  textInput(inputId = 'txt1',label = 'text input',value = 'inputhere'),
                                    ''
                                ),
                                box(
                                  title = "Title 1", width = NULL, solidHeader = TRUE, status = "primary",
                                   mdl_file('file1'),
                                  mdl_files('file2'),
                                  mdl_integer('int'),
                                  tags$h4('input sdfsd '),
                                  mdl_numeric('num')
                                ),
                                box(
                                  title = "Title 1", width = NULL, solidHeader = TRUE, status = "primary",
                                  "Box content"
                                )
                         ),
                         
                   
                         
                         column(width=8,
                                box(
                                  title = "Title 1", width = NULL, solidHeader = TRUE, status = "primary",
                                  "Box content"
                                ),
                           
                                box(
                                  title = "Title 1", width = NULL, solidHeader = TRUE, status = "primary",
                                  "Box content"
                                )
                         )
                       )
)
