.class public final Lg/dkh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:J

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg/bsz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dkh;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/fnq;Lg/flz;)V
    .locals 3

    const-string v0, "runnableScheduler"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dkh;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/dkh;->e:Ljava/lang/Object;

    iput-wide v0, p0, Lg/dkh;->c:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dkh;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lg/dkh;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg/gmr;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dkh;->b:Ljava/lang/Object;

    const-string p1, "health_monitor"

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lg/ckd;->u(Z)V

    const-string p1, "health_monitor:start"

    iput-object p1, p0, Lg/dkh;->d:Ljava/lang/Object;

    const-string p1, "health_monitor:count"

    iput-object p1, p0, Lg/dkh;->e:Ljava/lang/Object;

    const-string p1, "health_monitor:value"

    iput-object p1, p0, Lg/dkh;->a:Ljava/lang/Object;

    iput-wide p2, p0, Lg/dkh;->c:J

    return-void
.end method


# virtual methods
.method public f()V
    .locals 4

    iget-object v0, p0, Lg/dkh;->b:Ljava/lang/Object;

    check-cast v0, Lg/gmr;

    invoke-virtual {v0}, Lg/bgf;->_e()V

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lg/dkh;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lg/dkh;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public g(Lg/aci;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/dkh;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/dkh;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v0, Lg/fnq;

    iget-object v0, v0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public h(Lg/aci;)V
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/dsf;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1, p1}, Lg/dsf;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v1, p0, Lg/dkh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lg/dkh;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p1, p0, Lg/dkh;->d:Ljava/lang/Object;

    check-cast p1, Lg/fnq;

    iget-wide v1, p0, Lg/dkh;->c:J

    iget-object p1, p1, Lg/fnq;->f:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public i(JLg/kk;)Z
    .locals 11

    iget-object v0, p0, Lg/dkh;->b:Ljava/lang/Object;

    check-cast v0, Lg/bsz;

    iget-object v1, p0, Lg/dkh;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg/dkh;->a:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lg/dkh;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg/dkh;->e:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lg/dkh;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lg/dkh;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/kk;

    invoke-virtual {v1}, Lg/kk;->k()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v7, 0x3c

    div-long/2addr v3, v7

    div-long/2addr v3, v7

    invoke-virtual {p3}, Lg/kk;->k()J

    move-result-wide v9

    div-long/2addr v9, v5

    div-long/2addr v9, v7

    div-long/2addr v9, v7

    cmp-long v1, v3, v9

    if-nez v1, :cond_4

    :cond_2
    iget-wide v3, p0, Lg/dkh;->c:J

    invoke-virtual {p3}, Lg/cys;->aa()I

    move-result v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v0}, Lg/bsz;->bm()Lg/dsd;

    sget-object v1, Lg/gad;->au:Lg/tw;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v3, v6

    if-ltz v1, :cond_3

    goto :goto_0

    :cond_3
    iput-wide v3, p0, Lg/dkh;->c:J

    iget-object v1, p0, Lg/dkh;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lg/dkh;->e:Ljava/lang/Object;

    check-cast p3, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/dkh;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0}, Lg/bsz;->bm()Lg/dsd;

    sget-object p2, Lg/gad;->ba:Lg/tw;

    invoke-virtual {p2, v5}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lt p1, p2, :cond_5

    :cond_4
    :goto_0
    return v2

    :cond_5
    return p3
.end method
