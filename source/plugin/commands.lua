function cmd(msg)
text = nil
if msg and msg.content and msg.content.text then
text = msg.content.text.text
end
msg_chat_id = msg.chat_id
msg_id = msg.id
if tonumber(msg.sender_id.user_id) == tonumber(Fast) then
return false
end
if text then
local neww = Redis:get(Fast.."Get:Reides:Commands:Group"..msg.chat_id..":"..text)
if neww then
text = neww or text
end
end
if text == 'الاوامر' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '{ 𝟏 }', data = senderr..'/help1'}, {text = '{ 𝟐 }', data = senderr..'/help2'}, 
},
{
{text = '{ 𝟑 }', data = senderr..'/help3'}, {text = '{ 𝟒 }', data = senderr..'/help4'}, 
},
{
{text = '{ 𝟓 }', data = senderr..'/help5'}, {text = '{ 𝟔 }', data = senderr..'/helpp6'}, 
},
{
{text = '{ م المطور }', data = senderr..'/helpsudo'},{text = '{ الالعاب }', data = senderr..'/help6'}, 
},
{
{text = '{ اوامر التسليه }', data = senderr..'/helpts'},
},
{
{text = '{ القفل / الفتح }', data = senderr..'/NoNextSeting'}, {text = '{ التعطيل / التفعيل }', data = senderr..'/listallAddorrem'}, 
},
{
{text = 'قناه السورس', url = 'https://t.me/HELLASUserBot'}, 
},
}
}
return send(msg_chat_id,msg_id, [[*
• اوامــر البــوت الرئيسيـة 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• { م1 } ← اوامر الحمايه
• { م2 } ← اوامر الادمنيه
• { م3 } ← اوامر المدراء
• { م4 } ← اوامر المنشئين
• { م5 } ← اوامر المالكين
• { م6 } ← اوامر التسليه
• { م المطور } ← اوامر المطور
*]],"md",false, false, false, false, reply_markup)

elseif text == 'م المطور' then
if not msg.Dev then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(3)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 'https://t.me/HELLASUserBot'}, 
},
}
}
local TextHelp = [[*
• اوامر المطور الاساسي  
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل  ←  تعطيل
• رفع  تنزيل ← مطور اساسي
• المطورين الاساسيين
• مسح المطورين الاساسيين
• رفع  تنزيل ← مطور ثانوي
• المطورين الثانويين  
• مسح المطورين الثانويين
• رفع  تنزيل ← مطور
• المطورين ← مسح المطورين
• تغيير المطور الاساسي
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل الوضع المدفوع + الايدي 
• الغاء الوضع المدفوع + الايدي
• حظر جروب + { الايدي }
• غادر ← + { الايدي }
• اسم بوتك + غادر بالجروب
• تفعيل تعطيل الاشتراك الاجباري
• الاشتراك الاجباري
• تغيير الاشتراك الاجباري
• تفعيل تعطيل الاشتراك الاجباري للجروب
• الاشتراك الاجباري للجروب
• تعيين عدد الاعضاء + {العدد}
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• حظر عام ، الغاء العام
• قائمه العام ، مسح قائمه العام
• كتم عام ، الغاء كتم عام
• المكتومين عام
• مسح المكتومين عام
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تغيير ، مسح ←{ اسم البوت }
• ضع صوره للترحيب 
• الاحصائيات
• ذيع + ايدي الجروب بالرد
• اذاعه ، اذاعه خاص
• اذاعه بالتوجيه ، اذاعه بالتثبيت
• اذاعه خاص بالتوجيه
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل تعطيل جلب النسخه التلقائيه
• جلب نسخه احتياطيه
• رفع النسخه الاحتياطيه بالرد
• رفع نسخه تشاكي بالرد
• جلب نسخه الردود 
• رفع نسخه الردود بالرد
• معلومات التنصيب
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تعيين ، مسح ← { الايدي عام }
• اضف ، مسح ← {رد عام}
• اضف ، مسح ← {رد عام متعدد}
• ضع ، مسح ← { الترحيب عام } 
• ضع ، مسح ← { كليشه المطور }
• الردود العامه ، مسح الردود العامه
• اضف مسح صوت عام
• الصوتيات العامه 
• مسح الصوتيات العامه
• منع عام ، الغاء منع عام
• قائمه المنع عام
• مسح قائمه المنع عام
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اضف مسح ← سؤال
• الاسئله المضافه
• مسح الاسئله المضافه
• اضف مسح ← لغز 
• الالغاز ~ مسح الالغاز
• اضف مسح ← سؤال كت 
• اسئله كت
• اضف اسئله كت
• مسح اسئله كت
• اضف موسيقى 
• مسح موسيقى بالرد 
• قائمة الموسيقى 
• مسح قائمه الموسيقى 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل ، تعطيل ← الاوامر التاليه↓
• البوت الخدمي ، المغادرة ، الاذاعه
• التواصل ، الاحصائيات
• ملف ← { اسم الملف }
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• مسح جميع الملفات 
• المتجر ، الملفات
• تحديث ، تحديث السورس
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اوامر المطور في البوت
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع، تنزيل ← { مالك }
• المالكين ، مسح المالكين
• تنزيل جميع الرتب
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'اوامر التسليه' then
if not msg.Dev then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(3)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 'https://t.me/HELLASUserBot'}, 
},
}
}
local TextHelp = [[*
︙اوامر التسليه كالاتي: 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• الامر ، تفعيل ، تعطيل  ← { الامر }
• غنيلي ، ريمكس ، اغنيه ، شعر
• صوره ،  متحركه
• انمي ، ميمز
• مسلسل ، فلم
• حساب العمر( احسب + تاريخ الميلاد)
• معنى اسم + الاسم
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'م1' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 'https://t.me/HELLASUserBot'}, 
},
}
}
local TextHelp = [[*
• اوامر الحمايه كالاتي ...
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• قفل ، فتح ← الامر 
• تستطيع قفل حمايه كما يلي ...
• ← { بالتقييد ، بالطرد ، بالكتم }
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• الكل ~ الدخول
• الروابط ~ المعرف
• التاك ~ الشارحه
• التعديل ~ تعديل الميديا
• المتحركه ~ الملفات
• الصور ~ الفيديو 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• الماركداون ~ البوتات
• التكرار ~ الكلايش
• السيلفي ~ الملصقات
• الانلاين ~  الدردشه
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• التوجيه ~ الاغاني
• الصوت ~ الجهات
• الاشعارات ~ التثبيت 
• الوسائط ~ التفليش
• وسائط المميزين
• الفشار ~ الفارسيه
• الإنكليزيه
• الكفر ~ الاباحي
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'م2' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 'https://t.me/HELLASUserBot'}, 
},
}
}
local TextHelp = [[*
• اوامر ادمنية الجروب ...
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع، تنزيل ← مميز
• المميزين ← مسح المميزين 
• رفع الادمنيه
• تاك ، تاك للكل ، الجروب
• منع ، الغاء منع
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• الاوامر التالية ← {بالرد ، بالمعرف}
• حظر ، طرد ← الغاء حظر 
• كتم ← الغاء كتم
• تقييد ← الغاء تقييد
• كشف ، رفع ← القيود
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• عرض القوائم كما يلي ...
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• المنشئين الاساسيين ، المنشئين 
• المدراء ، الادمنيه ، المميزين
• المشرفين ، المكتومين
• قائمه المنع
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تثبيت ، الغاء تثبيت
• الرابط ، الاعدادات ، الحمايه
• الترحيب ، القوانين
• ضع رتبه  ← { اسم الرتبه } 
• تحكم ← {بالرد ، بالمعرف}
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل ، تعطيل ← الاوامر التاليه :
• الترحيب ، الرابط 
• ردود البوت ، الالعاب
• اطردني ، التسليه
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• مسح ← الاوامر التاليه
• القوائم ، قائمه المنع ، المميزين
• الرابط ، القوانين ، الصوره
• مسح ← { عدد }
• مسح ← { بالرد }
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اوامر الاعضاء والادمنيه 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• ايدي ، ايدي بالرد ، رسائلي
• تفاعلي ، لقبي ، بايو ، ترند
• جهاتي ، تعديلاتي ، نقاطي
• بيع نقاطي + العدد
• مسح نقاطي
• قول + الكلمه
• زواج ، ثنائي اليوم 
• الوقت ، الساعه ، التاريخ
• الصوتيات ، الصوتيات العامه
• زخرفه ، تحويل الصيغ ، غنيلي
• همسه ، اسم برجك ، صورتي
• صلاحياتي ، رتبتي
• صلاحياته ← {بالرد ، بالمعرف}
• الرتبه ← {بالرد ، بالمعرف}
• التفاعل ← {بالرد ، بالمعرف}
• كشف ← {بالرد ، بالمعرف}
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'م3' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 'https://t.me/HELLASUserBot'}, 
},
}
}
local TextHelp = [[*
• اوامر المدراء في الجروب
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع ، تنزيل ← ادمن
• الادمنيه ← مسح الادمنيه
• تنزيل الكل ← {بالرد ، بالمعرف}
• ️︙كشف ، طرد ، قفل ← البوتات
• قفل البوتات ← بالطرد
• فحص ← البوت
• طرد ← المحذوفين 
• قفل فتح ← ارسال القناة
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• لتغيير رد الرتب في البوت
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تغيير رد ← {اسم الرتبه والنص} 
• المطور ، المالك ، المنشئ الاساسي
• المنشئ ، المدير ، الادمن
• المميز ، العضو
• مسح رد ← { اسم الرتبه }
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• وضع الرتب ← { بالرد ، بالمعرف}
• ضع رتبه ← { اسم الرتبه }
• مسح رتبه ← { بالرد ، بالمعرف}
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• وضع ، ضع ← الاوامر التاليه
• اسم + اسم الجروب
• رابط ، صوره
• قوانين ، وصف ،الترحيب 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل ، تعطيل ← الاوامر التاليه :
• الايدي ، الايدي بالصوره 
• ايدي العضو ، البايو
• صورتي ، اسمي
• الردود ، الابراج
• غنيلي ، الصيغ ، قول
• تنبيه الاسماء ، الصوتيات 
• الصوتيات العامه
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• مسح ← + { الامر } 
• المحظورين ، المطرودين
• المكتومين ← المقيدين
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• ترتيب الاوامر ← استعاده الاوامر
• اضف ، مسح ← { رد }
• الردود ، مسح الردود
• اضف ، مسح ← { رد متعدد}
• الردود المتعدده
• مسح الردود المتعدده
• تاك عام ، all
• الميديا ← امسح
• اضف رسائل + العدد { بالرد}
• اضف نقاط + العدد { بالرد }
• اضف تعديلات + العدد {بالرد}
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'م4' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 'https://t.me/HELLASUserBot'}, 
},
}
}
local TextHelp = [[*
• اوامر المنشئ الاساسي
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع ، تنزيل ←{ منشئ }
• المنشئين ، مسح المنشئين
• رفع ، تنزيل ←{ مشرف }
• ضع لقب + اللقب ← { بالرد }
• صلاحيات الجروب
• مسح نقاطه ، رسائله ← {بالرد} 
• تفعيل ، تعطيل ← منع التصفيه
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اوامر المنشئ الجروب
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع ، تنزيل ← { مدير }
• المدراء ، مسح المدراء
• تغيير ، مسح ←{ الايدي }
• تعيين ، مسح ←{ الايدي }
• اضف ، مسح ← { امر }
• الاوامر المضافه ، مسح الاوامر المضافه
• ضع التكرار ← { عدد }
• تفعيل الاوامر ← { اوامر اساسيه }
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل ، تعطيل ← الاوامر التاليه :
• الردود العامه ، الطرد ، الحظر
• الرفع ، التاك ، نزلني ، ضع رتبه 
• تاك عام ، المسح التلقائي
• ضع عدد المسح + { عدد }
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'م5' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end

if ChannelJoin(msg) == false then  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 'https://t.me/HELLASUserBot'}, 
},
}
}
local TextHelp = [[*
• اوامر مالك الجروب 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع ، تنزيل ←{ مالك }
• المالكين ، مسح المالكين
 •تنزيل جميع الرتب
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اوامر المالكين 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع ، تنزيل ← { منشئ اساسي }
• المنشئين الاساسيين،
• مسح المنشئين الاساسيين
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'م6' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end

if ChannelJoin(msg) == false then  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 'https://t.me/HELLASUserBot'}, 
},
}
}
local TextHelp = [[*
• اوامر التسلية
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع ، تنزيل ← الاوامر التاليه ↓
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• غبي 
• سمب
• حمار
• خول
• قرد 
• عره
• متوحد
• متوحده
• كلب 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اوامر التاك 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• الاغبياء
• الحمير
• الخولات
• السمب
• المتوحدين
• الكلاب
• العرر
• القرود
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اوامر الترفيه 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• زخرفه + النص
• مثال زخرفه محمود
• احسب + عمرك
• مثال احسب 2001/8/5
• معني + الاسم 
• مثال معني محمود
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• نسبه الحب/ الكره
• نسبه الرجوله/ الانوثه 
• نسبه الذكـــــاء/ الغباء 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• الاوامــر بالـــرد  ⇣ 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• زواج ~ طلاق
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
end

end
return {Fast = cmd}
