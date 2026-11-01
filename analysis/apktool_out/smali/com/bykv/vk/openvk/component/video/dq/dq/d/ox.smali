.class public Lcom/bykv/vk/openvk/component/video/dq/dq/d/ox;
.super Ljava/lang/Object;


# static fields
.field public static final dq:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/ox;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static declared-synchronized dq(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V
    .locals 10

    const-class v0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/ox;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, " url\u3001dir and hash is must property   in VideoInfoModel"

    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-lt v1, v2, :cond_2

    sget-object v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/ox;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    if-nez v2, :cond_1

    new-instance v2, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    invoke-direct {v2, p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;-><init>(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "VideoFileManager"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "preloadVideo:  cache size = "

    aput-object v9, v8, v5

    aput-object v1, v8, v4

    aput-object v7, v8, v3

    invoke-static {p0, v8}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v2, p2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V

    :cond_2
    const-string p0, "VideoFileManager"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object p1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "preloadVideo:  cache size = "

    aput-object v2, v1, v5

    aput-object p2, v1, v4

    aput-object p1, v1, v3

    invoke-static {p0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 7

    const-class v0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/ox;

    monitor-enter v0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/ox;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "VideoFileManager"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "removePreload:  cache size = "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v3, v4, v2

    const/4 v2, 0x2

    aput-object p0, v4, v2

    invoke-static {v1, v4}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
