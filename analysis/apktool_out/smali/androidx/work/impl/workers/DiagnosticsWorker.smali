.class public final Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final doWork()Lg/dea;
    .locals 85

    invoke-virtual/range {p0 .. p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/fxb;->be(Landroid/content/Context;)Lg/fxb;

    move-result-object v0

    const-string v1, "getInstance(applicationContext)"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    const-string v2, "workManager.workDatabase"

    invoke-static {v1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()Lg/ffr;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->b()Lg/dzh;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()Lg/duw;

    move-result-object v1

    iget-object v0, v0, Lg/fxb;->aw:Lg/flk;

    iget-object v0, v0, Lg/flk;->c:Lg/dwm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const-string v7, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    invoke-static {v0, v7}, Lg/fcg;->o(ILjava/lang/String;)Lg/fcg;

    move-result-object v7

    invoke-virtual {v7, v0, v5, v6}, Lg/fcg;->f(IJ)V

    iget-object v5, v2, Lg/gg;->h:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v5}, Lg/gac;->al()V

    invoke-virtual {v5, v7}, Lg/gac;->ag(Lg/fxn;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v6, "id"

    invoke-static {v5, v6}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v8, "state"

    invoke-static {v5, v8}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "worker_class_name"

    invoke-static {v5, v9}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "input_merger_class_name"

    invoke-static {v5, v10}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "input"

    invoke-static {v5, v11}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "output"

    invoke-static {v5, v12}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "initial_delay"

    invoke-static {v5, v13}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "interval_duration"

    invoke-static {v5, v14}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "flex_duration"

    invoke-static {v5, v15}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "run_attempt_count"

    invoke-static {v5, v0}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v16, v2

    const-string v2, "backoff_policy"

    invoke-static {v5, v2}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v7

    :try_start_1
    const-string v7, "backoff_delay_duration"

    invoke-static {v5, v7}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v18, v1

    const-string v1, "last_enqueue_time"

    invoke-static {v5, v1}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v19, v3

    const-string v3, "minimum_retention_duration"

    invoke-static {v5, v3}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v20, v4

    const-string v4, "schedule_requested_at"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    const-string v4, "run_in_foreground"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "out_of_quota_policy"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    const-string v4, "period_count"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    const-string v4, "generation"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v25, v4

    const-string v4, "next_schedule_time_override"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v26, v4

    const-string v4, "next_schedule_time_override_generation"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v27, v4

    const-string v4, "stop_reason"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v28, v4

    const-string v4, "trace_tag"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v29, v4

    const-string v4, "required_network_type"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v30, v4

    const-string v4, "required_network_request"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v31, v4

    const-string v4, "requires_charging"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v32, v4

    const-string v4, "requires_device_idle"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v33, v4

    const-string v4, "requires_battery_not_low"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v34, v4

    const-string v4, "requires_storage_not_low"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v35, v4

    const-string v4, "trigger_content_update_delay"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v36, v4

    const-string v4, "trigger_max_content_delay"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v37, v4

    const-string v4, "content_uri_triggers"

    invoke-static {v5, v4}, Lg/eg;->l(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v38, v4

    new-instance v4, Ljava/util/ArrayList;

    move/from16 v39, v3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lg/bfc;->x(I)Lg/gys;

    move-result-object v42

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Lg/dwa;->c([B)Lg/dwa;

    move-result-object v45

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Lg/dwa;->c([B)Lg/dwa;

    move-result-object v46

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lg/bfc;->y(I)Lg/ay;

    move-result-object v55

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move/from16 v3, v39

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    move/from16 v39, v0

    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v40, 0x0

    if-eqz v22, :cond_0

    const/16 v64, 0x1

    :goto_1
    move/from16 v22, v0

    move/from16 v0, v23

    goto :goto_2

    :cond_0
    const/16 v64, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lg/bfc;->h(I)Lg/ahc;

    move-result-object v65

    move/from16 v23, v0

    move/from16 v0, v24

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    move/from16 v24, v0

    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    move/from16 v25, v0

    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v68

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v70

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v71

    move/from16 v28, v0

    move/from16 v0, v29

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_1

    const/16 v29, 0x0

    :goto_3
    move-object/from16 v72, v29

    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_4

    :cond_1
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_3

    :goto_4
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Lg/bfc;->k(I)Lg/dnx;

    move-result-object v75

    move/from16 v30, v0

    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lg/bfc;->ai([B)Lg/im;

    move-result-object v74

    move/from16 v31, v0

    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    if-eqz v32, :cond_2

    const/16 v76, 0x1

    :goto_5
    move/from16 v32, v0

    move/from16 v0, v33

    goto :goto_6

    :cond_2
    const/16 v76, 0x0

    goto :goto_5

    :goto_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    if-eqz v33, :cond_3

    const/16 v77, 0x1

    :goto_7
    move/from16 v33, v0

    move/from16 v0, v34

    goto :goto_8

    :cond_3
    const/16 v77, 0x0

    goto :goto_7

    :goto_8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    if-eqz v34, :cond_4

    const/16 v78, 0x1

    :goto_9
    move/from16 v34, v0

    move/from16 v0, v35

    goto :goto_a

    :cond_4
    const/16 v78, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    if-eqz v35, :cond_5

    const/16 v79, 0x1

    :goto_b
    move/from16 v35, v0

    move/from16 v0, v36

    goto :goto_c

    :cond_5
    const/16 v79, 0x0

    goto :goto_b

    :goto_c
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v80

    move/from16 v36, v0

    move/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lg/bfc;->l([B)Ljava/util/LinkedHashSet;

    move-result-object v84

    new-instance v53, Lg/bho;

    move-object/from16 v73, v53

    invoke-direct/range {v73 .. v84}, Lg/bho;-><init>(Lg/im;Lg/dnx;ZZZZJJLjava/util/Set;)V

    move-object/from16 v53, v73

    new-instance v40, Lg/fkj;

    invoke-direct/range {v40 .. v72}, Lg/fkj;-><init>(Ljava/lang/String;Lg/gys;Ljava/lang/String;Ljava/lang/String;Lg/dwa;Lg/dwa;JJJLg/bho;ILg/ay;JJJJZLg/ahc;IIJIILjava/lang/String;)V

    move/from16 v38, v0

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v39

    move/from16 v39, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_e

    :cond_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v17 .. v17}, Lg/fcg;->p()V

    invoke-virtual/range {v16 .. v16}, Lg/gg;->v()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lg/gg;->aa()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    sget v3, Lg/eww;->a:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    move-object/from16 v6, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    invoke-static {v3, v5, v6, v4}, Lg/eww;->b(Lg/ffr;Lg/dzh;Lg/duw;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :cond_7
    move-object/from16 v6, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    sget v4, Lg/eww;->a:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    invoke-static {v3, v5, v6, v0}, Lg/eww;->b(Lg/ffr;Lg/dzh;Lg/duw;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    sget v2, Lg/eww;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-static {v3, v5, v6, v1}, Lg/eww;->b(Lg/ffr;Lg/dzh;Lg/duw;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    new-instance v0, Lg/aif;

    invoke-direct {v0}, Lg/aif;-><init>()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v17, v7

    :goto_e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v17 .. v17}, Lg/fcg;->p()V

    throw v0
.end method
