import 'package:audioplayers/audioplayers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:vig/controller/landing/landing.dart';

import '../../controller/games/memory.dart';
import '../../controller/games/shopping.dart';
import '../../controller/games/spot.dart';
import '../../controller/shopping/shopping.dart';
import '../../controller/std/home.dart';
import '../../controller/std/login.dart';
import '../../controller/std/register.dart';
import '../../controller/study/promo/promo.dart';
import '../../controller/teacher/home.dart';
import '../../controller/teacher/login.dart';
import '../../controller/teacher/register.dart';
import '../../controller/study/todo/std.dart';
import '../../controller/tests/teacher.dart';
import '../../core/class/statusrequest.dart';
import '../../helpers/helpers.dart';
import '../widgets/widgets.dart';

part 'home/home.dart';
part 'home/choose_type.dart';

part 'study/home.dart';

part 'auth/std/login.dart';
part 'auth/std/register.dart';
part 'auth/std/home.dart';

part 'auth/teacher/login.dart';
part 'auth/teacher/register.dart';
part 'auth/teacher/home.dart';
part 'teacher/tests/tests.dart';
part 'teacher/tests/add_test.dart';

part 'auth/parent/login.dart';
part 'auth/parent/register.dart';

part 'study/todo/todo.dart';
part 'study/promodoro/home.dart';
part 'study/promodoro/timer.dart';

part 'games/home.dart';

part 'supportTeacher/home.dart';
part 'supportTeacher/email.dart';

part 'games/spot/levels.dart';
part 'games/spot/spot.dart';

part 'games/memory/levels.dart';
part 'games/memory/memory.dart';

part 'games/shopping/levels.dart';
part 'games/shopping/shop.dart';
part 'games/shopping/math.dart';
part 'games/shopping/select.dart';

part 'shop/home.dart';