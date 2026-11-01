.class public final Lg/ejk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:J


# instance fields
.field public final c:Lg/evf;

.field public d:I

.field public final e:Landroid/content/Context;

.field public final f:Lg/fxb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ForceStopRunnable"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/ejk;->a:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lg/ejk;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/fxb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lg/ejk;->e:Landroid/content/Context;

    iput-object p2, p0, Lg/ejk;->f:Lg/fxb;

    iget-object p1, p2, Lg/fxb;->ba:Lg/evf;

    iput-object p1, p0, Lg/ejk;->c:Lg/evf;

    const/4 p1, 0x0

    iput p1, p0, Lg/ejk;->d:I

    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 5

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    const/high16 v1, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "ACTION_FORCE_STOP_RESCHEDULE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-static {p0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lg/ejk;->b:J

    add-long/2addr v1, v3

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final h()V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "last_force_stop_ms"

    iget-object v2, v1, Lg/ejk;->c:Lg/evf;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    iget-object v5, v1, Lg/ejk;->e:Landroid/content/Context;

    const-wide/16 v6, -0x1

    iget-object v9, v1, Lg/ejk;->f:Lg/fxb;

    const/4 v10, 0x0

    if-lt v3, v4, :cond_7

    iget-object v3, v9, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    sget-object v4, Lg/eyp;->a:Ljava/lang/String;

    invoke-static {v5}, Lg/dlm;->c(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v4

    invoke-static {v5, v4}, Lg/eyp;->h(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->g()Lg/duw;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v13, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    invoke-static {v10, v13}, Lg/fcg;->o(ILjava/lang/String;)Lg/fcg;

    move-result-object v13

    iget-object v12, v12, Lg/duw;->h:Ljava/lang/Object;

    check-cast v12, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v12}, Lg/gac;->al()V

    invoke-virtual {v12, v13}, Lg/gac;->ag(Lg/fxn;)Landroid/database/Cursor;

    move-result-object v12

    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    invoke-virtual {v13}, Lg/fcg;->p()V

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v12}, Ljava/util/HashSet;-><init>(I)V

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/job/JobInfo;

    invoke-static {v12}, Lg/eyp;->j(Landroid/app/job/JobInfo;)Lg/gxm;

    move-result-object v15

    if-eqz v15, :cond_2

    iget-object v12, v15, Lg/gxm;->a:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v12}, Landroid/app/job/JobInfo;->getId()I

    move-result v12

    invoke-static {v4, v12}, Lg/eyp;->i(Landroid/app/job/JobScheduler;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lg/gac;->an()V

    :try_start_1
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v11

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v6, v7, v13}, Lg/gg;->ab(JLjava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Lg/gac;->ah()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v3}, Lg/gac;->am()V

    goto :goto_7

    :goto_5
    invoke-virtual {v3}, Lg/gac;->am()V

    throw v0

    :goto_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    invoke-virtual {v13}, Lg/fcg;->p()V

    throw v0

    :cond_7
    const/4 v4, 0x0

    :cond_8
    :goto_7
    iget-object v3, v9, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v11

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->f()Lg/gkr;

    move-result-object v12

    invoke-virtual {v3}, Lg/gac;->an()V

    :try_start_2
    invoke-virtual {v11}, Lg/gg;->v()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/fkj;

    sget-object v8, Lg/gys;->ENQUEUED:Lg/gys;

    iget-object v15, v15, Lg/fkj;->h:Ljava/lang/String;

    invoke-virtual {v11, v8, v15}, Lg/gg;->s(Lg/gys;Ljava/lang/String;)V

    const/16 v8, -0x200

    invoke-virtual {v11, v8, v15}, Lg/gg;->r(ILjava/lang/String;)V

    invoke-virtual {v11, v6, v7, v15}, Lg/gg;->ab(JLjava/lang/String;)V

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_f

    :cond_9
    iget-object v6, v12, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v6, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v6}, Lg/gac;->al()V

    iget-object v7, v12, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v7, Lg/bnh;

    invoke-virtual {v7}, Lg/fze;->i()Lg/cap;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v6}, Lg/gac;->an()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v8}, Lg/cap;->h()I

    invoke-virtual {v6}, Lg/gac;->ah()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v6}, Lg/gac;->am()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v7, v8}, Lg/fze;->h(Lg/cap;)V

    invoke-virtual {v3}, Lg/gac;->ah()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v3}, Lg/gac;->am()V

    if-eqz v14, :cond_b

    if-eqz v4, :cond_a

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    goto :goto_a

    :cond_b
    :goto_9
    const/4 v8, 0x1

    :goto_a
    iget-object v3, v9, Lg/fxb;->ba:Lg/evf;

    iget-object v3, v3, Lg/evf;->f:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->e()Lg/fdy;

    move-result-object v3

    const-string v4, "reschedule_needed"

    invoke-virtual {v3, v4}, Lg/fdy;->ag(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x1

    cmp-long v3, v11, v13

    if-nez v3, :cond_c

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Lg/fxb;->bi()V

    iget-object v0, v9, Lg/fxb;->ba:Lg/evf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/cmk;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lg/cmk;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()Lg/fdy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lg/fdy;->p(Lg/cmk;)V

    return-void

    :cond_c
    :try_start_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_d

    const/high16 v4, 0x22000000

    goto :goto_b

    :cond_d
    const/high16 v4, 0x20000000

    :goto_b
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    new-instance v12, Landroid/content/ComponentName;

    const-class v13, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v12, v5, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v12, "ACTION_FORCE_STOP_RESCHEDULE"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v12, -0x1

    invoke-static {v5, v12, v11, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const/16 v11, 0x1e

    if-lt v3, v11, :cond_11

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/app/PendingIntent;->cancel()V

    :cond_e
    const-string v3, "activity"

    invoke-virtual {v5, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-static {v3}, Lg/guj;->x(Landroid/app/ActivityManager;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v2, Lg/evf;->f:Ljava/lang/Object;

    check-cast v4, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->e()Lg/fdy;

    move-result-object v4

    invoke-virtual {v4, v0}, Lg/fdy;->ag(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :cond_f
    :goto_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_12

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lg/guj;->u(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v4

    invoke-static {v4}, Lg/guj;->aa(Landroid/app/ApplicationExitInfo;)I

    move-result v5

    const/16 v11, 0xa

    if-ne v5, v11, :cond_10

    invoke-static {v4}, Lg/guj;->ac(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v4

    cmp-long v11, v4, v6

    if-ltz v11, :cond_10

    goto :goto_d

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_11
    if-nez v4, :cond_12

    invoke-static {v5}, Lg/ejk;->g(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_d

    :cond_12
    if-eqz v8, :cond_13

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v9, Lg/fxb;->aw:Lg/flk;

    iget-object v2, v9, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    iget-object v3, v9, Lg/fxb;->ay:Ljava/util/List;

    invoke-static {v0, v2, v3}, Lg/fje;->c(Lg/flk;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_13
    return-void

    :catch_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_d
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Lg/fxb;->bi()V

    iget-object v3, v9, Lg/fxb;->aw:Lg/flk;

    iget-object v3, v3, Lg/flk;->c:Lg/dwm;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lg/cmk;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Lg/cmk;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, v2, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()Lg/fdy;

    move-result-object v0

    invoke-virtual {v0, v5}, Lg/fdy;->p(Lg/cmk;)V

    return-void

    :catchall_3
    move-exception v0

    goto :goto_e

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v6}, Lg/gac;->am()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_e
    :try_start_9
    invoke-virtual {v7, v8}, Lg/fze;->h(Lg/cap;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_f
    invoke-virtual {v3}, Lg/gac;->am()V

    throw v0
.end method

.method public final run()V
    .locals 8

    sget-object v0, Lg/ejk;->a:Ljava/lang/String;

    iget-object v1, p0, Lg/ejk;->f:Lg/fxb;

    :try_start_0
    iget-object v2, v1, Lg/fxb;->aw:Lg/flk;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    iget-object v5, p0, Lg/ejk;->e:Landroid/content/Context;

    if-eqz v3, :cond_0

    :try_start_1
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5, v2}, Lg/bz;->a(Landroid/content/Context;Lg/flk;)Z

    move-result v2

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v1}, Lg/fxb;->bk()V

    return-void

    :catch_0
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {v5}, Lg/buj;->ah(Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Lg/ejk;->h()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v1}, Lg/fxb;->bk()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_2

    :catch_6
    move-exception v2

    goto :goto_2

    :catch_7
    move-exception v2

    goto :goto_2

    :catch_8
    move-exception v2

    :goto_2
    :try_start_5
    iget v3, p0, Lg/ejk;->d:I

    add-int/2addr v3, v4

    iput v3, p0, Lg/ejk;->d:I

    const/4 v6, 0x3

    if-lt v3, v6, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v3, v6, :cond_2

    invoke-static {v5}, Lg/cml;->a(Landroid/content/Context;)Z

    move-result v4

    :cond_2
    if-eqz v4, :cond_3

    const-string v3, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    goto :goto_3

    :cond_3
    const-string v3, "WorkManager can\'t be accessed from direct boot, because credential encrypted storage isn\'t accessible.\nDon\'t access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot"

    :goto_3
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v2}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lg/fxb;->aw:Lg/flk;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :cond_4
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lg/ejk;->d:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    int-to-long v2, v2

    const-wide/16 v6, 0x12c

    mul-long v2, v2, v6

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_9
    move-exception v2

    :try_start_7
    const-string v3, "Unexpected SQLite exception during migrations"

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lg/cyl;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lg/fxb;->aw:Lg/flk;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    invoke-virtual {v1}, Lg/fxb;->bk()V

    throw v0
.end method
