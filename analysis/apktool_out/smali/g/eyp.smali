.class public final Lg/eyp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/giw;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Lg/dbt;

.field public final c:Landroidx/work/impl/WorkDatabase;

.field public final d:Lg/flk;

.field public final e:Landroid/content/Context;

.field public final f:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobScheduler"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/eyp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lg/flk;)V
    .locals 4

    invoke-static {p1}, Lg/dlm;->c(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v0

    new-instance v1, Lg/dbt;

    iget-object v2, p3, Lg/flk;->c:Lg/dwm;

    iget-boolean v3, p3, Lg/flk;->d:Z

    invoke-direct {v1, p1, v2, v3}, Lg/dbt;-><init>(Landroid/content/Context;Lg/dwm;Z)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eyp;->e:Landroid/content/Context;

    iput-object v0, p0, Lg/eyp;->f:Landroid/app/job/JobScheduler;

    iput-object v1, p0, Lg/eyp;->b:Lg/dbt;

    iput-object p2, p0, Lg/eyp;->c:Landroidx/work/impl/WorkDatabase;

    iput-object p3, p0, Lg/eyp;->d:Lg/flk;

    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    invoke-static {p0, p1}, Lg/eyp;->h(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    invoke-static {v0}, Lg/eyp;->j(Landroid/app/job/JobInfo;)Lg/gxm;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lg/gxm;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static h(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;
    .locals 3

    invoke-static {p1}, Lg/dlm;->b(Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static i(Landroid/app/job/JobScheduler;I)V
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Exception while trying to cancel job (%d)"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lg/eyp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static j(Landroid/app/job/JobInfo;)Lg/gxm;
    .locals 3

    const-string v0, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lg/gxm;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lg/gxm;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final k(Lg/fkj;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v3, Lg/eyp;->a:Ljava/lang/String;

    iget-object v0, v1, Lg/eyp;->b:Lg/dbt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lg/fkj;->r:Lg/bho;

    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    const-string v6, "EXTRA_WORK_SPEC_ID"

    iget-object v7, v2, Lg/fkj;->h:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "EXTRA_WORK_SPEC_GENERATION"

    iget v7, v2, Lg/fkj;->t:I

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lg/fkj;->z()Z

    move-result v6

    invoke-static {v5, v6}, Lg/fvp;->h(Landroid/os/PersistableBundle;Z)V

    new-instance v6, Landroid/app/job/JobInfo$Builder;

    iget-object v7, v0, Lg/dbt;->a:Landroid/content/ComponentName;

    move/from16 v8, p2

    invoke-direct {v6, v8, v7}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    iget-boolean v7, v4, Lg/bho;->i:Z

    invoke-virtual {v6, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    iget-boolean v7, v4, Lg/bho;->c:Z

    invoke-virtual {v6, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lg/bho;->k()Landroid/net/NetworkRequest;

    move-result-object v6

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    const/16 v11, 0x1a

    const/4 v13, 0x1

    const/16 v14, 0x1c

    if-lt v9, v14, :cond_0

    if-eqz v6, :cond_0

    const-string v15, "builder"

    invoke-static {v5, v15}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lg/agk;->z(Landroid/app/job/JobInfo$Builder;Landroid/net/NetworkRequest;)V

    goto :goto_2

    :cond_0
    iget-object v6, v4, Lg/bho;->e:Lg/dnx;

    const/16 v15, 0x1e

    if-lt v9, v15, :cond_1

    sget-object v15, Lg/dnx;->TEMPORARILY_UNMETERED:Lg/dnx;

    if-ne v6, v15, :cond_1

    new-instance v6, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v6}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v15, 0x19

    invoke-virtual {v6, v15}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    invoke-static {v5, v6}, Lg/agk;->z(Landroid/app/job/JobInfo$Builder;Landroid/net/NetworkRequest;)V

    goto :goto_2

    :cond_1
    sget-object v15, Lg/cog;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v15, v15, v16

    if-eq v15, v13, :cond_7

    const/4 v13, 0x2

    if-eq v15, v13, :cond_5

    const/4 v13, 0x3

    if-eq v15, v13, :cond_6

    const/4 v13, 0x4

    if-eq v15, v13, :cond_3

    const/4 v13, 0x5

    if-eq v15, v13, :cond_2

    goto :goto_0

    :cond_2
    if-lt v9, v11, :cond_4

    const/4 v13, 0x4

    goto :goto_1

    :cond_3
    if-lt v9, v10, :cond_4

    const/4 v13, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    const/4 v13, 0x1

    goto :goto_1

    :cond_6
    const/4 v13, 0x2

    goto :goto_1

    :cond_7
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v5, v13}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :goto_2
    if-nez v7, :cond_9

    iget-object v6, v2, Lg/fkj;->f:Lg/ay;

    sget-object v7, Lg/ay;->LINEAR:Lg/ay;

    if-ne v6, v7, :cond_8

    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    const/4 v6, 0x1

    :goto_3
    iget-wide v11, v2, Lg/fkj;->o:J

    invoke-virtual {v5, v11, v12, v6}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    :cond_9
    invoke-virtual {v2}, Lg/fkj;->aa()J

    move-result-wide v11

    iget-object v6, v0, Lg/dbt;->b:Lg/dwm;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v11, v11, v17

    const-wide/16 v7, 0x0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    if-gt v9, v14, :cond_a

    invoke-virtual {v5, v11, v12}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_4

    :cond_a
    cmp-long v14, v11, v7

    if-lez v14, :cond_b

    invoke-virtual {v5, v11, v12}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_4

    :cond_b
    iget-boolean v14, v2, Lg/fkj;->s:Z

    if-nez v14, :cond_c

    iget-boolean v0, v0, Lg/dbt;->c:Z

    if-eqz v0, :cond_c

    invoke-static {v5}, Lg/agk;->r(Landroid/app/job/JobInfo$Builder;)V

    :cond_c
    :goto_4
    if-lt v9, v10, :cond_e

    invoke-virtual {v4}, Lg/bho;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v4, Lg/bho;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/cdc;

    iget-boolean v10, v9, Lg/cdc;->b:Z

    invoke-static {}, Lg/ayr;->c()V

    iget-object v9, v9, Lg/cdc;->a:Landroid/net/Uri;

    invoke-static {v9, v10}, Lg/ayr;->aa(Landroid/net/Uri;I)Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v9

    invoke-static {v5, v9}, Lg/ayr;->t(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$TriggerContentUri;)V

    goto :goto_5

    :cond_d
    iget-wide v9, v4, Lg/bho;->j:J

    invoke-static {v5, v9, v10}, Lg/ayr;->i(Landroid/app/job/JobInfo$Builder;J)V

    iget-wide v9, v4, Lg/bho;->b:J

    invoke-static {v5, v9, v10}, Lg/ayr;->m(Landroid/app/job/JobInfo$Builder;J)V

    :cond_e
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v0, v6, :cond_f

    iget-boolean v6, v4, Lg/bho;->d:Z

    invoke-static {v5, v6}, Lg/cnh;->f(Landroid/app/job/JobInfo$Builder;Z)V

    iget-boolean v4, v4, Lg/bho;->f:Z

    invoke-static {v5, v4}, Lg/cnh;->y(Landroid/app/job/JobInfo$Builder;Z)V

    :cond_f
    iget v4, v2, Lg/fkj;->b:I

    if-lez v4, :cond_10

    const/4 v4, 0x1

    goto :goto_6

    :cond_10
    const/4 v4, 0x0

    :goto_6
    cmp-long v6, v11, v7

    if-lez v6, :cond_11

    const/16 v16, 0x1

    goto :goto_7

    :cond_11
    const/16 v16, 0x0

    :goto_7
    const/16 v6, 0x1f

    if-lt v0, v6, :cond_12

    iget-boolean v7, v2, Lg/fkj;->s:Z

    if-eqz v7, :cond_12

    if-nez v4, :cond_12

    if-nez v16, :cond_12

    invoke-static {v5}, Lg/dgd;->x(Landroid/app/job/JobInfo$Builder;)V

    :cond_12
    const/16 v4, 0x23

    if-lt v0, v4, :cond_13

    iget-object v0, v2, Lg/fkj;->v:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-static {v5, v0}, Lg/gfl;->e(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v5}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v4, v1, Lg/eyp;->f:Landroid/app/job/JobScheduler;

    invoke-virtual {v4, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v2, Lg/fkj;->s:Z

    if-eqz v0, :cond_14

    iget-object v0, v2, Lg/fkj;->x:Lg/ahc;

    sget-object v4, Lg/ahc;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Lg/ahc;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v4, :cond_14

    const/4 v13, 0x0

    :try_start_1
    iput-boolean v13, v2, Lg/fkj;->s:Z

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p2}, Lg/eyp;->k(Lg/fkj;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    const/4 v13, 0x0

    goto :goto_9

    :cond_14
    return-void

    :goto_8
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to schedule "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2, v0}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_9
    sget-object v2, Lg/dlm;->a:Ljava/lang/String;

    const-string v2, "context"

    iget-object v4, v1, Lg/eyp;->e:Landroid/content/Context;

    invoke-static {v4, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "workDatabase"

    iget-object v5, v1, Lg/eyp;->c:Landroidx/work/impl/WorkDatabase;

    invoke-static {v5, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "configuration"

    iget-object v7, v1, Lg/eyp;->d:Lg/flk;

    invoke-static {v7, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_15

    const/16 v6, 0x96

    goto :goto_a

    :cond_15
    const/16 v6, 0x64

    :goto_a
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v5

    invoke-virtual {v5}, Lg/gg;->x()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v8, 0x22

    const-string v9, "<faulty JobScheduler failed to getPendingJobs>"

    if-lt v2, v8, :cond_1a

    invoke-static {v4}, Lg/dlm;->c(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v2

    invoke-static {v2}, Lg/dlm;->b(Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1c

    invoke-static {v4, v2}, Lg/eyp;->h(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v9, v2

    goto :goto_b

    :cond_16
    const/4 v2, 0x0

    :goto_b
    const/4 v9, 0x0

    if-nez v2, :cond_17

    move-object v2, v9

    goto :goto_c

    :cond_17
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of which are not owned by WorkManager"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_c
    const-string v10, "jobscheduler"

    invoke-virtual {v4, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type android.app.job.JobScheduler"

    invoke-static {v10, v11}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/app/job/JobScheduler;

    invoke-static {v4, v10}, Lg/eyp;->h(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    goto :goto_d

    :cond_18
    const/4 v12, 0x0

    :goto_d
    if-nez v12, :cond_19

    move-object v4, v9

    goto :goto_e

    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " from WorkManager in the default namespace"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " jobs in \"androidx.work.systemjobscheduler\" namespace"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/fuv;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, ",\n"

    const/16 v8, 0x3e

    invoke-static {v2, v4, v9, v8}, Lg/gsv;->bh(Ljava/util/Collection;Ljava/lang/String;Lg/and;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_f

    :cond_1a
    invoke-static {v4}, Lg/dlm;->c(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v2

    invoke-static {v4, v2}, Lg/eyp;->h(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_f

    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " jobs from WorkManager"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1c
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "JobScheduler "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " job limit exceeded.\nIn JobScheduler there are "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".\nThere are "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " jobs tracked by WorkManager\'s database;\nthe Configuration limit is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lg/flk;->b:I

    const/16 v5, 0x2e

    invoke-static {v2, v4, v5}, Lg/awf;->s(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lg/cyl;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final q(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lg/eyp;->e:Landroid/content/Context;

    iget-object v1, p0, Lg/eyp;->f:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1, p1}, Lg/eyp;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lg/eyp;->i(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/eyp;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()Lg/duw;

    move-result-object v0

    iget-object v1, v0, Lg/duw;->h:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v1}, Lg/gac;->al()V

    iget-object v0, v0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v0, Lg/bnh;

    invoke-virtual {v0}, Lg/fze;->i()Lg/cap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Lg/eob;->e(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Lg/gac;->an()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lg/cap;->h()I

    invoke-virtual {v1}, Lg/gac;->ah()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Lg/gac;->am()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0, v2}, Lg/fze;->h(Lg/cap;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Lg/gac;->am()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {v0, v2}, Lg/fze;->h(Lg/cap;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final varargs r([Lg/fkj;)V
    .locals 13

    new-instance v0, Lg/dcq;

    iget-object v1, p0, Lg/eyp;->c:Landroidx/work/impl/WorkDatabase;

    invoke-direct {v0, v1}, Lg/dcq;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iget-object v2, v0, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/WorkDatabase;

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    aget-object v6, p1, v5

    invoke-virtual {v1}, Lg/gac;->an()V

    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v7

    iget-object v8, v6, Lg/fkj;->h:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lg/gg;->p(Ljava/lang/String;)Lg/fkj;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lg/gac;->ah()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v1}, Lg/gac;->am()V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :try_start_1
    iget-object v7, v7, Lg/fkj;->q:Lg/gys;

    sget-object v8, Lg/gys;->ENQUEUED:Lg/gys;

    if-eq v7, v8, :cond_1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lg/gac;->ah()V

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object v7

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()Lg/duw;

    move-result-object v8

    invoke-virtual {v8, v7}, Lg/duw;->o(Lg/gxm;)Lg/cgv;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "workDatabase.runInTransa\u2026d\n            }\n        )"

    iget-object v10, p0, Lg/eyp;->d:Lg/flk;

    if-eqz v8, :cond_2

    :try_start_2
    iget v11, v8, Lg/cgv;->c:I

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v10, Lg/flk;->i:I

    new-instance v12, Lg/gmt;

    invoke-direct {v12, v0, v11}, Lg/gmt;-><init>(Lg/dcq;I)V

    invoke-virtual {v2, v12}, Lg/gac;->ai(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v9}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    :goto_2
    if-nez v8, :cond_3

    new-instance v8, Lg/cgv;

    iget-object v12, v7, Lg/gxm;->a:Ljava/lang/String;

    iget v7, v7, Lg/gxm;->b:I

    invoke-direct {v8, v12, v7, v11}, Lg/cgv;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()Lg/duw;

    move-result-object v7

    invoke-virtual {v7, v8}, Lg/duw;->u(Lg/cgv;)V

    :cond_3
    invoke-virtual {p0, v6, v11}, Lg/eyp;->k(Lg/fkj;I)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lg/eyp;->e:Landroid/content/Context;

    iget-object v8, p0, Lg/eyp;->f:Landroid/app/job/JobScheduler;

    iget-object v12, v6, Lg/fkj;->h:Ljava/lang/String;

    invoke-static {v7, v8, v12}, Lg/eyp;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v10, Lg/flk;->i:I

    new-instance v8, Lg/gmt;

    invoke-direct {v8, v0, v7}, Lg/gmt;-><init>(Lg/dcq;I)V

    invoke-virtual {v2, v8}, Lg/gac;->ai(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v9}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    :goto_3
    invoke-virtual {p0, v6, v7}, Lg/eyp;->k(Lg/fkj;I)V

    :cond_6
    invoke-virtual {v1}, Lg/gac;->ah()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :goto_5
    invoke-virtual {v1}, Lg/gac;->am()V

    throw p1

    :cond_7
    return-void
.end method

.method public final t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
