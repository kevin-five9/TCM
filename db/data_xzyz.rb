module DATA_DEF
xzyz='your group name'
PWD='password'
DATA_XZYZ={
group:[  
    {name: xzyz, description: xzyz}, 
    {name: '8104班', description: xzyz,pid:1},     
    {name: '8101班', description: xzyz,pid:1}, 
    {name: '8102班', description: xzyz,pid:1}, 
    {name: '8103班', description: xzyz,pid:1}, 
    {name: '8105班', description: xzyz,pid:1}, 
    {name: '8106班', description: xzyz,pid:1},                        
  ],   
user:[
    {wname:'admin', email:'admin@gmail.com',password:PWD,gid:1,rid:1},
    {wname:'admin1',email:'admin1@gmail.com',password:PWD,gid:1,rid:1},
    {wname:'admin2',email:'admin2@gmail.com',password:PWD,gid:2,rid:1},
    {wname:'admin3',email:'admin3@gmail.com',password:PWD,gid:3,rid:1},
    {wname:'admin4',email:'admin4@gmail.com',password:PWD,gid:4,rid:1},
    {wname:'admin5',email:'admin5@gmail.com',password:PWD,gid:5,rid:1},
    {wname:'admin6',email:'admin6@gmail.com',password:PWD,gid:6,rid:1},
    {wname:'guest',email:'guest@gmail.com',password:'xzyz8104'}  
  ],    
############## Event
event:[  
    {title: "新洲一中84届毕业三十周年纪念活动", 
    description: 
'<font color="red"><center>
<p>热列庆祝新洲一中84届</p>
<p>毕业三十周年纪念活动</p>
</center></font>'
    },                        
  ],  
############## Article 
article:[  
    {title: '邀   请   函',
    tag_list: '新闻', 
    content:
    '
邀   请   函
亲爱的84届同学：您好！
有一种共同的身份让我们彼此认同，
有一段共同的岁月让我们终身怀念。
从毕业到现在，三十年的牵挂，三十年的期盼，
将于2014年10月1日至3日凝成重逢。
应广大同学的要求，
84届毕业三十周年纪念活动，
将在新洲一中邾城校区隆重举行，
特邀请您拨冗光临。
请及时与各班组委会联系。
你知道我在等你吗？
新洲一中1984届毕业生30年周年纪念活动筹备组
2014年8月28日'
        },
    {title: '黄金英,双铺精英广场舞赞赞赞',
    tag_list: '精彩人生', 
    permalink:'http://v.youku.com/v_show/id_XNzg2MjUxMzAw.html?tpa=dW5pb25faWQ9MTAzMjUyXzEwMDAwMV8wMV8wMQ'
    },
    {title: '记武汉市人大代表谢国英',
    tag_list: '精彩人生', 
    permalink:'http://www.whrd.gov.cn/dbfc/4147.shtml'
    }    
    ],

############## Widget  
widget:[  
    {name: 'Invitation Letter', description: 'Invitation Letter', 
      content: '<%= slide_article(1) %>'
      }  
  ]
}
end