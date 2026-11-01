.class public final Lg/bhz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lg/bhz;


# instance fields
.field public b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/concurrent/ExecutorService;

.field public volatile e:Lg/ees;

.field public final f:Lg/fnq;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lg/dil;

    const/4 v0, 0x6

    invoke-direct {v7, v0}, Lg/dil;-><init>(I)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lg/bhz;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lg/fnq;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/bhz;->f:Lg/fnq;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p1}, Lg/awt;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lg/cux;->av(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string v0, "fa"

    iput-object v0, p0, Lg/bhz;->c:Ljava/lang/String;

    new-instance v1, Lg/dhn;

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lg/dhn;-><init>(Lg/bhz;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lg/bhz;->l(Lg/bvf;)V

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lg/eoa;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0}, Lg/eoa;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lg/bhz;
    .locals 2

    invoke-static {p0}, Lg/ckd;->k(Ljava/lang/Object;)V

    sget-object v0, Lg/bhz;->a:Lg/bhz;

    if-nez v0, :cond_1

    const-class v0, Lg/bhz;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/bhz;->a:Lg/bhz;

    if-nez v1, :cond_0

    new-instance v1, Lg/bhz;

    invoke-direct {v1, p0, p1, p2, p3}, Lg/bhz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v1, Lg/bhz;->a:Lg/bhz;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lg/bhz;->a:Lg/bhz;

    return-object p0
.end method


# virtual methods
.method public final i()J
    .locals 5

    new-instance v0, Lg/bay;

    invoke-direct {v0}, Lg/bay;-><init>()V

    new-instance v1, Lg/flf;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lg/flf;-><init>(Lg/bhz;Lg/bay;I)V

    invoke-virtual {p0, v1}, Lg/bhz;->l(Lg/bvf;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lg/bay;->d(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v1, v0}, Lg/bay;->c(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lg/bhz;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lg/bhz;->g:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j(Ljava/lang/Exception;ZZ)V
    .locals 1

    iget-boolean v0, p0, Lg/bhz;->b:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lg/bhz;->b:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    new-instance p2, Lg/dhq;

    invoke-direct {p2, p0, p1}, Lg/dhq;-><init>(Lg/bhz;Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lg/bhz;->l(Lg/bvf;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    new-instance v4, Lg/bay;

    invoke-direct {v4}, Lg/bay;-><init>()V

    new-instance v0, Lg/ejs;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lg/ejs;-><init>(Lg/bhz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lg/bhz;->l(Lg/bvf;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v4, p1, p2}, Lg/bay;->d(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-static {p2, p1}, Lg/bay;->c(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p1
.end method

.method public final l(Lg/bvf;)V
    .locals 1

    iget-object v0, p0, Lg/bhz;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Lg/bay;

    invoke-direct {v0}, Lg/bay;-><init>()V

    new-instance v1, Lg/dhn;

    invoke-direct {v1, p0, p1, v0}, Lg/dhn;-><init>(Lg/bhz;Ljava/lang/String;Lg/bay;)V

    invoke-virtual {p0, v1}, Lg/bhz;->l(Lg/bvf;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lg/bay;->d(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lg/bay;->c(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/16 p1, 0x19

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 6

    new-instance v5, Lg/bay;

    invoke-direct {v5}, Lg/bay;-><init>()V

    new-instance v0, Lg/sp;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lg/sp;-><init>(Lg/bhz;Ljava/lang/String;Ljava/lang/String;ZLg/bay;)V

    invoke-virtual {p0, v0}, Lg/bhz;->l(Lg/bvf;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v5, p1, p2}, Lg/bay;->d(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    :cond_2
    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p2

    :cond_4
    :goto_1
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1
.end method
