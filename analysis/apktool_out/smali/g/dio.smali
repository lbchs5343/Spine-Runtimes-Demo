.class public final Lg/dio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/giw;
.implements Lg/cdj;
.implements Lg/eiv;


# instance fields
.field public final b:Lg/flz;

.field public final c:Lg/egu;

.field public final d:Ljava/util/HashMap;

.field public final e:Lg/ehs;

.field public final f:Lg/vn;

.field public g:Ljava/lang/Boolean;

.field public i:Z

.field public final j:Ljava/lang/Object;

.field public final k:Landroid/content/Context;

.field public final l:Lg/flk;

.field public final m:Ljava/util/HashMap;

.field public final n:Lg/dkh;

.field public final o:Lg/ccc;

.field public final p:Lg/gtb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/flk;Lg/fzn;Lg/egu;Lg/flz;Lg/ccc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/dio;->m:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/dio;->j:Ljava/lang/Object;

    new-instance v0, Lg/frk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/frk;-><init>(I)V

    new-instance v1, Lg/gtb;

    invoke-direct {v1, v0}, Lg/gtb;-><init>(Lg/frk;)V

    iput-object v1, p0, Lg/dio;->p:Lg/gtb;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/dio;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lg/dio;->k:Landroid/content/Context;

    iget-object p1, p2, Lg/flk;->m:Lg/fnq;

    new-instance v0, Lg/ehs;

    iget-object v1, p2, Lg/flk;->c:Lg/dwm;

    invoke-direct {v0, p0, p1, v1}, Lg/ehs;-><init>(Lg/dio;Lg/fnq;Lg/dwm;)V

    iput-object v0, p0, Lg/dio;->e:Lg/ehs;

    new-instance v0, Lg/dkh;

    invoke-direct {v0, p1, p5}, Lg/dkh;-><init>(Lg/fnq;Lg/flz;)V

    iput-object v0, p0, Lg/dio;->n:Lg/dkh;

    iput-object p6, p0, Lg/dio;->o:Lg/ccc;

    new-instance p1, Lg/vn;

    invoke-direct {p1, p3}, Lg/vn;-><init>(Lg/fzn;)V

    iput-object p1, p0, Lg/dio;->f:Lg/vn;

    iput-object p2, p0, Lg/dio;->l:Lg/flk;

    iput-object p4, p0, Lg/dio;->c:Lg/egu;

    iput-object p5, p0, Lg/dio;->b:Lg/flz;

    return-void
.end method


# virtual methods
.method public final a(Lg/fkj;Lg/bfx;)V
    .locals 4

    invoke-static {p1}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object p1

    instance-of v0, p2, Lg/gpr;

    iget-object v1, p0, Lg/dio;->b:Lg/flz;

    iget-object v2, p0, Lg/dio;->n:Lg/dkh;

    iget-object v3, p0, Lg/dio;->p:Lg/gtb;

    if-eqz v0, :cond_0

    invoke-virtual {v3, p1}, Lg/gtb;->x(Lg/gxm;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p2

    invoke-virtual {p1}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p1}, Lg/gtb;->w(Lg/gxm;)Lg/aci;

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/dkh;->h(Lg/aci;)V

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Lg/flz;->c(Lg/aci;Lg/dsp;)V

    return-void

    :cond_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {p1}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p1}, Lg/gtb;->p(Lg/gxm;)Lg/aci;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v2, p1}, Lg/dkh;->g(Lg/aci;)V

    check-cast p2, Lg/das;

    iget p2, p2, Lg/das;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p1, p2}, Lg/flz;->b(Lg/aci;I)V

    :cond_1
    return-void
.end method

.method public final h(Lg/gxm;Z)V
    .locals 2

    iget-object v0, p0, Lg/dio;->p:Lg/gtb;

    invoke-virtual {v0, p1}, Lg/gtb;->p(Lg/gxm;)Lg/aci;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/dio;->n:Lg/dkh;

    invoke-virtual {v1, v0}, Lg/dkh;->g(Lg/aci;)V

    :cond_0
    invoke-virtual {p0, p1}, Lg/dio;->s(Lg/gxm;)V

    if-nez p2, :cond_1

    iget-object p2, p0, Lg/dio;->j:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lg/dio;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg/dio;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/dio;->k:Landroid/content/Context;

    iget-object v1, p0, Lg/dio;->l:Lg/flk;

    invoke-static {v0, v1}, Lg/bz;->a(Landroid/content/Context;Lg/flk;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg/dio;->g:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lg/dio;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    iget-boolean v0, p0, Lg/dio;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/dio;->c:Lg/egu;

    invoke-virtual {v0, p0}, Lg/egu;->p(Lg/eiv;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dio;->i:Z

    :cond_2
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/dio;->e:Lg/ehs;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lg/ehs;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lg/ehs;->d:Lg/fnq;

    iget-object v0, v0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lg/dio;->p:Lg/gtb;

    invoke-virtual {v0, p1}, Lg/gtb;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/aci;

    iget-object v1, p0, Lg/dio;->n:Lg/dkh;

    invoke-virtual {v1, v0}, Lg/dkh;->g(Lg/aci;)V

    iget-object v1, p0, Lg/dio;->b:Lg/flz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, -0x200

    invoke-virtual {v1, v0, v2}, Lg/flz;->b(Lg/aci;I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final varargs r([Lg/fkj;)V
    .locals 13

    iget-object v0, p0, Lg/dio;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/dio;->k:Landroid/content/Context;

    iget-object v1, p0, Lg/dio;->l:Lg/flk;

    invoke-static {v0, v1}, Lg/bz;->a(Landroid/content/Context;Lg/flk;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg/dio;->g:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lg/dio;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    iget-boolean v0, p0, Lg/dio;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/dio;->c:Lg/egu;

    invoke-virtual {v0, p0}, Lg/egu;->p(Lg/eiv;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dio;->i:Z

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_a

    aget-object v4, p1, v3

    invoke-static {v4}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object v5

    iget-object v6, p0, Lg/dio;->p:Lg/gtb;

    invoke-virtual {v6, v5}, Lg/gtb;->x(Lg/gxm;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lg/dio;->u(Lg/fkj;)J

    move-result-wide v5

    invoke-virtual {v4}, Lg/fkj;->aa()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v7, p0, Lg/dio;->l:Lg/flk;

    iget-object v7, v7, Lg/flk;->c:Lg/dwm;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v4, Lg/fkj;->q:Lg/gys;

    sget-object v10, Lg/gys;->ENQUEUED:Lg/gys;

    if-ne v9, v10, :cond_9

    cmp-long v9, v7, v5

    if-gez v9, :cond_5

    iget-object v7, p0, Lg/dio;->e:Lg/ehs;

    if-eqz v7, :cond_9

    iget-object v8, v7, Lg/ehs;->d:Lg/fnq;

    iget-object v9, v7, Lg/ehs;->b:Ljava/util/HashMap;

    iget-object v10, v4, Lg/fkj;->h:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Runnable;

    if-eqz v10, :cond_4

    iget-object v11, v8, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v11, Landroid/os/Handler;

    invoke-virtual {v11, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    new-instance v10, Lg/gfh;

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-direct {v10, v11, v7, v4, v12}, Lg/gfh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object v4, v4, Lg/fkj;->h:Ljava/lang/String;

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lg/ehs;->e:Lg/dwm;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v5, v11

    iget-object v4, v8, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v4, Landroid/os/Handler;

    invoke-virtual {v4, v10, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lg/fkj;->ab()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v4, Lg/fkj;->r:Lg/bho;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_6

    iget-boolean v7, v5, Lg/bho;->c:Z

    if-eqz v7, :cond_6

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v5

    invoke-virtual {v4}, Lg/fkj;->toString()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_6
    const/16 v7, 0x18

    if-lt v6, v7, :cond_7

    invoke-virtual {v5}, Lg/bho;->l()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v5

    invoke-virtual {v4}, Lg/fkj;->toString()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lg/fkj;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lg/dio;->p:Lg/gtb;

    invoke-static {v4}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg/gtb;->x(Lg/gxm;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lg/dio;->p:Lg/gtb;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object v4

    invoke-virtual {v5, v4}, Lg/gtb;->w(Lg/gxm;)Lg/aci;

    move-result-object v4

    iget-object v5, p0, Lg/dio;->n:Lg/dkh;

    invoke-virtual {v5, v4}, Lg/dkh;->h(Lg/aci;)V

    iget-object v5, p0, Lg/dio;->b:Lg/flz;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lg/flz;->c(Lg/aci;Lg/dsp;)V

    :cond_9
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object p1, p0, Lg/dio;->j:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fkj;

    invoke-static {v1}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object v2

    iget-object v3, p0, Lg/dio;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lg/dio;->f:Lg/vn;

    iget-object v4, p0, Lg/dio;->o:Lg/ccc;

    check-cast v4, Lg/gkr;

    iget-object v4, v4, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v4, Lg/cpk;

    invoke-static {v3, v1, v4, p0}, Lg/gx;->b(Lg/vn;Lg/fkj;Lg/cpk;Lg/cdj;)Lg/fe;

    move-result-object v1

    iget-object v3, p0, Lg/dio;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_c
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final s(Lg/gxm;)V
    .locals 2

    iget-object v0, p0, Lg/dio;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/dio;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dta;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lg/dta;->_bi(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final u(Lg/fkj;)J
    .locals 7

    iget-object v0, p0, Lg/dio;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object v1

    iget-object v2, p0, Lg/dio;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ged;

    if-nez v2, :cond_0

    new-instance v2, Lg/ged;

    iget v3, p1, Lg/fkj;->b:I

    iget-object v4, p0, Lg/dio;->l:Lg/flk;

    iget-object v4, v4, Lg/flk;->c:Lg/dwm;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lg/ged;-><init>(IJ)V

    iget-object v3, p0, Lg/dio;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-wide v3, v2, Lg/ged;->b:J

    iget p1, p1, Lg/fkj;->b:I

    iget v1, v2, Lg/ged;->a:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x5

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v5, 0x7530

    mul-long v1, v1, v5

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
