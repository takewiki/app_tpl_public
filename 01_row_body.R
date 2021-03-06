menu_row <- tabItem(tabName = "row",
                    fluidRow(
                      column(12,   tabBox(
                        title = "BOM查询工作台",width = 12,
                        # The id lets us use input$tabset1 on the server to find the current tab
                        id = "tabset_bomQuery", height = "600px",
                        tabPanel("上传数据", 
                                 tagList(
                                   fluidRow(
                                     column(4,     box(
                                       title = "上传数据", width = NULL, solidHeader = TRUE, status = "primary",
                                       mdl_file('bq_file','请选择需要上传的BOM文件')
                                       ,
                                       actionBttn('bq_toGtab','跳转到G翻番表')
                                       #,
                                       #actionBttn('bq_upload','上传服务器')
                                       
                                     )),
                                     column(8,box(
                                       title = "上传数据预览", width = NULL, solidHeader = TRUE, status = "primary",
                                       mdl_dataTable('bq_dataPreview','BOM数据预览')
                                     )))
                                 )),
                        tabPanel("G番表", 
                                 tagList(
                                   fluidRow(
                                     column(4,     box(
                                       title = "上传数据", width = NULL, solidHeader = TRUE, status = "primary",
                                       
                                       actionBttn('bq_formatG','格式化G番表并上传服务器'),
                                       actionBttn('bq_goLtab','跳转到L番表')
                                       
                                     )),
                                     column(8,box(
                                       title = "上传数据预览", width = NULL, solidHeader = TRUE, status = "primary",
                                       'data here'
                                     )))
                                 )),
                        tabPanel("L番表", 
                                 tagList(
                                   fluidRow(
                                     column(4,     box(
                                       title = "上传数据", width = NULL, solidHeader = TRUE, status = "primary",
                                       #actionBttn('bq_readLT','读取L番表'),
                                       actionBttn('bq_formatL','格式化L番表')
                                       ,
                                       actionBttn('bq_goCalcBom','跳转到BOM运算')
                                       
                                     )),
                                     column(8,box(
                                       title = "上传数据预览", width = NULL, solidHeader = TRUE, status = "primary",
                                       'data here'
                                     )))
                                 )),
                        tabPanel("BOM运算", 
                                 tagList(
                                   fluidRow(
                                     column(4,     box(
                                       title = "上传数据", width = NULL, solidHeader = TRUE, status = "primary",
                                       tags$h4("BOM运算是指将上传的BOM中的G番号及L番号代入，完成A1L等变量的替代[件号L番，G番等3种情况]，如果数量量太大，一般耗时会很长，目前设置是服务器每天晚上自动定时运算，一般不需要执行。
                                               如果希望上传的数据立刻生效，请执行此功能"),
                                       actionBttn('bq_calcBom','运算BOM,模拟G番L番代入')
                                       
                                     )),
                                     column(8,box(
                                       title = "上传数据预览", width = NULL, solidHeader = TRUE, status = "primary",
                                       'data here'
                                     )))
                                 )),
                        tabPanel("配件BOM速查", 
                                 tagList(
                                   fluidRow(
                                     column(4,     box(
                                       title = "上传数据", width = NULL, solidHeader = TRUE, status = "primary",
                                       mdl_text('bq_spare_partNo','请输入配件号'),
                                       mdl_text('bq_spare_GNo','请输入G番号'),
                                       mdl_text('bq_spare_LNo','请输入L番号'),
                                       actionBttn('bq_spare_preview','预览配件BOM'),
                                       mdl_download_button('bq_spare_download','下载到Excel'),
                                       mdl_text(id = 'bb'),
                                       mdl_textEditor('bbd'),
                                       mdl_action_button('button'),
                                       mdl_date('date1'),
                                       mdl_dateRange('date2'),
                                       mdl_ListChoose1('choose1'),
                                       mdl_ListChooseN('choose2')
                                       
                                     )),
                                     column(8,box(
                                       title = "上传数据预览", width = NULL, solidHeader = TRUE, status = "primary",
                                       mdl_dataTable('bq_spare_dataShow',label =  '数据显示')
                                     )))
                                 )),
                        tabPanel("DM清单", 
                                 tagList(
                                   fluidRow(
                                     column(4,     box(
                                       title = "上传数据", width = NULL, solidHeader = TRUE, status = "primary",
                                       mdl_text('bq_DM_billNo','请输入DM单号'),
                                       mdl_text('bq_DM_VerNo','请输入版本号'),
                                       
                                       actionBttn('bq_DM_preview','预览DM-BOM'),
                                       mdl_download_button('bq_DM_download','下载到Excel')
                                       
                                     )),
                                     column(8,box(
                                       title = "上传数据预览", width = NULL, solidHeader = TRUE, status = "primary",
                                       'data here'
                                     )))
                                 )),
                        
                        tabPanel("BOM拆分", 
                                 tagList(
                                   fluidRow(
                                     column(4,     box(
                                       title = "上传数据", width = NULL, solidHeader = TRUE, status = "primary",
                                       'operation here'
                                       
                                     )),
                                     column(8,box(
                                       title = "上传数据预览", width = NULL, solidHeader = TRUE, status = "primary",
                                       'data here'
                                     )))
                                 )),
                        tabPanel("BOM打包", 
                                 tagList(
                                   fluidRow(
                                     column(4,     box(
                                       title = "上传数据", width = NULL, solidHeader = TRUE, status = "primary",
                                       'operation here'
                                       
                                     )),
                                     column(8,box(
                                       title = "上传数据预览", width = NULL, solidHeader = TRUE, status = "primary",
                                       'data here'
                                     )))
                                 )),
                        tabPanel("BOM导出到ERP", 
                                 tagList(
                                   fluidRow(
                                     column(4,     box(
                                       title = "上传数据", width = NULL, solidHeader = TRUE, status = "primary",
                                       'operation here'
                                       
                                     )),
                                     column(8,box(
                                       title = "上传数据预览", width = NULL, solidHeader = TRUE, status = "primary",
                                       'data here'
                                     )))
                                 )),
                        
                        
                        tabPanel("BOM同步日志", 
                                 tagList(
                                   fluidRow(
                                     column(4,     box(
                                       title = "上传数据", width = NULL, solidHeader = TRUE, status = "primary",
                                       'operation here'
                                       
                                     )),
                                     column(8,box(
                                       title = "上传数据预览", width = NULL, solidHeader = TRUE, status = "primary",
                                       'data here'
                                     )))
                                 ))
                      ))
                      
                    )
)
