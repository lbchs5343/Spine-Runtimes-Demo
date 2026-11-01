.class public final Lg/cip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/eiv;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lg/dwm;

.field public final d:Lg/gtb;

.field public final e:Landroid/content/Context;

.field public final f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CommandHandler"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/cip;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/dwm;Lg/gtb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cip;->e:Landroid/content/Context;

    iput-object p2, p0, Lg/cip;->c:Lg/dwm;

    iput-object p3, p0, Lg/cip;->d:Lg/gtb;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/cip;->f:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cip;->b:Ljava/lang/Object;

    return-void
.end method

.method public static g(Landroid/content/Intent;Lg/gxm;)V
    .locals 2

    const-string v0, "KEY_WORKSPEC_ID"

    iget-object v1, p1, Lg/gxm;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "KEY_WORKSPEC_GENERATION"

    iget p1, p1, Lg/gxm;->b:I

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public static i(Landroid/content/Intent;)Lg/gxm;
    .locals 4

    new-instance v0, Lg/gxm;

    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_WORKSPEC_GENERATION"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lg/gxm;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final h(Lg/gxm;Z)V
    .locals 3

    iget-object v0, p0, Lg/cip;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/cip;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ggk;

    iget-object v2, p0, Lg/cip;->d:Lg/gtb;

    invoke-virtual {v2, p1}, Lg/gtb;->p(Lg/gxm;)Lg/aci;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lg/ggk;->t(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lg/cip;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/cip;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k(Landroid/content/Intent;ILg/jf;)V
    .locals 11

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lg/bqw;

    iget-object v0, p0, Lg/cip;->e:Landroid/content/Context;

    iget-object v1, p0, Lg/cip;->c:Lg/dwm;

    invoke-direct {p1, v0, v1, p2, p3}, Lg/bqw;-><init>(Landroid/content/Context;Lg/dwm;ILg/jf;)V

    iget-object p2, p3, Lg/jf;->g:Lg/fxb;

    iget-object p2, p2, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p2}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object p2

    invoke-virtual {p2}, Lg/gg;->x()Ljava/util/ArrayList;

    move-result-object p2

    sget v1, Lg/bdd;->a:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fkj;

    iget-object v9, v9, Lg/fkj;->r:Lg/bho;

    iget-boolean v10, v9, Lg/bho;->d:Z

    or-int/2addr v5, v10

    iget-boolean v10, v9, Lg/bho;->i:Z

    or-int/2addr v6, v10

    iget-boolean v10, v9, Lg/bho;->f:Z

    or-int/2addr v7, v10

    iget-object v9, v9, Lg/bho;->e:Lg/dnx;

    sget-object v10, Lg/dnx;->NOT_REQUIRED:Lg/dnx;

    if-eq v9, v10, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    or-int/2addr v8, v9

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    :cond_2
    sget v1, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "androidx.work.impl.background.systemalarm.UpdateProxies"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p1, Lg/bqw;->a:Lg/dwm;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fkj;

    invoke-virtual {v5}, Lg/fkj;->aa()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-ltz v8, :cond_3

    invoke-virtual {v5}, Lg/fkj;->ab()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p1, Lg/bqw;->c:Lg/vn;

    invoke-virtual {v6, v5}, Lg/vn;->b(Lg/fkj;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fkj;

    iget-object v3, v1, Lg/fkj;->h:Ljava/lang/String;

    invoke-static {v1}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "ACTION_DELAY_MET"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3, v1}, Lg/cip;->g(Landroid/content/Intent;Lg/gxm;)V

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p3, Lg/jf;->k:Lg/ccc;

    check-cast v1, Lg/gkr;

    iget-object v1, v1, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lg/bxc;

    new-instance v4, Lg/hdo;

    iget v5, p1, Lg/bqw;->b:I

    invoke-direct {v4, p3, v3, v5, v2}, Lg/hdo;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v1, v4}, Lg/bxc;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    const-string v1, "ACTION_RESCHEDULE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p2

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p3, Lg/jf;->g:Lg/fxb;

    invoke-virtual {p1}, Lg/fxb;->bi()V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "KEY_WORKSPEC_ID"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_b

    :cond_8
    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    goto/16 :goto_b

    :cond_9
    const-string v1, "ACTION_SCHEDULE_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, p0, Lg/cip;->e:Landroid/content/Context;

    invoke-static {p1}, Lg/cip;->i(Landroid/content/Intent;)Lg/gxm;

    move-result-object p1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    invoke-virtual {p1}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p3, Lg/jf;->g:Lg/fxb;

    iget-object v1, v1, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lg/gac;->an()V

    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v3

    iget-object v4, p1, Lg/gxm;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lg/gg;->p(Ljava/lang/String;)Lg/fkj;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p2

    invoke-virtual {p1}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lg/gac;->am()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_a
    :try_start_1
    iget-object v4, v3, Lg/fkj;->q:Lg/gys;

    invoke-virtual {v4}, Lg/gys;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p2

    invoke-virtual {p1}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lg/gac;->am()V

    return-void

    :cond_b
    :try_start_2
    invoke-virtual {v3}, Lg/fkj;->aa()J

    move-result-wide v4

    invoke-virtual {v3}, Lg/fkj;->ab()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p2

    invoke-virtual {p1}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p1, v4, v5}, Lg/daf;->c(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lg/gxm;J)V

    goto :goto_3

    :cond_c
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    invoke-virtual {p1}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p1, v4, v5}, Lg/daf;->c(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lg/gxm;J)V

    new-instance p1, Landroid/content/Intent;

    const-class v3, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p3, Lg/jf;->k:Lg/ccc;

    check-cast v0, Lg/gkr;

    iget-object v0, v0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v0, Lg/bxc;

    new-instance v3, Lg/hdo;

    invoke-direct {v3, p3, p1, p2, v2}, Lg/hdo;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v0, v3}, Lg/bxc;->execute(Ljava/lang/Runnable;)V

    :goto_3
    invoke-virtual {v1}, Lg/gac;->ah()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lg/gac;->am()V

    return-void

    :goto_4
    invoke-virtual {v1}, Lg/gac;->am()V

    throw p1

    :cond_d
    const-string v1, "ACTION_DELAY_MET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lg/cip;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Lg/cip;->i(Landroid/content/Intent;)Lg/gxm;

    move-result-object p1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {p1}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/cip;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lg/ggk;

    iget-object v2, p0, Lg/cip;->e:Landroid/content/Context;

    iget-object v3, p0, Lg/cip;->d:Lg/gtb;

    invoke-virtual {v3, p1}, Lg/gtb;->w(Lg/gxm;)Lg/aci;

    move-result-object v3

    invoke-direct {v0, v2, p2, p3, v3}, Lg/ggk;-><init>(Landroid/content/Context;ILg/jf;Lg/aci;)V

    iget-object p2, p0, Lg/cip;->f:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lg/ggk;->s()V

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_e
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p2

    invoke-virtual {p1}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_f
    const-string p2, "ACTION_STOP_WORK"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p2, p0, Lg/cip;->d:Lg/gtb;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_WORKSPEC_GENERATION"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lg/gxm;

    invoke-direct {v2, v0, p1}, Lg/gxm;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v2}, Lg/gtb;->p(Lg/gxm;)Lg/aci;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    invoke-virtual {p2, v0}, Lg/gtb;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_11
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/aci;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p3, Lg/jf;->d:Lg/flz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "workSpecId"

    invoke-static {p2, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, -0x200

    invoke-virtual {v0, p2, v1}, Lg/flz;->b(Lg/aci;I)V

    iget-object p2, p2, Lg/aci;->a:Lg/gxm;

    iget-object v0, p0, Lg/cip;->e:Landroid/content/Context;

    iget-object v1, p3, Lg/jf;->g:Lg/fxb;

    iget-object v1, v1, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    sget v2, Lg/daf;->a:I

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()Lg/duw;

    move-result-object v1

    invoke-virtual {v1, p2}, Lg/duw;->o(Lg/gxm;)Lg/cgv;

    move-result-object v2

    if-eqz v2, :cond_12

    iget v2, v2, Lg/cgv;->c:I

    invoke-static {v0, p2, v2}, Lg/daf;->b(Landroid/content/Context;Lg/gxm;I)V

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {p2}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lg/gxm;->a:Ljava/lang/String;

    iget v2, p2, Lg/gxm;->b:I

    iget-object v5, v1, Lg/duw;->h:Ljava/lang/Object;

    check-cast v5, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v5}, Lg/gac;->al()V

    iget-object v1, v1, Lg/duw;->e:Ljava/lang/Object;

    check-cast v1, Lg/bnh;

    invoke-virtual {v1}, Lg/fze;->i()Lg/cap;

    move-result-object v6

    invoke-interface {v6, v3, v0}, Lg/eob;->e(ILjava/lang/String;)V

    const/4 v0, 0x2

    int-to-long v7, v2

    invoke-interface {v6, v0, v7, v8}, Lg/eob;->f(IJ)V

    :try_start_4
    invoke-virtual {v5}, Lg/gac;->an()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v6}, Lg/cap;->h()I

    invoke-virtual {v5}, Lg/gac;->ah()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v5}, Lg/gac;->am()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v1, v6}, Lg/fze;->h(Lg/cap;)V

    goto :goto_a

    :catchall_2
    move-exception p1

    goto :goto_9

    :catchall_3
    move-exception p1

    :try_start_7
    invoke-virtual {v5}, Lg/gac;->am()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_9
    invoke-virtual {v1, v6}, Lg/fze;->h(Lg/cap;)V

    throw p1

    :cond_12
    :goto_a
    invoke-virtual {p3, p2, v4}, Lg/jf;->h(Lg/gxm;Z)V

    goto :goto_8

    :cond_13
    return-void

    :cond_14
    const-string p2, "ACTION_EXECUTION_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-static {p1}, Lg/cip;->i(Landroid/content/Intent;)Lg/gxm;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "KEY_NEEDS_RESCHEDULE"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2, p3}, Lg/cip;->h(Lg/gxm;Z)V

    return-void

    :cond_15
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_16
    :goto_b
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    sget-object p2, Lg/cip;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Invalid request for "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , requires KEY_WORKSPEC_ID ."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lg/cyl;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
