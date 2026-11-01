.class public abstract Lcn/trinea/developertools/MyApplication;
.super Lcn/trinea/android/lib/view/BaseApplication;
.source "SourceFile"

# interfaces
.implements Lg/dfn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/trinea/android/lib/view/BaseApplication;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    sget-boolean v0, Lg/byh;->k:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {p0}, Lc/b/b;->v(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "opu"

    if-eqz v0, :cond_3

    :try_start_1
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lg/crv;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0}, Lg/crv;-><init>()V

    iget-object v2, v0, Lg/cw;->c:Ljava/io/Serializable;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lg/cw;->f()Lg/dze;

    move-result-object v0

    check-cast v0, Lg/dqj;

    invoke-static {p0}, Lg/awt;->n(Landroid/content/Context;)Lg/fxb;

    move-result-object p0

    sget-object v1, Lg/bbt;->REPLACE:Lg/bbt;

    invoke-virtual {p0, v1, v0}, Lg/fxb;->bh(Lg/bbt;Lg/dqj;)Lg/gev;

    return-void

    :cond_3
    :goto_0
    invoke-static {p0}, Lg/awt;->n(Landroid/content/Context;)Lg/fxb;

    move-result-object p0

    invoke-virtual {p0, v1}, Lg/fxb;->bj(Ljava/lang/String;)Lg/gev;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Fc in Application."

    invoke-static {v0, p0}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 39

    move-object/from16 v1, p0

    const v0, 0x7f1203e4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v0, 0x7f120493

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v0, 0x7f120191

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f120441

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v0, 0x7f120241

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v0, 0x7f120197

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v0, 0x7f120444

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v0, 0x7f1203c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v0, 0x7f12045e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-super {v1}, Lcn/trinea/android/lib/view/BaseApplication;->onCreate()V

    invoke-static {}, Lg/byh;->bc()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v12, "lang"

    invoke-static {v1}, Lg/cux;->z(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v13

    if-nez v13, :cond_1

    move-object v13, v11

    goto :goto_0

    :cond_1
    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    :goto_0
    invoke-static {v0, v12, v13}, Lcom/tencent/bugly/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v12, La/u/e/TUE;

    const-string v13, "putCrashReportUserData"

    invoke-direct {v12, v13, v0}, La/u/e/TUE;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v12}, Lcom/tencent/bugly/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;)V

    :goto_1
    new-instance v0, Lg/cuf;

    const/4 v12, 0x7

    invoke-direct {v0, v12}, Lg/cuf;-><init>(I)V

    sput-object v0, Lg/cro;->q:Lg/cuf;

    new-instance v0, Lg/cfg;

    const/16 v12, 0x8

    invoke-direct {v0, v12}, Lg/cfg;-><init>(I)V

    sput-object v0, Lg/erl;->q:Lg/cfg;

    new-instance v0, Lg/acq;

    const/16 v13, 0x18

    invoke-direct {v0, v13}, Lg/acq;-><init>(I)V

    sput-object v0, Lg/dzm;->p:Lg/acq;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    new-instance v13, Lg/fbc;

    invoke-direct {v13, v12}, Lg/fbc;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v12, Lg/fgj;

    monitor-enter v12

    :try_start_1
    iput-object v13, v0, Lg/fgj;->c:Lg/fbc;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v13, 0x1

    invoke-direct {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v12, 0x1c

    invoke-static {v12}, Lg/dyd;->bp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lg/ezg;->d()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v14, v0

    goto :goto_5

    :cond_2
    const/16 v0, 0x12

    :try_start_2
    invoke-static {v0}, Lg/dyd;->bp(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "currentProcessName"

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_3
    const-string v0, "currentPackageName"

    :goto_3
    const-string v14, "android.app.ActivityThread"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14, v0, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v11, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :goto_4
    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    move-object v14, v11

    :goto_5
    if-eqz v14, :cond_6

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v12}, Lg/dyd;->bp(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ":"

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, "."

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-le v0, v2, :cond_4

    goto :goto_6

    :cond_4
    move v0, v2

    :goto_6
    if-ltz v0, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v13

    if-gt v0, v2, :cond_5

    add-int/2addr v0, v13

    :try_start_3
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/ezg;->l(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    const-string v2, "setDataDirectorySuffix exception"

    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_7
    return-void

    :cond_6
    invoke-static {v1}, Lg/fml;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v12

    invoke-virtual {v12}, Lg/atf;->o()Z

    invoke-static {v1, v0}, Lcn/trinea/android/lib/view/BaseApplication;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lg/cyz;->al(Landroid/content/Context;)V

    const-string v0, "uploaded_dpi"

    const-string v12, "current_version_code"

    invoke-static {v1}, Lg/eyt;->bj(Landroid/content/Context;)I

    move-result v14

    invoke-static {v1, v14, v12}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    const-string v12, "first_open_time"

    const-string v14, "TrineaAndroidCommon"

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const-wide/16 v2, -0x1

    invoke-interface {v14, v12, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    cmp-long v14, v2, v18

    if-nez v14, :cond_7

    sget-object v2, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v12, v2, v3}, Lg/acw;->s(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_7
    const-string v2, "TrineaAndroidCommon"

    invoke-virtual {v1, v2, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v0, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1, v0, v13}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v0, v11

    goto :goto_8

    :cond_8
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0}, Lg/fso;->t(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dpi_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lg/dzm;->ao(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_a

    new-instance v0, Lg/ctt;

    invoke-direct {v0, v1}, Lg/ctt;-><init>(Lcn/trinea/developertools/MyApplication;)V

    sput-object v0, Lg/erl;->s:Lg/ctt;

    :cond_a
    const v0, 0x7f120210

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v3, 0x7f120212

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v12, 0x7f12025c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v14, 0x7f12026e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v11, "stay_awake"

    const-string v2, "dont_keep_activities"

    const-string v13, "strict_mode"

    const-string v15, "pointer_location"

    move-object/from16 v22, v4

    const-string v4, "gpu_view_update"

    move-object/from16 v23, v5

    const-string v5, "force_gpu_rendering"

    move-object/from16 v24, v6

    const-string v6, "usb_debugging"

    move-object/from16 v25, v7

    const-string v7, "running_services"

    move-object/from16 v26, v8

    const-string v8, "surface_update"

    move-object/from16 v27, v9

    const-string v9, "layout_bounds"

    move-object/from16 v28, v10

    const-string v10, "track_gpu_frame"

    move-object/from16 v29, v0

    const-string v0, "overdraw"

    invoke-static {}, Lg/dzm;->bc()Z

    move-result v30

    move-object/from16 v31, v3

    const/16 v3, 0x358

    if-eqz v30, :cond_b

    invoke-static {v1}, Lg/dzm;->at(Landroid/content/Context;)Z

    move-result v30

    if-nez v30, :cond_b

    move-object/from16 v30, v12

    const/4 v12, 0x0

    invoke-static {v12, v3}, Lg/buj;->be(II)I

    move-result v21

    move/from16 v3, v21

    :goto_9
    const/16 v12, 0x358

    goto :goto_a

    :cond_b
    move-object/from16 v30, v12

    const/4 v12, 0x0

    const/16 v3, 0x241b

    invoke-static {v12, v3}, Lg/buj;->be(II)I

    move-result v3

    add-int/lit16 v3, v3, 0x359

    goto :goto_9

    :goto_a
    if-ge v3, v12, :cond_c

    :try_start_4
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "t"

    invoke-static {}, Lg/dlb;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_b
    move-object v11, v1

    goto/16 :goto_12

    :catch_3
    move-exception v0

    new-instance v2, La/u/e/TUE;

    const-string v3, "pcre"

    invoke-direct {v2, v3, v0}, La/u/e/TUE;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_c
    new-instance v3, Lg/byz;

    const-string v12, "debug"

    move-object/from16 v32, v14

    const v14, 0x7f120482

    invoke-direct {v3, v12, v14}, Lg/byz;-><init>(Ljava/lang/String;I)V

    const/16 v12, 0x10

    iput v12, v3, Lg/byz;->b:I

    new-instance v14, Lg/dwm;

    const/16 v33, 0x10

    const/16 v12, 0x1d

    invoke-direct {v14, v12}, Lg/dwm;-><init>(I)V

    new-instance v12, Lg/ert;

    const v1, 0x7f12007f

    move-object/from16 v34, v11

    const v11, 0x7f080083

    invoke-direct {v12, v9, v1, v11}, Lg/ert;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x1

    iput-boolean v1, v12, Lg/ert;->b:Z

    const-string v11, "c.e.da"

    iput-object v11, v12, Lg/ert;->v:Ljava/lang/String;

    iput-object v14, v12, Lg/ert;->r:Lg/hdb;

    const v11, 0x7f1200f7

    move-object/from16 v35, v9

    const v9, 0x7f080090

    invoke-static {v3, v12, v0, v11, v9}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v9

    iput-boolean v1, v9, Lg/ert;->b:Z

    iput-boolean v1, v9, Lg/ert;->g:Z

    const-string v11, "c.e.db"

    iput-object v11, v9, Lg/ert;->v:Ljava/lang/String;

    iput-object v14, v9, Lg/ert;->r:Lg/hdb;

    const v11, 0x7f12010e

    const v12, 0x7f0800a8

    invoke-static {v3, v9, v10, v11, v12}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v9

    iput-boolean v1, v9, Lg/ert;->b:Z

    iput-boolean v1, v9, Lg/ert;->g:Z

    const-string v11, "c.e.dc"

    iput-object v11, v9, Lg/ert;->v:Ljava/lang/String;

    iput-object v14, v9, Lg/ert;->r:Lg/hdb;

    const v11, 0x7f12017f

    const v12, 0x7f0800cc

    invoke-static {v3, v9, v8, v11, v12}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v9

    iput-boolean v1, v9, Lg/ert;->b:Z

    const-string v1, "c.e.dd"

    iput-object v1, v9, Lg/ert;->v:Ljava/lang/String;

    iput-object v14, v9, Lg/ert;->r:Lg/hdb;

    const v1, 0x7f12020c

    const v11, 0x7f0800da

    invoke-static {v3, v9, v7, v1, v11}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v1

    const/4 v12, 0x0

    iput-boolean v12, v1, Lg/ert;->w:Z

    const-string v9, "c.e.de"

    iput-object v9, v1, Lg/ert;->v:Ljava/lang/String;

    iput-object v14, v1, Lg/ert;->r:Lg/hdb;

    const v9, 0x7f120233

    const v11, 0x7f0800e4

    invoke-static {v3, v1, v6, v9, v11}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v1

    const/4 v9, 0x1

    iput-boolean v9, v1, Lg/ert;->b:Z

    const-string v11, "c.e.df"

    iput-object v11, v1, Lg/ert;->v:Ljava/lang/String;

    iput-object v14, v1, Lg/ert;->r:Lg/hdb;

    const v11, 0x7f120247

    const v12, 0x7f0800e6

    invoke-static {v3, v1, v5, v11, v12}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v1

    iput-boolean v9, v1, Lg/ert;->b:Z

    const-string v11, "c.e.dg"

    iput-object v11, v1, Lg/ert;->v:Ljava/lang/String;

    iput-object v14, v1, Lg/ert;->r:Lg/hdb;

    const v11, 0x7f12024e

    const v12, 0x7f0800e9

    invoke-static {v3, v1, v4, v11, v12}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v1

    iput-boolean v9, v1, Lg/ert;->b:Z

    const-string v9, "c.e.dh"

    iput-object v9, v1, Lg/ert;->v:Ljava/lang/String;

    iput-object v14, v1, Lg/ert;->r:Lg/hdb;

    const-string v9, "developer_options"

    const v11, 0x7f12025a

    const v12, 0x7f080113

    invoke-static {v3, v1, v9, v11, v12}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v1

    const-string v9, "c.e.di"

    iput-object v9, v1, Lg/ert;->v:Ljava/lang/String;

    new-instance v9, Lg/cfg;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Lg/cfg;-><init>(I)V

    iput-object v9, v1, Lg/ert;->r:Lg/hdb;

    const-string v9, "locale_settings"

    const v11, 0x7f12026c

    const v12, 0x7f08011d

    invoke-static {v3, v1, v9, v11, v12}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v1

    const-string v9, "c.e.dj"

    iput-object v9, v1, Lg/ert;->v:Ljava/lang/String;

    new-instance v9, Lg/fbc;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Lg/fbc;-><init>(I)V

    iput-object v9, v1, Lg/ert;->r:Lg/hdb;

    const-string v9, "system_settings"

    const v11, 0x7f12026d

    const v12, 0x7f08011f

    invoke-static {v3, v1, v9, v11, v12}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v1

    const-string v9, "c.e.dk"

    iput-object v9, v1, Lg/ert;->v:Ljava/lang/String;

    new-instance v9, Lg/gpu;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Lg/gpu;-><init>(I)V

    iput-object v9, v1, Lg/ert;->r:Lg/hdb;

    const v9, 0x7f120273

    const v11, 0x7f080121

    invoke-static {v3, v1, v15, v9, v11}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v1

    const/4 v9, 0x1

    iput-boolean v9, v1, Lg/ert;->b:Z

    const-string v11, "c.e.dl"

    iput-object v11, v1, Lg/ert;->v:Ljava/lang/String;

    iput-object v14, v1, Lg/ert;->r:Lg/hdb;

    const v11, 0x7f1202fa

    const v12, 0x7f08013f

    invoke-static {v3, v1, v13, v11, v12}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v1

    iput-boolean v9, v1, Lg/ert;->b:Z

    const-string v11, "c.e.dm"

    iput-object v11, v1, Lg/ert;->v:Ljava/lang/String;

    iput-object v14, v1, Lg/ert;->r:Lg/hdb;

    const v11, 0x7f120347

    const v12, 0x7f080175

    invoke-static {v3, v1, v2, v11, v12}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v1

    iput-boolean v9, v1, Lg/ert;->b:Z

    const-string v11, "c.e.dn"

    iput-object v11, v1, Lg/ert;->v:Ljava/lang/String;

    iput-object v14, v1, Lg/ert;->r:Lg/hdb;

    const v11, 0x7f12037a

    const v12, 0x7f08018f

    move-object/from16 v36, v7

    move-object/from16 v7, v34

    invoke-static {v3, v1, v7, v11, v12}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v1

    iput-boolean v9, v1, Lg/ert;->b:Z

    const-string v9, "c.e.do"

    iput-object v9, v1, Lg/ert;->v:Ljava/lang/String;

    iput-object v14, v1, Lg/ert;->r:Lg/hdb;

    const-string v9, "tuner"

    const v11, 0x7f1203bd

    const v12, 0x7f080196

    invoke-static {v3, v1, v9, v11, v12}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v1

    const/16 v9, 0x17

    iput v9, v1, Lg/ert;->h:I

    const-string v11, "c.e.dp"

    iput-object v11, v1, Lg/ert;->v:Ljava/lang/String;

    new-instance v11, Lg/ezp;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-object v11, v1, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v3, v1}, Lg/byz;->e(Lg/ert;)V

    const/4 v1, -0x1

    move-object/from16 v11, p0

    invoke-static {v1, v11, v3}, Lg/acr;->bs(ILandroid/content/Context;Lg/byz;)V

    new-instance v3, Lg/byz;

    const-string v12, "common"

    const v14, 0x7f120481

    invoke-direct {v3, v12, v14}, Lg/byz;-><init>(Ljava/lang/String;I)V

    invoke-static {v11}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v12

    invoke-virtual {v12}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v12

    if-eqz v12, :cond_e

    iget-boolean v14, v12, Lg/fxe$a;->isShowJSON:Z

    if-eqz v14, :cond_e

    iget-object v12, v12, Lg/fxe$a;->jsonUrl:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_c

    :cond_d
    new-instance v12, Lg/ert;

    const-string v14, "json"

    const v9, 0x7f12047d

    const v1, 0x7f08011e

    invoke-direct {v12, v14, v9, v1}, Lg/ert;-><init>(Ljava/lang/String;II)V

    const-string v1, "json_new"

    const-string v9, "TrineaAndroidCommon"

    const/4 v14, 0x0

    invoke-virtual {v11, v9, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const/4 v14, 0x1

    invoke-interface {v9, v1, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v12, Lg/ert;->c:Z

    new-instance v1, Lg/blk;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v12, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v3, v12}, Lg/byz;->e(Lg/ert;)V

    :cond_e
    :goto_c
    invoke-static {v11}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-boolean v9, v1, Lg/fxe$a;->isShowMD5:Z

    if-eqz v9, :cond_10

    iget-object v1, v1, Lg/fxe$a;->md5Url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_d

    :cond_f
    new-instance v1, Lg/ert;

    const-string v9, "md5"

    const v12, 0x7f12047e

    const v14, 0x7f08013e

    invoke-direct {v1, v9, v12, v14}, Lg/ert;-><init>(Ljava/lang/String;II)V

    const-string v9, "md5_new"

    const-string v12, "TrineaAndroidCommon"

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12, v9, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v1, Lg/ert;->c:Z

    new-instance v9, Lg/gtc;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, v1, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v3, v1}, Lg/byz;->e(Lg/ert;)V

    :cond_10
    :goto_d
    invoke-static {v11}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-boolean v9, v1, Lg/fxe$a;->isShowMultilineProcess:Z

    if-eqz v9, :cond_12

    iget-object v1, v1, Lg/fxe$a;->multilineProcessUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_e

    :cond_11
    new-instance v1, Lg/ert;

    const-string v9, "multiline_process"

    const v12, 0x7f12047f

    const v14, 0x7f080173

    invoke-direct {v1, v9, v12, v14}, Lg/ert;-><init>(Ljava/lang/String;II)V

    const-string v9, "multiline_process_new"

    const-string v12, "TrineaAndroidCommon"

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    const/4 v14, 0x1

    invoke-interface {v12, v9, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v1, Lg/ert;->c:Z

    new-instance v9, Lg/lu;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, v1, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v3, v1}, Lg/byz;->e(Lg/ert;)V

    :cond_12
    :goto_e
    const/4 v1, -0x1

    invoke-static {v1, v11, v3}, Lg/acr;->bs(ILandroid/content/Context;Lg/byz;)V

    new-instance v1, Lg/byz;

    const-string v3, "system"

    const v9, 0x7f120484

    invoke-direct {v1, v3, v9}, Lg/byz;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lg/ert;

    const-string v12, "system_properties"

    const v14, 0x7f12048c

    move-object/from16 v37, v10

    const v10, 0x7f080119

    invoke-direct {v9, v12, v14, v10}, Lg/ert;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lg/cuf;

    const/4 v12, 0x3

    invoke-direct {v10, v12}, Lg/cuf;-><init>(I)V

    iput-object v10, v9, Lg/ert;->r:Lg/hdb;

    const v10, 0x7f12048b

    const v14, 0x7f08011a

    invoke-static {v1, v9, v3, v10, v14}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v3

    new-instance v9, Lg/cfg;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Lg/cfg;-><init>(I)V

    iput-object v9, v3, Lg/ert;->r:Lg/hdb;

    const-string v9, "hardware"

    const v14, 0x7f120487

    const/16 v38, 0x3

    const v12, 0x7f080115

    invoke-static {v1, v3, v9, v14, v12}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v3

    new-instance v9, Lg/fbc;

    invoke-direct {v9, v10}, Lg/fbc;-><init>(I)V

    iput-object v9, v3, Lg/ert;->r:Lg/hdb;

    const-string v9, "density"

    const v12, 0x7f120492

    const v14, 0x7f08024a

    invoke-static {v1, v3, v9, v12, v14}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v3

    new-instance v9, Lg/gpu;

    invoke-direct {v9, v10}, Lg/gpu;-><init>(I)V

    iput-object v9, v3, Lg/ert;->r:Lg/hdb;

    const-string v9, "network"

    const v12, 0x7f12048a

    const v14, 0x7f080118

    invoke-static {v1, v3, v9, v12, v14}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v3

    new-instance v9, Lg/bli;

    invoke-direct {v9, v10}, Lg/bli;-><init>(I)V

    iput-object v9, v3, Lg/ert;->r:Lg/hdb;

    const-string v9, "vm"

    const v12, 0x7f12048d

    const v14, 0x7f08011b

    invoke-static {v1, v3, v9, v12, v14}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v3

    new-instance v9, Lg/cuf;

    invoke-direct {v9, v10}, Lg/cuf;-><init>(I)V

    iput-object v9, v3, Lg/ert;->r:Lg/hdb;

    const-string v9, "cpu"

    const v12, 0x7f120486

    const v14, 0x7f080114

    invoke-static {v1, v3, v9, v12, v14}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v3

    new-instance v9, Lg/cfg;

    const/4 v12, 0x5

    invoke-direct {v9, v12}, Lg/cfg;-><init>(I)V

    iput-object v9, v3, Lg/ert;->r:Lg/hdb;

    const-string v9, "my_apps"

    const v14, 0x7f120489

    const v10, 0x7f080117

    invoke-static {v1, v3, v9, v14, v10}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v3

    new-instance v9, Lg/fbc;

    invoke-direct {v9, v12}, Lg/fbc;-><init>(I)V

    iput-object v9, v3, Lg/ert;->r:Lg/hdb;

    const-string v9, "id"

    const v10, 0x7f120488

    const v14, 0x7f080116

    invoke-static {v1, v3, v9, v10, v14}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v3

    new-instance v9, Lg/gpu;

    invoke-direct {v9, v12}, Lg/gpu;-><init>(I)V

    iput-object v9, v3, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v1, v3}, Lg/byz;->e(Lg/ert;)V

    const/4 v3, -0x1

    invoke-static {v3, v11, v1}, Lg/acr;->bs(ILandroid/content/Context;Lg/byz;)V

    new-instance v1, Lg/amd;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v11}, Lg/amd;->a(Landroid/content/Context;)Lg/byz;

    move-result-object v9

    invoke-static {v3, v11, v9}, Lg/acr;->bs(ILandroid/content/Context;Lg/byz;)V

    sget-object v3, Lg/acr;->w:Ljava/util/ArrayList;

    if-nez v3, :cond_13

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lg/acr;->w:Ljava/util/ArrayList;

    :cond_13
    sget-object v3, Lg/acr;->w:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v3, v32

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v9, v30

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lg/fnp;->m()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v11}, Lg/cux;->aj(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v10, v31

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v29

    goto :goto_f

    :cond_14
    move-object/from16 v10, v31

    sget-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v12, v29

    invoke-virtual {v1, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    sget-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v14, v28

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v32, v3

    move-object/from16 v3, v27

    invoke-virtual {v1, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v3, v26

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v30, v9

    move-object/from16 v3, v25

    move-object/from16 v9, v35

    invoke-virtual {v1, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v3, v24

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v3, v23

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v3, v22

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v31, v10

    move-object/from16 v3, v17

    move-object/from16 v10, v37

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/acr;->g:Ljava/util/HashMap;

    move-object/from16 v29, v12

    move-object/from16 v3, v16

    move-object/from16 v12, v36

    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lg/acr;->i:Ljava/util/HashMap;

    const v1, 0x7f120270

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v16, 0x7f12026f

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const v28, 0x7f120271

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v35, v1

    move-object/from16 v36, v3

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Integer;

    const/16 v21, 0x0

    aput-object v32, v3, v21

    const/16 v20, 0x1

    aput-object v35, v3, v20

    const/4 v1, 0x2

    aput-object v16, v3, v1

    aput-object v28, v3, v38

    invoke-static {v7, v3}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const v3, 0x7f12025d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v7, v1, [Ljava/lang/Integer;

    aput-object v30, v7, v21

    aput-object v3, v7, v20

    invoke-static {v2, v7}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const v2, 0x7f120211

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Integer;

    aput-object v29, v7, v21

    aput-object v2, v7, v20

    aput-object v31, v7, v1

    invoke-static {v6, v7}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const v2, 0x7f120460

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v6, 0x7f12045f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Integer;

    aput-object v14, v7, v21

    aput-object v2, v7, v20

    aput-object v6, v7, v1

    invoke-static {v13, v7}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const v2, 0x7f1203c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v6, 0x7f1203c6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Integer;

    aput-object v27, v7, v21

    aput-object v2, v7, v20

    aput-object v6, v7, v1

    invoke-static {v15, v7}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const v2, 0x7f120446

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f120445

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v6, 0x7f120447

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    new-array v13, v7, [Ljava/lang/Integer;

    aput-object v26, v13, v21

    aput-object v2, v13, v20

    aput-object v3, v13, v1

    const/16 v38, 0x3

    aput-object v6, v13, v38

    invoke-static {v8, v13}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const v2, 0x7f120198

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f12019a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v6, 0x7f120199

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Integer;

    const/16 v21, 0x0

    aput-object v25, v8, v21

    const/4 v14, 0x1

    aput-object v2, v8, v14

    aput-object v3, v8, v1

    const/16 v38, 0x3

    aput-object v6, v8, v38

    invoke-static {v9, v8}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const v2, 0x7f120242

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Integer;

    aput-object v24, v3, v21

    aput-object v2, v3, v14

    invoke-static {v5, v3}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const v2, 0x7f120442

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Integer;

    aput-object v23, v3, v21

    aput-object v2, v3, v14

    invoke-static {v4, v3}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const v2, 0x7f120196

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f120192

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f12019b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x4

    new-array v5, v7, [Ljava/lang/Integer;

    aput-object v22, v5, v21

    aput-object v2, v5, v14

    aput-object v3, v5, v1

    const/4 v3, 0x3

    aput-object v4, v5, v3

    invoke-static {v0, v5}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-array v2, v14, [Ljava/lang/Integer;

    aput-object v17, v2, v21

    invoke-static {v10, v2}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const v2, 0x7f1203e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v4, 0x7f1203e5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Integer;

    aput-object v36, v3, v21

    aput-object v2, v3, v14

    aput-object v4, v3, v1

    invoke-static {v12, v3}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const-string v2, "zuk"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const v2, 0x7f1203e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Integer;

    aput-object v2, v3, v21

    invoke-static {v12, v3}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    :cond_15
    const-string v2, "debug_overdraw_show_areas"

    const v3, 0x7f120194

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Integer;

    aput-object v3, v4, v21

    invoke-static {v2, v4}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const-string v2, "debug_overdraw_close"

    const v3, 0x7f120193

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Integer;

    aput-object v3, v4, v21

    invoke-static {v2, v4}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const-string v2, "debug_track_gpu_show"

    const v3, 0x7f120495

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Integer;

    aput-object v3, v4, v21

    invoke-static {v2, v4}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const-string v2, "debug_track_gpu_close"

    const v3, 0x7f120494

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Integer;

    aput-object v3, v4, v21

    invoke-static {v2, v4}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    const-string v2, "debug_usb_debugging_open"

    const v3, 0x7f120384

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Integer;

    aput-object v3, v4, v21

    invoke-static {v2, v4}, Lg/acr;->aw(Ljava/lang/String;[Ljava/lang/Integer;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lg/acr;->n:Ljava/util/HashMap;

    const-string v2, "debug_overdraw_close"

    const-string v3, "debug_overdraw_show_areas"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lg/acr;->af(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "debug_track_gpu_close"

    const-string v2, "debug_track_gpu_show"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lg/acr;->af(Ljava/lang/String;[Ljava/lang/String;)V

    sget v0, Lg/elf;->d:I

    invoke-static {v11}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->o()Z

    move-result v0

    invoke-static {v11, v0}, Lg/byh;->al(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto :goto_10

    :cond_16
    new-instance v0, Lg/byz;

    const-string v2, "locked_design"

    const v3, 0x7f120483

    invoke-direct {v0, v2, v3}, Lg/byz;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x17

    iput v2, v0, Lg/byz;->b:I

    new-instance v3, Lg/ert;

    const-string v8, "locked_color_picker"

    const/16 v6, 0x40

    const/4 v7, 0x0

    const v4, 0x7f120168

    const v5, 0x7f0800c5

    invoke-direct/range {v3 .. v8}, Lg/ert;-><init>(IIIILjava/lang/String;)V

    const/4 v12, 0x0

    iput-boolean v12, v3, Lg/ert;->m:Z

    iput v2, v3, Lg/ert;->h:I

    const v2, 0x7f120263

    iput v2, v3, Lg/ert;->j:I

    new-instance v2, Lg/dwm;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lg/dwm;-><init>(I)V

    iput-object v2, v3, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v3}, Lg/byz;->e(Lg/ert;)V

    new-instance v5, Lg/ert;

    const-string v10, "locked_text_copy"

    const/16 v8, 0x80

    const/4 v9, 0x0

    const v6, 0x7f12010c

    const v7, 0x7f0800a7

    invoke-direct/range {v5 .. v10}, Lg/ert;-><init>(IIIILjava/lang/String;)V

    const/4 v12, 0x0

    iput-boolean v12, v5, Lg/ert;->m:Z

    const v2, 0x7f120269

    iput v2, v5, Lg/ert;->j:I

    new-instance v2, Lg/dwm;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lg/dwm;-><init>(I)V

    iput-object v2, v5, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v5}, Lg/byz;->e(Lg/ert;)V

    :goto_10
    invoke-static {v11}, Lg/fgj;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v12, v2, v0}, Lg/acr;->bs(ILandroid/content/Context;Lg/byz;)V

    new-instance v0, Lg/byz;

    const-string v2, "app_locked"

    const v3, 0x7f120480

    invoke-direct {v0, v2, v3}, Lg/byz;-><init>(Ljava/lang/String;I)V

    const-string v2, "codekk_op"

    const-string v3, "op_source_tool_app"

    invoke-static {v11, v2, v3}, Lg/bys;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lg/ert;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/byz;->e(Lg/ert;)V

    new-instance v2, Lg/ert;

    const-string v3, "apps"

    const/high16 v4, 0x7f120000

    const v5, 0x7f0800a5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lg/ert;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    const/4 v14, 0x1

    iput-boolean v14, v2, Lg/ert;->p:Z

    const-string v3, "c.e.ac"

    iput-object v3, v2, Lg/ert;->v:Ljava/lang/String;

    new-instance v3, Lg/gdm;

    const/4 v12, 0x0

    invoke-direct {v3, v12}, Lg/gdm;-><init>(I)V

    iput-object v3, v2, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v2}, Lg/byz;->e(Lg/ert;)V

    invoke-static {v11}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v2

    invoke-virtual {v2}, Lg/atf;->o()Z

    move-result v2

    invoke-static {v11, v2}, Lg/byh;->al(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_18

    new-instance v3, Lg/ert;

    const-string v8, "locked_manifest"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v4, 0x7f120004

    const v5, 0x7f080133

    invoke-direct/range {v3 .. v8}, Lg/ert;-><init>(IIIILjava/lang/String;)V

    const/4 v12, 0x0

    iput-boolean v12, v3, Lg/ert;->m:Z

    const/4 v14, 0x1

    iput-boolean v14, v3, Lg/ert;->f:Z

    const v2, 0x7f120267

    iput v2, v3, Lg/ert;->j:I

    new-instance v2, Lg/dwm;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lg/dwm;-><init>(I)V

    iput-object v2, v3, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v3}, Lg/byz;->e(Lg/ert;)V

    new-instance v5, Lg/ert;

    const-string v10, "locked_top_activity"

    const/4 v8, 0x2

    const/4 v9, 0x0

    const v6, 0x7f120003

    const v7, 0x7f0801b0

    invoke-direct/range {v5 .. v10}, Lg/ert;-><init>(IIIILjava/lang/String;)V

    const/4 v12, 0x0

    iput-boolean v12, v5, Lg/ert;->m:Z

    const v2, 0x7f120260

    iput v2, v5, Lg/ert;->j:I

    new-instance v2, Lg/dwm;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lg/dwm;-><init>(I)V

    iput-object v2, v5, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v5}, Lg/byz;->e(Lg/ert;)V

    new-instance v12, Lg/ert;

    const-string v17, "locked_layout_inspector"

    const/4 v15, 0x4

    const/16 v16, 0x0

    const v13, 0x7f120103

    const v14, 0x7f0800e3

    invoke-direct/range {v12 .. v17}, Lg/ert;-><init>(IIIILjava/lang/String;)V

    const/4 v14, 0x0

    iput-boolean v14, v12, Lg/ert;->m:Z

    const v2, 0x7f120266

    iput v2, v12, Lg/ert;->j:I

    new-instance v2, Lg/dwm;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lg/dwm;-><init>(I)V

    iput-object v2, v12, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v12}, Lg/byz;->e(Lg/ert;)V

    new-instance v5, Lg/ert;

    const-string v10, "locked_decompile"

    const/16 v8, 0x8

    const v6, 0x7f1200f3

    const v7, 0x7f0800e0

    invoke-direct/range {v5 .. v10}, Lg/ert;-><init>(IIIILjava/lang/String;)V

    const/4 v12, 0x0

    iput-boolean v12, v5, Lg/ert;->m:Z

    const/4 v14, 0x1

    iput-boolean v14, v5, Lg/ert;->f:Z

    const v2, 0x7f120264

    iput v2, v5, Lg/ert;->j:I

    new-instance v2, Lg/dwm;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lg/dwm;-><init>(I)V

    iput-object v2, v5, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v5}, Lg/byz;->e(Lg/ert;)V

    new-instance v12, Lg/ert;

    const-string v17, "locked_apk_puller"

    const/16 v15, 0x10

    const v13, 0x7f1200f5

    const v14, 0x7f080087

    invoke-direct/range {v12 .. v17}, Lg/ert;-><init>(IIIILjava/lang/String;)V

    const/4 v14, 0x0

    iput-boolean v14, v12, Lg/ert;->m:Z

    const v2, 0x7f120261

    iput v2, v12, Lg/ert;->j:I

    new-instance v2, Lg/dwm;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lg/dwm;-><init>(I)V

    iput-object v2, v12, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v12}, Lg/byz;->e(Lg/ert;)V

    new-instance v5, Lg/ert;

    const-string v10, "locked_so_puller"

    const/16 v8, 0x20

    const v6, 0x7f12010b

    const v7, 0x7f0801a6

    invoke-direct/range {v5 .. v10}, Lg/ert;-><init>(IIIILjava/lang/String;)V

    const/4 v12, 0x0

    iput-boolean v12, v5, Lg/ert;->m:Z

    const v2, 0x7f120268

    iput v2, v5, Lg/ert;->j:I

    const-string v2, "al_or_ways"

    const-string v3, "TrineaAndroidCommon"

    invoke-virtual {v11, v3, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v2, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Lg/gdm;

    const/4 v14, 0x1

    invoke-direct {v2, v14}, Lg/gdm;-><init>(I)V

    goto :goto_11

    :cond_17
    const/4 v14, 0x1

    new-instance v2, Lg/dwm;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lg/dwm;-><init>(I)V

    :goto_11
    iput-object v2, v5, Lg/ert;->r:Lg/hdb;

    const-string v2, "permissions"

    const v3, 0x7f12007e

    const v4, 0x7f0800d9

    invoke-static {v0, v5, v2, v3, v4}, Lg/tn;->ab(Lg/byz;Lg/ert;Ljava/lang/String;II)Lg/ert;

    move-result-object v2

    iput-boolean v14, v2, Lg/ert;->p:Z

    iput-boolean v14, v2, Lg/ert;->l:Z

    const-string v3, "c.e.PermissionActivity"

    iput-object v3, v2, Lg/ert;->v:Ljava/lang/String;

    new-instance v3, Lg/gdm;

    invoke-direct {v3, v1}, Lg/gdm;-><init>(I)V

    iput-object v3, v2, Lg/ert;->r:Lg/hdb;

    invoke-virtual {v0, v2}, Lg/byz;->e(Lg/ert;)V

    :cond_18
    invoke-static {v11}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->m()Lg/fxe$e;

    move-result-object v2

    if-eqz v2, :cond_19

    iget v3, v2, Lg/fxe$e;->adPosition:I

    invoke-virtual {v1, v2}, Lg/atf;->h(Lg/fxe$e;)Z

    move-result v1

    and-int/lit8 v2, v3, 0x10

    if-eqz v2, :cond_19

    if-eqz v1, :cond_19

    invoke-static {v11}, Lg/enx;->b(Landroid/content/Context;)Lg/ert;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/byz;->e(Lg/ert;)V

    :cond_19
    const/16 v1, 0x10

    invoke-static {v1, v11, v0}, Lg/enx;->a(ILandroid/content/Context;Lg/byz;)V

    invoke-static {v11}, Lg/fgj;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const/4 v12, 0x0

    invoke-static {v12, v1, v0}, Lg/acr;->bs(ILandroid/content/Context;Lg/byz;)V

    :goto_12
    invoke-static {v11}, Lcn/trinea/developertools/MyApplication;->d(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v11, v1

    :goto_13
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_13
.end method
