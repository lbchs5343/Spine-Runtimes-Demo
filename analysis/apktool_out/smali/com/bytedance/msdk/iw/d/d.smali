.class public Lcom/bytedance/msdk/iw/d/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile ox:Lcom/bytedance/msdk/iw/d/d;


# instance fields
.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/dq/dq/p;",
            ">;"
        }
    .end annotation
.end field

.field public dq:Lcom/bytedance/msdk/api/p/no;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/iw/d/d;->d:Ljava/util/Map;

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/d;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/dq/dq/p;

    return-object p1
.end method

.method public static dq()Lcom/bytedance/msdk/iw/d/d;
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/iw/d/d;->ox:Lcom/bytedance/msdk/iw/d/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/iw/d/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/iw/d/d;->ox:Lcom/bytedance/msdk/iw/d/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/iw/d/d;

    invoke-direct {v1}, Lcom/bytedance/msdk/iw/d/d;-><init>()V

    sput-object v1, Lcom/bytedance/msdk/iw/d/d;->ox:Lcom/bytedance/msdk/iw/d/d;

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
    sget-object v0, Lcom/bytedance/msdk/iw/d/d;->ox:Lcom/bytedance/msdk/iw/d/d;

    return-object v0
.end method

.method private dq(Ljava/lang/String;Lcom/bytedance/msdk/dq/dq/p;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/d;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ox(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;
    .locals 1

    const-string v0, "pangle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bytedance/msdk/dq/ox/dq;

    invoke-direct {p1}, Lcom/bytedance/msdk/dq/ox/dq;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Lcom/bytedance/msdk/iw/d/p;

    invoke-direct {p1}, Lcom/bytedance/msdk/iw/d/p;-><init>()V

    return-object p1
.end method


# virtual methods
.method public declared-synchronized d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/dq/dq/p;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/d;->d:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized dq(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/iw/d/d;->d(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/bytedance/msdk/iw/d/d;->dq:Lcom/bytedance/msdk/api/p/no;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/bytedance/msdk/core/no/dq;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/p/no;->ox()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/iw/d/d;->dq:Lcom/bytedance/msdk/api/p/no;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/p/no;->p()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/core/no/dq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bytedance/msdk/iw/d/d;->dq:Lcom/bytedance/msdk/api/p/no;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/dq;->p()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/iw/d/d;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/bytedance/msdk/iw/d/d;->dq(Ljava/lang/String;Lcom/bytedance/msdk/dq/dq/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/msdk/api/p/no;)Lcom/bytedance/msdk/dq/dq/p;
    .locals 0

    iput-object p2, p0, Lcom/bytedance/msdk/iw/d/d;->dq:Lcom/bytedance/msdk/api/p/no;

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/iw/d/d;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;

    move-result-object p1

    return-object p1
.end method

.method public ox()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/msdk/dq/dq/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
