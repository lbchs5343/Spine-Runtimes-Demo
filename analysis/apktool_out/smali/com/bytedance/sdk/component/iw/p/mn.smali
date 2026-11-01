.class public Lcom/bytedance/sdk/component/iw/p/mn;
.super Lcom/bytedance/sdk/component/iw/p/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/p/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1

    const-string v0, "check_duplicate"

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->wp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/iw/ox/iw;->mn()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter v2

    :try_start_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    new-instance v0, Lcom/bytedance/sdk/component/iw/p/p;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/iw/p/p;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
