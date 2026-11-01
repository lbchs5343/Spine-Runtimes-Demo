.class public Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

.field private dq:Landroid/content/Context;

.field private final iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mn:Z

.field private volatile ox:Z

.field private p:Ljava/io/File;

.field private s:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->ox:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->p:Ljava/io/File;

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->s:Ljava/io/File;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->iw:Ljava/util/List;

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->mn:Z

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->p:Ljava/io/File;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->s:Ljava/io/File;

    return-void
.end method

.method public static synthetic d(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->p:Ljava/io/File;

    return-object p0
.end method

.method private d(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V
    .locals 3

    const-class v0, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->iw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic d(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V

    return-void
.end method

.method private d()Z
    .locals 7

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->s:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mp()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method private dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V
    .locals 3

    const-class v0, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->iw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V
    .locals 3

    const-class v0, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->iw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;Ljava/io/Closeable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Ljava/io/Closeable;)V

    return-void
.end method

.method private dq(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private ox()V
    .locals 12

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->ox()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->ox()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/ig;->d()Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/d/dq/ig$dq;

    const-string v1, "v_preload"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->gh()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->r()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->i()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->p:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v4

    iget-object v5, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mp()Z

    move-result v5

    iget-object v6, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d()I

    move-result v6

    if-lez v6, :cond_2

    int-to-long v7, v6

    iget-object v9, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v9}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ig()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-ltz v11, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v4, v6

    :cond_2
    :goto_1
    const-string v6, "-"

    const-string v7, "bytes="

    const-string v8, "RANGE"

    if-eqz v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v4

    iget-object v5, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq()Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v4

    iget-object v5, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq()Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    :goto_2
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object v0

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d$1;-><init>(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;J)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/dq/d;->dq(Lcom/bytedance/sdk/component/d/dq/ox;)V

    return-void
.end method

.method public static synthetic ox(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->ox:Z

    return p0
.end method

.method private p()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->s:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic p(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->s()V

    return-void
.end method

.method private s()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->p:Ljava/io/File;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->s:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error renaming file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->p:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->s:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for completion!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "VideoPreload"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic s(Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->p()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object v0
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V
    .locals 2

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->mn:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->iw:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->iw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string p1, "VideoPreload"

    const-string v1, "Cache file is exist"

    invoke-static {p1, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->kk(I)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    const/16 v0, 0xc8

    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/ox;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->mn:Z

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->d:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->kk(I)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->ox()V

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/d;->ox:Z

    return-void
.end method
