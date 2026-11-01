.class public final Lg/egu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/lang/Object;

.field public final d:Lg/gkr;

.field public final e:Landroidx/work/impl/WorkDatabase;

.field public f:Landroid/os/PowerManager$WakeLock;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashSet;

.field public final i:Landroid/content/Context;

.field public final j:Ljava/util/ArrayList;

.field public final k:Lg/flk;

.field public final l:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/egu;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/flk;Lg/gkr;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/egu;->i:Landroid/content/Context;

    iput-object p2, p0, Lg/egu;->k:Lg/flk;

    iput-object p3, p0, Lg/egu;->d:Lg/gkr;

    iput-object p4, p0, Lg/egu;->e:Landroidx/work/impl/WorkDatabase;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/egu;->l:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/egu;->g:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lg/egu;->h:Ljava/util/HashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/egu;->j:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lg/egu;->f:Landroid/os/PowerManager$WakeLock;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/egu;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/egu;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static m(Lg/dly;I)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object p0, p0, Lg/dly;->c:Lg/fhq;

    new-instance v0, Lg/gfr;

    invoke-direct {v0, p1}, Lg/gfr;-><init>(I)V

    invoke-virtual {p0, v0}, Lg/fyw;->w(Ljava/util/concurrent/CancellationException;)V

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final n(Lg/gxm;)V
    .locals 3

    iget-object v0, p0, Lg/egu;->d:Lg/gkr;

    iget-object v0, v0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v0, Lg/bxc;

    new-instance v1, Lg/dsf;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2, p1}, Lg/dsf;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lg/bxc;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)Lg/dly;
    .locals 1

    iget-object v0, p0, Lg/egu;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dly;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/egu;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/dly;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final p(Lg/eiv;)V
    .locals 2

    iget-object v0, p0, Lg/egu;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/egu;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lg/egu;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lg/egu;->o(Ljava/lang/String;)Lg/dly;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final r(Lg/aci;Lg/dsp;)Z
    .locals 11

    iget-object v0, p1, Lg/aci;->a:Lg/gxm;

    iget-object v1, v0, Lg/gxm;->a:Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lg/egu;->e:Landroidx/work/impl/WorkDatabase;

    new-instance v3, Lg/gsk;

    invoke-direct {v3, p0, v9, v1}, Lg/gsk;-><init>(Lg/egu;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lg/gac;->ai(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lg/fkj;

    const/4 v2, 0x0

    if-nez v8, :cond_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    invoke-virtual {v0}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lg/egu;->n(Lg/gxm;)V

    return v2

    :cond_0
    iget-object v10, p0, Lg/egu;->c:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-virtual {p0, v1}, Lg/egu;->q(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_2

    :try_start_1
    iget-object p2, p0, Lg/egu;->b:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aci;

    iget-object v1, v1, Lg/aci;->a:Lg/gxm;

    iget v1, v1, Lg/gxm;->b:I

    iget v3, v0, Lg/gxm;->b:I

    if-ne v1, v3, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    invoke-virtual {v0}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v6, p0

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0, v0}, Lg/egu;->n(Lg/gxm;)V

    :goto_0
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :cond_2
    :try_start_2
    iget v3, v8, Lg/fkj;->t:I

    iget v4, v0, Lg/gxm;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq v3, v4, :cond_3

    :try_start_3
    invoke-virtual {p0, v0}, Lg/egu;->n(Lg/gxm;)V

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v2

    :cond_3
    :try_start_4
    new-instance v2, Lg/gxv;

    iget-object v3, p0, Lg/egu;->i:Landroid/content/Context;

    iget-object v4, p0, Lg/egu;->k:Lg/flk;

    iget-object v5, p0, Lg/egu;->d:Lg/gkr;

    iget-object v7, p0, Lg/egu;->e:Landroidx/work/impl/WorkDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v6, p0

    :try_start_5
    invoke-direct/range {v2 .. v9}, Lg/gxv;-><init>(Landroid/content/Context;Lg/flk;Lg/gkr;Lg/egu;Landroidx/work/impl/WorkDatabase;Lg/fkj;Ljava/util/ArrayList;)V

    if-eqz p2, :cond_4

    iput-object p2, v2, Lg/gxv;->f:Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto/16 :goto_5

    :cond_4
    :goto_2
    new-instance p2, Lg/dly;

    invoke-direct {p2, v2}, Lg/dly;-><init>(Lg/gxv;)V

    iget-object v2, p2, Lg/dly;->f:Lg/gkr;

    iget-object v2, v2, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v2, Lg/cpk;

    new-instance v3, Lg/fhq;

    invoke-direct {v3}, Lg/fhq;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lg/cgq;->a:Lg/cgq;

    if-ne v3, v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v3}, Lg/erz;->getKey()Lg/efi;

    move-result-object v4

    invoke-interface {v2, v4}, Lg/boj;->_w(Lg/efi;)Lg/boj;

    move-result-object v2

    sget-object v4, Lg/cgq;->a:Lg/cgq;

    if-ne v2, v4, :cond_6

    move-object v2, v3

    goto :goto_4

    :cond_6
    sget-object v5, Lg/bmr;->j:Lg/bmr;

    invoke-interface {v2, v5}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v7

    check-cast v7, Lg/dic;

    if-nez v7, :cond_7

    new-instance v4, Lg/eyx;

    invoke-direct {v4, v2, v3}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    :goto_3
    move-object v2, v4

    goto :goto_4

    :cond_7
    invoke-interface {v2, v5}, Lg/boj;->_w(Lg/efi;)Lg/boj;

    move-result-object v2

    if-ne v2, v4, :cond_8

    new-instance v2, Lg/eyx;

    invoke-direct {v2, v3, v7}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    goto :goto_4

    :cond_8
    new-instance v4, Lg/eyx;

    new-instance v5, Lg/eyx;

    invoke-direct {v5, v2, v3}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    invoke-direct {v4, v5, v7}, Lg/eyx;-><init>(Lg/boj;Lg/erz;)V

    goto :goto_3

    :goto_4
    new-instance v3, Lg/cob;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Lg/cob;-><init>(Lg/dly;Lg/bdp;)V

    invoke-static {v2, v3}, Lg/cro;->w(Lg/boj;Lg/bto;)Lg/gbb;

    move-result-object v2

    new-instance v3, Lg/gtt;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v2, p2, v4}, Lg/gtt;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v4, v6, Lg/egu;->d:Lg/gkr;

    iget-object v4, v4, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v4, Lg/bxc;

    iget-object v2, v2, Lg/gbb;->b:Lg/dqq;

    invoke-virtual {v2, v3, v4}, Lg/zi;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v2, v6, Lg/egu;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, v6, Lg/egu;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    invoke-virtual {v0}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    return p1

    :catchall_2
    move-exception v0

    move-object v6, p0

    goto/16 :goto_1

    :goto_5
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public final s(Ljava/lang/String;)Lg/dly;
    .locals 5

    iget-object v0, p0, Lg/egu;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dly;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lg/egu;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dly;

    :cond_1
    iget-object v2, p0, Lg/egu;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object p1, p0, Lg/egu;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lg/egu;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/egu;->i:Landroid/content/Context;

    sget-object v2, Lg/gmu;->b:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_STOP_FOREGROUND"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lg/egu;->i:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    sget-object v3, Lg/egu;->a:Ljava/lang/String;

    const-string v4, "Unable to stop foreground service"

    invoke-virtual {v2, v3, v4, v1}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, p0, Lg/egu;->f:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lg/egu;->f:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit p1

    goto :goto_4

    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :goto_4
    return-object v0
.end method

.method public final t(Lg/aci;I)V
    .locals 3

    iget-object v0, p1, Lg/aci;->a:Lg/gxm;

    iget-object v0, v0, Lg/gxm;->a:Ljava/lang/String;

    iget-object v1, p0, Lg/egu;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lg/egu;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lg/egu;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lg/egu;->s(Ljava/lang/String;)Lg/dly;

    move-result-object p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2}, Lg/egu;->m(Lg/dly;I)Z

    return-void

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final u(Ljava/lang/String;)Lg/fkj;
    .locals 1

    iget-object v0, p0, Lg/egu;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lg/egu;->o(Ljava/lang/String;)Lg/dly;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/dly;->g:Lg/fkj;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final v(Lg/eiv;)V
    .locals 2

    iget-object v0, p0, Lg/egu;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/egu;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
