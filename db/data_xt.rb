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
    {title: "<p>热列庆祝协调网</p><p>隆重推出第一版</p>", 
    description: 
'<font color="red"><center>
<p>热列庆祝协调网站第一版隆重推出</p>
</center></font>'
    }, 
    {title: "<p>协调网<p><p>将邀请国内外相关领域的专家评审</p>", 
    description: 
'<font color="red"><center>
<p>将邀请相关领域的专家评审</p>
</center></font>'
    },  
  ],  
############## Article 
article:[  
    {title: '功能介绍',
    tag_list: '新闻', 
    permalink:'index',
    content:
    '
<p>当我们策划一项活动时， 可能要涉及到很多人的不同意见和想法，包括不同的时间，不同的方法等。为解决分歧，寻求共识，我们就不得不开会。</p> 
<p>本网站提供一个的方案，它提供一个平台，起到收集、协调、整合意见的作用，具体流程如下：</p> 
<ul> 
<li>活动发起人首先提出一个方案或设想；</li> 
<li>并通过电子媒体邀请、通知相关的人员；</li> 
<li>受邀请的人员对方案在线进行修改或应答；</li> 
<li>将更新通知相关的人员；</li> 
<li>如此反复；</li> 
<li>直到最后达到最大共识；</li> 
<li>最后的版本就是共识版。</li> </ul> 

当然，最后可能还是需要组织者的决断。</p> 
<p>该网站适用于朋友间的活动协调，如同学聚会，朋友聚餐，结伴旅行，联欢会节目表，也可用公司内的技术方案要点讨论。</p>'
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
      content: '<%= show_article(1) %>'
    }  
  ]
}
end