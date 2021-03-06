-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- المزود: 127.0.0.1
-- أنشئ في: 15 فبراير 2019 الساعة 21:31
-- إصدارة المزود: 5.5.27
-- PHP إصدارة: 7.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- قاعدة البيانات: `symptom`
--

-- --------------------------------------------------------

--
-- بنية الجدول `diseases`
--

CREATE TABLE IF NOT EXISTS `diseases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- بنية الجدول `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_03_100312_create_doctors_table', 1),
(4, '2019_02_03_100353_create_symptoms_table', 1),
(5, '2019_02_03_101013_create_diseases_table', 1),
(6, '2019_02_12_161413_create_posts_table', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postdescription` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `posttag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- إرجاع أو استيراد بيانات الجدول `posts`
--

INSERT INTO `posts` (`id`, `title`, `postdescription`, `posttag`, `image`, `created_at`, `updated_at`) VALUES
(2, 'السرطان', 'في هذا القسم سوف تجدون آخر الابحاث واهم المعلومات عن السرطان, طرق علاجه واساليب الوقاية منه.\r\nالسرطان هو من اكثر اسباب الوفاة والمثير هو انه بالامكان تفاديه او التقليل بشكل ملحوظ من فرص الاصابة به اذا ما ادركنا ما هي الاسباب عوامل الخطر وتجنبناها. لمرض السرطان اشكال وانواع, فهناك أكثر من 100 نوع من السرطان، بما في ذلك سرطان الثدي وسرطان الجلد وسرطان الرئة وسرطان القولون وسرطان البروستاتا. وتختلف اعراض السرطان من حالة الى اخرى، تبعا للعضو المصاب بمرض السرطان. بعض اعراض السرطان العامة منسوبه له، لكنها ليست خاصة بمرض السرطان وحده. اما علاج السرطان فهو يشمل العلاج الكيميائي والاشعاعي، والجراحة.', 'الطب البديل', '1550137365body3.png', '2019-02-12 17:18:49', '2019-02-14 07:42:46'),
(4, 'صحتك النفسيه', 'الصحة النفسية\r\nالصحة النفسية شانها كشأن باقي أجهزة الجسم حيث من الممكن ان تتعب وتمرض وتحتاج للعلاج. لا داعي للخجل من الحديث عن الصحة النفسية فمن المهم الوقاية من الأمراض النفسية وعلاجها حين حدوثها.\r\n\r\n بعض الأمراض النفسية كالقلق، الاكتئاب، الوسواس القهري، الاضطرابات النفسية، الفوبيا (الرهاب - Phobia) وغيرها، أصبحت معروفة. لجميع هذه الأمراض يوجد طرق علاج مختلفة، منها العلاجات النفسية، العلاج السلوكي - الذهني والعلاجات بالادوية وكذلك العلاجات البديلة.\r\n\r\nفي قسم الصحة النفسية من ويب طب - ستجدون معلومات شاملة عن الصحة النفسية، الامراض، طرق الوقاية واساليب العلاج.', 'الصحة النفسية', '1550072483mental-health.jpg', '2019-02-12 17:48:00', '2019-02-13 13:41:23'),
(7, 'حافظ صحة أسنانك', 'لكي نتمتع بابتسامة جميلة وبكل ثقة, علينا ان نعتني جيداً بصحة الاسنان والفم. هنا سوف تجدون ما تحتاجونه من المعلومات للعناية السليمة بالاسنان والفم وكذلك شرحا مفصلا عن طرق القيام بذلك. اقرؤوا في ويب طب عن مصادر آلام الاسنان, وما هي اسباب تسوس الاسنان؟ لماذا اعاني من رائحة فم كريهة؟ اكتشفوا سر الابتسامة الصحية والجميلة, في قسم صحة الاسنان والفم.', 'صحة الاسنان', '1550072497teeth-health.png', '2019-02-13 13:25:34', '2019-02-13 13:41:37');

-- --------------------------------------------------------

--
-- بنية الجدول `symptoms`
--

CREATE TABLE IF NOT EXISTS `symptoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=39 ;

--
-- إرجاع أو استيراد بيانات الجدول `symptoms`
--

INSERT INTO `symptoms` (`id`, `created_at`, `updated_at`, `name`, `description`, `tag`) VALUES
(7, '0000-00-00 00:00:00', NULL, 'جفاف العين و الفم', 'مرحبا بك في الدليل الخاص بنا عن الجفاف المستمر وطويل الامد للعين و/او الفم، وهي حالة تسمى عادة "متلازمة جفافية - SICCA syndrome". والاسم ياتي من الكلمة اللاتينية "siccus" التي تعني "جاف".\n\nاعراض جفاف العين قد تظهر بسبب هبوب الرياح بجوار العين او البيئة ذات الهواء الجاف (مثل: التدفئة داخل المنزل)، التعرض للدخان او التراب. الجفاف ربما يكون من مضاعفات امراض العين الاخرى، مثل: امراض جفن العين وجحوظ العين (مثلما يحدث مع زيادة نشاط الغدة الدرقية). الجفاف المؤقت للفم ربما يصاحب العصبية، القلق والتنفس عبر الفم (كما يفعل العديد من الناس اثناء النوم). العديد من الادوية ايضا، يمكن ان تجعل الفم جافا.\n\nهذا الدليل سوف يغطي الاسباب الاكثر شيوعا لجفاف العين وجفاف الفم. بينما تكون هذه الاعراض اكثر شيوعا بين الاشخاص الاكبر سنا، الا ان هذا ليس امرا لا مفر منه، بينما ينخفض انتاج الدموع مع تقدم السن، فتكون الاعراض مرتبطة بالشيخوخة عادة. في الحقيقة، العديد من كبار السن يكون لديهم انتاج دموع ولعاب طبيعي تماما.\n\nمن فضلك، خذ بالاعتبار ان هذه المعلومات لا يمكن ان تحل محل التقييم الذي يكون وجها لوجه مع مقدم الرعاية الصحية الخاص بك. هذا الدليل يهدف لتقديم معلومات مفيدة اثناء انتظار التقييم او يضيف الى ما تعرفه بعد زيارة الطبيب.', 'العين'),
(8, NULL, NULL, 'افرازات العين', 'ناسف لانك تعاني من هذه المشكلة!\n\nيجب الانتباه الى ان هذه المعلومات، لا يمكن ان تغني عن التشخيص المباشر مع مقدم الرعاية الصحية الخاص بك. الهدف من هذا الدليل  تقديم معلومات مفيدة اثناء انتظار التشخيص، او بالاضافة الى ما تم تشخيصه فعلا بعد زيارة الطبيب.\n\nقبل توجيه سلسلة من الاسئلة اليك حول تفاصيل اعراضك،  من المهم ان تحدد ان كنت تعاني من مشكلة تتطلب رعاية فورية عاجلة، ام طارئة. فمثلا، افرازات العين التي يصاحبها تورم في اليدين، او الوجه، حكة او هرش، وخطوط في الجلد، تشير الى تفاعل حساسية شديد، يتطلب رعاية طبية فورية. وفقد الرؤية، او ضعف عضلات الوجه، او الم العين، هي اعراض خطيرة اخرى.\n\nولحسن الحظ، فان معظم الاشخاص الذين يعانون من افرازات من العين، تكون لديهم المشكلة بسيطة – لكن مزعجة جدا — مثل البرد، او الحساسية.\n\nويمكن ان يختلف نوع الافرازات طبقا للسبب. ويمكن للدموع المتزايدة ان تسبب افرازات العين المائية، بينما العدوى البكتيرية عادة ما تصاحبها افرازات سميكة وصفراء .', 'العين'),
(10, '0000-00-00 00:00:00', NULL, 'السعال والبرد', 'يحدث السعال والبرد لدى معظم البالغين مرتين الى اربع مرات في السنة وهما اكثر تكررا لدى الاطفال. لست ملزما ان تراجع الطبيب اذا كنت تعاني من اعراض التهاب فيروسي دون مضاعفات في الجهاز التنفسي (الاذن، الانف، الجيوب الانفية، الحلق والصدر). من ناحية اخرى، يجب ان يقوم طبيبك بتقييمك اذا كنت تعاني من اعراض ترجح سبب اكثر خطورة، مثل: العدوى البكتيرية او اذا كانت اعراضك غير قابلة للعلاج بالعلاجات التي دون وصفة طبية او مع مرور الوقت. هدف هذا الدليل هو مراجعة اعراض السعال والبرد لديك والتعرف على انماط معينة من المرض، يوصى فيها بالتقييم من قبل الطبيب.\n\nاثناء مضيك قدما في هذا البرنامج سوف تواجه مجموعة صغيرة من الاسئلة بخصوص اعراضك. اجاباتك عن هذه الاسئلة سوف تساعدنا في تقديم افضل الاقتراحات لك.', 'أنف و أذن و حنجرة'),
(11, NULL, NULL, 'جفاف الفم والعطش الشديد', 'مرحبا بك في دليل الاعراض عن جفاف الفم و/او العطش الزائد. يؤسفنا انك تعاني من هذه المشكلة!\n\nهذا الدليل مصمم للاشخاص الذين لاحظوا وجود جفاف الفم و/او العطش الزائد غير معروف السبب، سوف يبحث في المزيد عن هذه المشكلة. من فضلك، خذ بالاعتبار ان هذه المعلومات لا يمكن ان تحل محل التقييم الذي يكون وجها لوجه، مع مقدم الرعاية الصحية الخاص بك. هذا الدليل مقصود به تقديم معلومات مفيدة اثناء انتظار التقييم او يضيف الى ما تعرفه بعد زيارة الطبيب.\n\nهذا الدليل سوف يركز على جفاف الفم المستمر طوال الوقت. فالجفاف المؤقت للفم ربما يصاحب العصبية، القلق والتنفس عبر الفم (كما يفعل العديد من الناس اثناء النوم). يمكن ان يؤدي تناول وجبة مملحة او حارة الى عطش مؤقت (لكن شديد).\n\nمن الجدير بالذكر ايضا، ان العديد من الناس يشربون بشكل متكرر اكثر من العادة. يشعرون بالعطش اذا كانوا غير قادرين على الشرب كعادتهم، حتى ان لم يكن هناك مرض حقيقي يتسبب في العطش. يمكن ان يكون من الصعب القول ان هذا هو سبب العطش او جفاف الفم عند شخص، دون استبعاد الاحتمالات الاخرى بداية.\n\nسوف توجه لك سلسلة من الاسئلة التي سوف تاخذك عبر بعض الاسباب الاكثر شيوعا لاعراضك. سوف يغطي هذا الدليل الاسباب الاكثر شيوعا لجفاف الفم، رغم ذلك، فلن يغطي الاسباب كلها.', 'أنف و أذن و حنجرة'),
(12, '0000-00-00 00:00:00', NULL, 'الم الاذن عند الكبار', 'يربط الناس بين الم الاذن وعدوى الاذن عادة. رغم ذلك يمكن ان يحدث عدم الارتياح داخل او حول الاذن، بسبب مشاكل متعددة مختلفة. هذا الدليل سوف يغطي الاسباب الاكثر شيوعا لالم الاذن.\n\nبما ان عدوى الاذن هي سبب شائع لالم الاذن، دعنا نتناول هذا الاحتمال بداية.\n\nتحدث معظم انواع عدوى الاذن داخل الاذن. لا تكون هناك علامة على العدوى في الخارج عادة. يشير الاحمرار الالم والتورم، خارج الاذن الى وجود نوع مختلف من العدوى.\n\n \n\nهل تلاحظ اي احمرار او تورم في الجزء الخارجي للاذن؟', 'أنف و أذن و حنجرة'),
(17, '0000-00-00 00:00:00', NULL, 'الم الصدر', 'التعرض لالم الصدر يتطلب تقييما دائما بواسطة طبيبك. واذا كان الالم شديدا، يجب ان تطلب المساعدة الطبية فورا.\n\nحتى ان كان الم الصدر غير شديد، تكون هناك حاجة الى الرعاية الطارئة، اذا كان الم الصدر ضاغطا، عاصرا، يصاحبه واحد او اكثر من الاعراض التالية:', 'الصدر والظهر'),
(18, NULL, NULL, 'خفقان القلب', 'مرحبا بك في دليلنا حول خفقان القلب.\n\nنحن لا نشعر بنبضات قلوبنا عادة. عندما نجهد انفسنا او نكون قلقين نتوقع ان نشعر بضربات قلوبنا، لانها تسرع وتكون اكثر قوة.\n\nربما تكون هناك اوقات تشعر فيها بضربات قلبك بشكل غير متوقع. يطلق على هذا الاحساس اسم خفقان القلب. قد تشعر ان قلبك ينقبض بشكل سريع جدا، بطيء جدا، غير منتظم او يكون كنبض ثابت في صدرك. تعد هذه الاحاسيس جميعها اشكال لخفقان القلب.\n\nفي هذا الدليل سوف توجه لك سلسلة من الاسئلة التي تقدم لك الاسباب الاكثر شيوعا، لحدوث خفقان القلب عندك.\n\nصممنا هذا الدليل ليساعدك على فهم الاسباب المحتملة لخفقان القلب عندك. وهو ليس بديلا لاستشارة طبيبك.', 'الصدر والظهر'),
(21, '0000-00-00 00:00:00', NULL, 'الم اسفل الظهر', 'مرحبا بك في دليل الام اسفل الظهر. نحن ناسف لان ظهرك يزعجك!\n\nهدف هذا الدليل هو تقديم المعلومات اثناء انتظار التقييم من قبل الطبيب او تقديم معلومات اضافية بعد رؤية طبيبك. من فضلك خذ في عين الاعتبار ان هذا الدليل لا يقصد به ان يكون بديلا للتقييم وجها لوجه مع طبيبك. التشخيصات التي نوقشت هنا هي من بين التشخيصات الاكثر شيوعا التي يمكن ان تفسر اعراضك، لكن القائمة ليست مكتملة تماما وربما تكون هناك احتمالات عديدة اخرى.\n\nاضافة الى ذلك، قد تكون هناك اكثر من حالة واحدة في الوقت نفسه. فعلى سبيل المثال، الشخص الذي يعاني من التهاب المفاصل الروماتويدي (rheumatoid arthritis)، يمكن ان يعاني من التهاب اوتار العضلات (tendonitis) ايضا.', 'الصدر والظهر'),
(22, '0000-00-00 00:00:00', NULL, 'المرفق', 'ناسف لانك تعاني من الم المرفق!\n\nمن فضلك خذ دقائق قليلة للاجابة عن بعض الاسئلة، وسوف يقدم هذا الدليل بعض الاسباب الاكثر شيوعا، ويقدم بعض المعلومات المفيدة. من فضلك ضع في حسبانك ان هذا الدليل لا يشكل بديلا للتشخيص المباشر من قبل طبيبك.\n\nوالتشخيصات التي بحثت هي من بين التشخيصات الاكثر شيوعا التي يمكن ان تفسر اعراضك، لكن القائمة ليست مكتملة تماما، وربما تكون هناك احتمالات اخرى. واضافة الى ذلك، ربما يوجد هناك اكثر من سبب واحد في الوقت نفسه. فمثلا، الشخص الذي يعاني من التهاب المفاصل الروماتويدي rheumatoid arthritis، يمكن ان يعاني ايضا من اعتلال العصب الزندي ulnar neuropathy، لان تورم المرفق يضغط على التركيبات المحيطة.', 'الذراعين واليدين'),
(23, NULL, NULL, 'اليد', 'ناسف لانك تعاني من الم اليد.\n\nهدف هذا الدليل هو تقديم المعلومات اثناء انتظار التقييم مع الطبيب او تقديم معلومات اضافية بعد رؤية طبيبك. الرجاء الاخذ في عين الاعتبار بان هذا الدليل لا يقصد به ان يكون بديلا للتقييم وجها لوجه مع طبيبك.\n\nقد يحدث الم اليد لاسباب عديدة، منها: الكسور والعدوى التي هي من بين الاسباب الاكثر خطرا، بينما الالتواء والتهاب المفاصل من بين الاسباب الاكثر شيوعا. في نهاية هذا الدليل سوف نقدم لك روابط لمعلومات اكثر تفصيلا عن الاسباب الاكثر شيوعا لالم اليد، رغم ذلك، هناك اسباب نادرة لهذه الاعراض، سوف نذكرها هنا والتي تحتاج الى تقييم اكثر تفصيلا من الذي يقدمه هذا الدليل.\n\nهناك اعراض معينة ترجح وجود سبب خطير لالم اليد، تتطلب اهتماما فوريا. من المهم ان نسال اسئلة عن هذه الاعراض بداية.', 'الذراعين واليدين'),
(24, '0000-00-00 00:00:00', NULL, 'مشاكل الأظافر', 'ناسف لمعرفتنا انك تعاني من مشكلة في اظافرك.\n\nالرجاء الاخذ في عين الاعتبار، بان هذا الدليل لا يقصد به ان يكون بديلا للتقييم وجها لوجه مع طبيبك. هدف هذا الدليل هو تقديم المعلومات اثناء انتظار التقييم مع الطبيب او معلومات اضافية بعد رؤية طبيبك.\n\nيمكن ان تحدث مشاكل الاظافر لعدد من الاسباب: التهاب الجلد، الظفر الناشب (ingrown nail) والصدفية هي من بين الاسباب الاكثر شيوعا. لكن العدوى هي من بين الاسباب الاكثر خطورة. يجب تقييم اي مشكلة في الاظافر، لا تتحسن مع مرور الوقت بواسطة الطبيب.\n\nفي نهاية هذا الدليل سوف يتم تقديم روابط لمعلومات اكثر تفصيلا عن مشاكل الاظافر الاكثر شيوعا، ورغم ذلك هناك اسباب نادرة لن نذكرها هنا، وستحتاج الى تقييم مفصل اكثر، عن الذي يقدمه هذا الدليل.', 'الذراعين واليدين'),
(25, NULL, NULL, 'عامل روماتويدي إيجابي', 'مرحبا بك في دليل العامل الروماتويدي الايجابي.\n\nتم تصميم هذا الدليل من اجل الاشخاص الذين لديهم عامل روماتويدي ايجابي، والذين يرغبون في معرفة المزيد عن هذا الاختبار، وماذا يمكن ان تعني نتيجة هذا الاختبار.\n\nهدف هذا الدليل هو تقديم المعلومات اثناء انتظار التقييم بواسطة الطبيب، او تقديم معلومات اضافية بعد رؤية طبيبك. من فضلك ضع في اعتبارك، ان هذا الدليل لا يقصد به ان يكون بديلا للتقييم وجها لوجه مع طبيبك. والتشخيصات التي نوقشت هنا هي من بين التشخيصات الاكثر شيوعا، التي يمكن ان تفسر اعراضك، لكن القائمة ليست مكتملة تماما، وربما تكون هناك احتمالات عديدة اخرى. واضافة الى ذلك، ربما توجد هناك اكثر من حالة واحدة في الوقت نفسه.\n\nاول شيء: لا تقلق! هذا الاختبار ليس دقيقا جدا، لدرجة ان نتيجته لا تعني شيئا حتميا! واعتمادا على اعراضك، وسبب طلب اجراء الاختبار، يمكن عادة تحديد اهمية (او عدم اهمية) نتيجة اختبارك.', 'الذراعين واليدين'),
(31, '0000-00-00 00:00:00', NULL, 'ألم القدم', '\nنأسف لانك تعاني من الم القدم! من فضلك ضع في حسبانك، ان هذا المرشد لا يقصد به ان يكون بديلا للتشخيص المباشر من قبل طبيبك. وهدف هذا المرشد هو تقديم المعلومات اثناء انتظار التشخيص بواسطة الطبيب، او معلومات اضافية بعد مراجعة طبيبك، او طبيبتك. قد يحدث الم القدم لاسباب عديدة، منها: الكسور والعدوى من بين الاسباب الاكثر خطرا، بينما الالتواء والتهاب المفاصل من بين الاسباب الاكثر شيوعا. في نهاية هذا الدليل سوف يتم تقديم روابط لمعلومات اكثر تفصيلا عن الاسباب الاكثر شيوعا لالم القدم، ورغم ذلك هناك اسباب نادرة لهذه الاعراض، سوف نذكرها هنا، وتحتاج الى تقييم اكثر تفصيلا عن الذي يقدمه هذا الدليل. وتكون الاعراض التحذيرية التي يمكن ان تشير الى وجود اصابة خطيرة لعظمة، او رباط هي الالم الشديد، او التورم، او الكدمات، او عدم القدرة على حمل الاشياء. وعندما توجد الحمى، تكون العدوى من المخاوف الكبرى. رغم ذلك، لا يكون لدى معظم الاشخاص الذين يعانون من الم القدم، سبب خطير. وفي الحقيقة، يعاني العديد من الناس من الالم بسبب الاحذية غير المناسبة، او الضيقة جدا، حاول تغيير حذائك الى حذاء ببطانة اكثر، يدعم ويمنح حيزا لقدميك، واستمر في القراءة لمعرفة المزيد عن اسباب الم القدم. وهنالك اعراض معينة، ترجح وجود سبب خطير لالم القدم التي تتطلب اهتماما فوريا. من المهم ان نسال اسئلة عن هذه الاعراض بداية.\n\n', 'الساقين'),
(32, NULL, NULL, 'نقرس', '.يؤسفنا ان نسمع انك تعاني من النقرس .هدف هذا الدليل، هو تقديم المعلومات أثناء انتظار التقييم مع الطبيب، أو معلومات إضافية بعد رؤية طبيبك من فضلك الاخذ بعين الاعتبار ان هذا الدليل لا يقصد به ان يكون بديلا للتقييم وجها لوجه مع طبيبك : اولا، بعض المعلومات الاساسية عن الحالة نفسها النقرس هو حالة يحدث فيها التهاب لمفصل، او اكثر بسبب ترسب بلورات حمض اليوريك فيها. وحمض اليوريك هو منتج طبيعي، من الوظائف الطبيعية للجسم، ويزال من الجسم بواسطة الكلى.', 'الساقين'),
(33, '0000-00-00 00:00:00', NULL, 'ألم الركبة', 'ناسف لانك تعاني من الم الركبة! هدف هذا الدليل هو تقديم المعلومات اثناء انتظار التقييم بواسطة الطبيب او تقديم معلومات اضافية بعد رؤية طبيبك. من فضلك خذ في عين الاعتبار ان هذا الدليل لا يقصد به ان يكون بديلا للتقييم وجها لوجه مع طبيبك. التشخيصات التي نوقشت هي من بين التشخيصات الاكثر شيوعا التي يمكن ان تفسر اعراضك، لكن القائمة ليست مكتملة تماما، قد تكون هناك احتمالات عديدة اخرى. اضافة الى ذلك، ربما تكون هناك اكثر من حالة واحدة في الوقت نفسه. على سبيل المثال، الشخص الذي يعاني من التهاب المفاصل الروماتويدي ، يمكن ان يعاني من التهاب اوتار العضلات ايضا. يسمح التركيب التشريحي المعقد للركبة، بقوة وثبات ومرونة هذا المفصل الهام هل تعاني من واحد او اكثر من التالي، الى جانب الم ركبتك:\n', 'الساقين'),
(36, '0000-00-00 00:00:00', NULL, 'ألم الكتف', 'ناسف لانك تعاني من الم الكتف!\r\n\r\nهدف هذا الدليل هو تقديم المعلومات اثناء انتظار التشخيص بواسطة الطبيب، او تقديم معلومات اضافية بعد رؤية طبيبك. من فضلك ضع في اعتبارك ان هذا الدليل لا يقصد به ان يغني عن التشخيص المباشر من قبل طبيبك. والتشخيصات التي نوقشت هنا هي من بين التشخيصات الاكثر شيوعا التي يمكن ان تفسر اعراضك، لكن القائمة ليست مكتملة تماما، وربما تكون هناك احتمالات عديدة اخرى. واضافة الى ذلك، ربما توجد هناك اكثر من حالة واحدة في الوقت نفسه. على سبيل المثال، الشخص الذي يعاني من التهاب المفاصل الروماتويدي rheumatoid arthritis يمكن ان يعاني من التهاب اوتار العضلات tendonitis ايضا. \r\n\r\nتكون الكتف معرضة للالم جزئيا بسبب تشريحها المعقد، وبسبب نطاق حركتها الاكبر من اي مفصل في الجسم. وتكون بعض هذه العضلات، او الاوتار، او الاكياس اسبابا شائعة لالم الكتف، حتى عندما يكون المفصل نفسه بحالة جيدة.', 'الذراعين واليدين'),
(37, '0000-00-00 00:00:00', NULL, 'الامساك عند الكبار', 'هدف هذا الدليل هو تقديم المعلومات والنصيحة للاشخاص الذين يعانون من اعراض الامساك (Constipation).هذا الدليل لا يشكل بديلا عن الاستشارة الطبية لدى الطبيب الخاص.\r\n\r\nيمكن لهذا الدليل ان يشكل مكملا للتقييم لدى الطبيب.\r\n\r\nدليل الامساك هذا يقدم توصيات متعلقة بالتقييم والعلاج، اعتمادا على الاجابات التي تقدمها على سلسلة الاسئلة.\r\n\r\nعدد الاسئلة يتحدد من خلال اعراضك. سوف يتم سؤالك 12 سؤالا على الاقل، مع اسئلة اضافية متعلقة بعمرك، جنسك او اعراضك.\r\n\r\nالوقت المطلوب لاكمال الدليل: من 10 الى 20 دقيقة.', 'البطن و الحوض'),
(38, NULL, NULL, 'الاسهال', 'هذا الدليل مصمم؛ كي يساعدك على فهم الاسباب الاكثر احتمالا لاعراضك.\r\n\r\nاذا كان الاسهال لديك شيئا اساسيا او اذا كنت تعاني من اعراض اخرى غير معروفة السبب، مثل: الارهاق، الم البطن، فقد الوزن، دم مع البراز او اذا استمر الاسهال لديك لمدة اطول من خمسة ايام، يجب ان تزور طبيبك لمناقشة اعراضك. هذا الدليل يقصد به ان يستخدم كمرشد لدى استشارتك الطبيب وليس بديلا للرعاية المقدمة في العيادة.\r\n\r\nامامك مجموعة صغيرة من الاسئلة، بخصوص تجربتك مع الاسهال اثناء مضيك قدما في هذا البرنامج. اجاباتك ستقودك تجاه المعلومات الاكثر صلة بحالتك.', 'البطن و الحوض');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `is_admin`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'mostafa hamed', 'male', 1, 'mostafa.hamed1944@gmail.com', NULL, '$2y$10$z7xGNrU5qiYhlCXo1EeOYuiBKJQySORcTV/z0HFdmxnEBHtC2abr6', 'H3csOdVInEq5ssJRzhk7WbUpPPkL2FYZ56BA5MFdffqBaydY2MvKVjoVwLdR', '2019-02-03 08:25:09', '2019-02-03 08:25:09'),
(3, 'lkmxk', 'male', 0, 'MOSTFA@GMAI.COM', NULL, '$2y$10$bJ9iM1vfovdXcNaj0AjvUut79n4m3H1J0JS7uD2CLCHoETZr5GWP2', NULL, '2019-02-11 23:01:15', '2019-02-11 23:01:15'),
(4, 'ahmed', 'male', 0, 'admin@admin.com', NULL, '$2y$10$RYZL0GoZds2ouXXbtgG8MeKyjnpnkTRvVKhnWwda7OwO/44kygmny', 'F6h5Dotvq1VJ3LwuUf7aUrLm1UdPTRRbcUFYYJalDXpWnyNOuZtiV0REIrjV', '2019-02-13 13:09:00', '2019-02-13 13:09:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
