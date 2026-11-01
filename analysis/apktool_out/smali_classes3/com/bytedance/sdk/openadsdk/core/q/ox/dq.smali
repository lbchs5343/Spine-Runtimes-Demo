.class public Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;


# instance fields
.field private volatile dq:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq$1;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq:Landroid/util/LruCache;

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/q/ox/d;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq:Landroid/util/LruCache;

    if-nez v0, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public dq(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    if-nez v1, :cond_1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq(J)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq:Landroid/util/LruCache;

    invoke-virtual {p2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v1

    :catchall_0
    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/u;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/u;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/u;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public ox()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->ox:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    return-void
.end method
