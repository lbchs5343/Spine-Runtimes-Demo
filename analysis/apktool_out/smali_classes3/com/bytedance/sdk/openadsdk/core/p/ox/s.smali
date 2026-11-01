.class public Lcom/bytedance/sdk/openadsdk/core/p/ox/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;,
        Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;
    }
.end annotation


# static fields
.field private static final ox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

.field dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->ox:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$1;->dq:[I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/p/ox/d;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    return-void

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    return-void
.end method

.method private dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v2, 0x7

    if-eq p1, v2, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/mn;->d()Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    move-result-object v2

    const-string v3, "Full"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/mn;->dq()Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    move-result-object v2

    const-string v3, "Reward"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/mn;->ox()Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    move-result-object v2

    const-string v3, "Splash"

    :goto_0
    if-nez v2, :cond_3

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;-><init>()V

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;

    move-result-object v3

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;

    move-result-object p1

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->s()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$ox;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;

    move-result-object p1

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->d()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;

    move-result-object p1

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->ox()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;

    move-result-object p1

    return-object p1
.end method

.method private s(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->ox:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->s(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;

    invoke-interface {v1, p1, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->dq()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->s(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;

    invoke-interface {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->dq()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->s:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {p2, p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;->dq(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;->dq(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;ZJ)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;ZJLcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->s(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    invoke-interface {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->s(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    invoke-interface {v1, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;->dq(Ljava/lang/String;Ljava/lang/String;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->s(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->s(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->d:Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s;->dq:Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;

    invoke-interface {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;->ox(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    const/4 p1, 0x0

    return p1
.end method
