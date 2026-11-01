.class public Lcom/bykv/vk/openvk/component/video/dq/d/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/dq/d/p$d;,
        Lcom/bykv/vk/openvk/component/video/dq/d/p$dq;
    }
.end annotation


# static fields
.field private static volatile s:Lcom/bykv/vk/openvk/component/video/dq/d/p;


# instance fields
.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/component/video/dq/d/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile dq:I

.field private volatile ia:Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;

.field private volatile ig:Lcom/bykv/vk/openvk/component/video/dq/d/ox;

.field private volatile iw:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

.field private final kk:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/bykv/vk/openvk/component/video/dq/d/p$dq;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mn:Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

.field private volatile mp:Ljava/lang/String;

.field private volatile no:Lcom/bykv/vk/openvk/component/video/dq/d/ox;

.field private final o:Lcom/bykv/vk/openvk/component/video/dq/d/d$d;

.field private final ox:Lcom/bykv/vk/openvk/component/video/dq/d/p$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/component/video/dq/d/p$d<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/concurrent/ExecutorService;

.field private volatile q:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x28000

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq:I

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->d:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->kk:Ljava/util/HashSet;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/d/p$1;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/p$1;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/p;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->o:Lcom/bykv/vk/openvk/component/video/dq/d/d$d;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/d/p$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/p$d;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/p$1;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/p$d;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/p$d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->p:Ljava/util/concurrent/ExecutorService;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/p$d;->dq(Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/bykv/vk/openvk/component/video/dq/d/p;)Lcom/bykv/vk/openvk/component/video/dq/d/p$d;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->ox:Lcom/bykv/vk/openvk/component/video/dq/d/p$d;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/d/p;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->d:Landroid/util/SparseArray;

    return-object p0
.end method

.method private static dq(Lcom/bykv/vk/openvk/component/video/dq/d/p$d;)Ljava/util/concurrent/ExecutorService;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/component/video/dq/d/p$d<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    new-instance v2, Lcom/bytedance/sdk/component/o/p/p;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Lcom/bykv/vk/openvk/component/video/dq/d/p$4;

    invoke-direct {v9}, Lcom/bykv/vk/openvk/component/video/dq/d/p$4;-><init>()V

    new-instance v10, Lcom/bykv/vk/openvk/component/video/dq/d/p$5;

    invoke-direct {v10, p0}, Lcom/bykv/vk/openvk/component/video/dq/d/p$5;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/p$d;)V

    const/4 v3, 0x0

    const-wide/16 v5, 0x3c

    move-object v8, p0

    invoke-direct/range {v2 .. v10}, Lcom/bytedance/sdk/component/o/p/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v2
.end method

.method public static ox()Lcom/bykv/vk/openvk/component/video/dq/d/p;
    .locals 2

    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->s:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    if-nez v0, :cond_1

    const-class v0, Lcom/bykv/vk/openvk/component/video/dq/d/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bykv/vk/openvk/component/video/dq/d/p;->s:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/p;-><init>()V

    sput-object v1, Lcom/bykv/vk/openvk/component/video/dq/d/p;->s:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->s:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    return-object v0
.end method


# virtual methods
.method public d()Lcom/bykv/vk/openvk/component/video/dq/d/ox;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->ig:Lcom/bykv/vk/openvk/component/video/dq/d/ox;

    return-object v0
.end method

.method public dq()Lcom/bykv/vk/openvk/component/video/dq/d/ox;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->no:Lcom/bykv/vk/openvk/component/video/dq/d/ox;

    return-object v0
.end method

.method public dq(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq:I

    :cond_0
    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v0, :cond_1

    const-string v0, "MaxPreloadSize: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->mn:Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(ZZLjava/lang/String;)V

    return-void
.end method

.method public dq(ZLjava/lang/String;)V
    .locals 8

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->mp:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->q:Z

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v0, :cond_0

    const-string v0, "setCurrentPlayKey, "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->kk:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->kk:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->kk:Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->kk:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/component/video/dq/d/p$dq;

    iget-boolean v2, p2, Lcom/bykv/vk/openvk/component/video/dq/d/p$dq;->dq:Z

    iget-boolean v3, p2, Lcom/bykv/vk/openvk/component/video/dq/d/p$dq;->d:Z

    iget v4, p2, Lcom/bykv/vk/openvk/component/video/dq/d/p$dq;->ox:I

    iget-object v5, p2, Lcom/bykv/vk/openvk/component/video/dq/d/p$dq;->p:Ljava/lang/String;

    iget-object v6, p2, Lcom/bykv/vk/openvk/component/video/dq/d/p$dq;->s:Ljava/util/Map;

    iget-object v7, p2, Lcom/bykv/vk/openvk/component/video/dq/d/p$dq;->iw:[Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    move-object v2, v1

    sget-boolean p2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    goto :goto_1

    :cond_2
    move-object v2, p0

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v2, p0

    sget v1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ia:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    goto :goto_6

    :cond_4
    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    iget-object v1, v2, Lcom/bykv/vk/openvk/component/video/dq/d/p;->d:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_4
    iget-object v3, v2, Lcom/bykv/vk/openvk/component/video/dq/d/p;->d:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/d/d;->dq(Z)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bykv/vk/openvk/component/video/dq/d/d;

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_5
    :goto_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq()V

    return-void

    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :cond_6
    :goto_6
    iget-object p1, v2, Lcom/bykv/vk/openvk/component/video/dq/d/p;->d:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_6
    iget-object p2, v2, Lcom/bykv/vk/openvk/component/video/dq/d/p;->d:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v4, 0x0

    :goto_7
    if-ge v4, p2, :cond_a

    iget-object v5, v2, Lcom/bykv/vk/openvk/component/video/dq/d/p;->d:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object p2, v0

    goto :goto_d

    :cond_7
    :goto_8
    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_8
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/component/video/dq/d/d;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq()V

    sget-boolean p2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    goto :goto_9

    :cond_b
    if-ne v1, v3, :cond_e

    iget-object p1, v2, Lcom/bykv/vk/openvk/component/video/dq/d/p;->kk:Ljava/util/HashSet;

    monitor-enter p1

    :try_start_7
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/dq/d/d;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/dq/d/d;->q:Ljava/lang/Object;

    check-cast v0, Lcom/bykv/vk/openvk/component/video/dq/d/p$dq;

    if-eqz v0, :cond_c

    iget-object v1, v2, Lcom/bykv/vk/openvk/component/video/dq/d/p;->kk:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object p2, v0

    goto :goto_b

    :cond_d
    monitor-exit p1

    return-void

    :goto_b
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p2

    :cond_e
    :goto_c
    return-void

    :goto_d
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p2
.end method

.method public varargs dq(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p6

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->ia:Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->mn:Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;

    goto :goto_0

    :goto_1
    iget-object v8, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    if-eqz v7, :cond_f

    if-nez v8, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz v6, :cond_10

    array-length v0, v6

    if-gtz v0, :cond_2

    goto/16 :goto_7

    :cond_2
    if-gtz p3, :cond_3

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq:I

    move v3, v0

    goto :goto_2

    :cond_3
    move/from16 v3, p3

    :goto_2
    if-eqz p2, :cond_4

    move-object/from16 v9, p4

    goto :goto_3

    :cond_4
    invoke-static/range {p4 .. p4}, Lcom/bykv/vk/openvk/component/video/api/iw/d;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_3
    invoke-virtual {v7, v9}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;->p(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    int-to-long v4, v3

    cmp-long v10, v1, v4

    if-ltz v10, :cond_5

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz p1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->length()J

    return-void

    :cond_5
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    move-result-object v0

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/d/d;->dq(Z)I

    move-result v1

    invoke-virtual {v0, v1, v9}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz p1, :cond_10

    const-string p1, "has running proxy task, skip preload for key: "

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_6
    iget-object v10, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->d:Landroid/util/SparseArray;

    monitor-enter v10

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :cond_7
    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/d/p$dq;

    move v1, p1

    move v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bykv/vk/openvk/component/video/dq/d/p$dq;-><init>(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->mp:Ljava/lang/String;

    if-eqz v2, :cond_b

    sget v4, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ia:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->kk:Ljava/util/HashSet;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->kk:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_8
    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz p1, :cond_9

    const-string p1, "cancel preload: "

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    monitor-exit v10

    return-void

    :cond_a
    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    iget-boolean v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->q:Z

    if-ne v4, p1, :cond_b

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    monitor-exit v10

    return-void

    :cond_b
    invoke-static/range {p5 .. p5}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_e

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;

    if-eqz v5, :cond_c

    new-instance v6, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;

    iget-object v12, v5, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;->dq:Ljava/lang/String;

    iget-object v5, v5, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;->d:Ljava/lang/String;

    invoke-direct {v6, v12, v5}, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :cond_e
    new-instance p1, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    invoke-direct {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;-><init>()V

    invoke-virtual {p1, v7}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object p1

    move-object/from16 v4, p4

    invoke-virtual {p1, v4}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->d(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object p1

    new-instance v2, Lcom/bykv/vk/openvk/component/video/dq/d/ig;

    invoke-static/range {p6 .. p6}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/bykv/vk/openvk/component/video/dq/d/ig;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/ig;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Ljava/util/List;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(I)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object p1

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->o:Lcom/bykv/vk/openvk/component/video/dq/d/d$d;

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d$d;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq(Ljava/lang/Object;)Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/d$dq;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/d;

    move-result-object p1

    invoke-interface {v11, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p;->p:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_5
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :cond_f
    :goto_6
    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz p1, :cond_10

    const-string p1, "TAG_PROXY_Preloader"

    const-string v0, "cache or videoProxyDB null in Preloader!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_7
    return-void
.end method

.method public varargs dq(ZZILjava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    return-void
.end method

.method public dq(ZZLjava/lang/String;)V
    .locals 7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/d/p$2;

    const-string v3, "cancel b b S"

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/bykv/vk/openvk/component/video/dq/d/p$2;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/p;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public p()V
    .locals 2

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/d/p$3;

    const-string v1, "cancelAll"

    invoke-direct {v0, p0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/p$3;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/p;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method
