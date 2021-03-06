module DATA_DEF
  tt={
  page: "页面", 
  user: "用户", 
  article: "文章",
  type: "文章类型", 
  classified: "专栏",  
  document: "分类文档",      
  news: "新闻", 
  notice: "通知", 
  news_notice: "新闻和通知",   
  slide: "幻灯通知",    
  event: "事件", 
  widget: "积木",
  template: "模板",
  customer: "成功案例",  
  help: "帮助文档",  

  media: "多媒体",  
  gallery: "影集", 
  photo: "照片",

  sysadm: "系统管理",
  sys_setting: "系统设置",
  role: "角色", 
  page_adm: "页面管理",   
  viewadm: "窗口管理", 
  funlife: "精彩人生",
  health: "健康生活",    
  home: "主页",
  index: "主页",  
  menu: "菜单",  
  all: "所有",
  group: "班级", 
  admin: "管理员", 
  dev: "开发者",  
  user: "用户",
  new: "新建", 
  task: "协调活动&任务" 
 
  }

DATA_MENU={

menu:[
  # Create top level menus
    {name:tt[:sysadm]},  #1
    {name:tt[:page_adm]}, #2
    {name:tt[:index]}, #3  
    {name:tt[:task]},#4
    {name:tt[:news]}, #5
    {name:tt[:event]},#6
    {name:tt[:customer]},#7 
    {name:tt[:help]},#8 
    {name:tt[:funlife]},#9     
    {name:'Top level Menu 12',active:false},
    {name:'Top level Menu 13',active:false},  
    {name:'Top level Menu 14',active:false},    
    {name:'Top level Menu 15',active:false}, 
    {name:'Top level Menu 16',active:false}, 
    {name:'Top level Menu 17',active:false},
    {name:'Top level Menu 18',active:false},  
    {name:'Top level Menu 19',active:false},  
    {name:'Top level Menu 20',active:false}, 
    {pid:1,name:tt[:sys_setting],url:'/admin/settings'}, 
    {pid:1,name:tt[:user],url:'/admin/users'}, 
    {pid:1,name:tt[:group],url:'/admin/groups'},         
    {pid:1,name:tt[:role],url:'/admin/roles'},       
    {pid:1,name:tt[:viewadm],url:'/admin/view_adms'},
    {pid:1,name:tt[:type],url:'/admin/types'},

    {pid:2,name:tt[:article],url:'/admin/articles'},
    {pid:2,name:tt[:menu],url:'/admin/menus'},
    {pid:2,name:tt[:page],url:'/admin/wpages'},     
    {pid:2,name:tt[:widget],url:'/admin/widgets'},
    {pid:2,name:tt[:template],url:'/admin/templates'}, 

    {pid:4,name:'Task',url:'/tasks'},  
    {pid:4,name:'Task History',url:'/task_hists'},  
    {pid:4,name:'Task Times',url:'/task_times'},      
    {pid:5,name:tt[:news],url:'/news/news'},   
    {pid:5,name:tt[:notice],url:'/news/notice'}, 

    {pid:6,name:tt[:all],url:'/admin/events?scope=slide'}, 
    {pid:7,name:'Task',url:"/tasks"},

    {pid:9,name:tt[:funlife],url:"/news/#{tt[:funlife]}"},#funlife
    {pid:9,name:tt[:news_notice],url:'/news/all'},#classified      
    {pid:9,name:tt[:news],url:'/news/news'},#news
    {pid:9,name:tt[:notice],url:'/news/notice'},#news
    {pid:9,name:tt[:event],url:'/admin/events?scope=slide'},#event        
  ],
wpage:[                   
    {menu_pid:3,title:tt[:index],url:'/index',widget_id:1},
  ],

type:[
    {name:tt[:news],description:tt[:news]}, 
    {name:tt[:notice],description:tt[:notice]},   
    {name:tt[:slide],description:tt[:slide]}      
  ],
role:[
    {name:tt[:admin],description:tt[:admin]}, 
    {name:tt[:dev],description:tt[:dev]}, 
    {name:tt[:user],description:tt[:user]}         
  ]    
}
end