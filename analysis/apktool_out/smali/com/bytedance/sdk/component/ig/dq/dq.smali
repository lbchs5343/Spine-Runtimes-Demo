.class public Lcom/bytedance/sdk/component/ig/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/dq;
.implements Lcom/bytedance/sdk/component/utils/e$dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ig/dq/dq$dq;
    }
.end annotation


# instance fields
.field private final bl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final cd:I

.field private final ce:Lcom/bykv/vk/component/ttvideo/ILiveListener;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/api/dq$dq;",
            ">;>;"
        }
    .end annotation
.end field

.field private dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

.field private e:Landroid/graphics/SurfaceTexture;

.field private f:J

.field private fw:J

.field private gh:I

.field private volatile h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

.field private i:J

.field private volatile ia:Z

.field private volatile ig:Z

.field private ir:Ljava/util/concurrent/CountDownLatch;

.field private iw:Lcom/bytedance/sdk/component/utils/e;

.field private ji:J

.field private jy:J

.field private volatile k:Z

.field private volatile kk:Z

.field private volatile kx:I

.field private le:J

.field private volatile mn:Z

.field private volatile mp:Z

.field private final n:Ljava/lang/Runnable;

.field private volatile no:Z

.field private volatile o:Z

.field private op:Lorg/json/JSONObject;

.field private final ox:Landroid/content/Context;

.field private p:I

.field private volatile q:Z

.field private r:J

.field private s:I

.field private u:Z

.field private wp:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZJLorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->mn:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ia:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->kk:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->o:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->no:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ig:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->mp:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->q:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->f:J

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->fw:J

    iput v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->cd:I

    iput v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->gh:I

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->r:J

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->i:J

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->le:J

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->k:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->kx:I

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ji:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->bl:Ljava/util/ArrayList;

    new-instance v0, Lcom/bytedance/sdk/component/ig/dq/dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ig/dq/dq$1;-><init>(Lcom/bytedance/sdk/component/ig/dq/dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->n:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ir:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/bytedance/sdk/component/ig/dq/dq$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ig/dq/dq$6;-><init>(Lcom/bytedance/sdk/component/ig/dq/dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ce:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ox:Landroid/content/Context;

    iput-object p5, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->op:Lorg/json/JSONObject;

    cmp-long p1, p3, v2

    if-lez p1, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long p3, p3, v0

    goto :goto_0

    :cond_0
    const-wide/16 p3, -0x1

    :goto_0
    iput-wide p3, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->i:J

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/o/d/dq;->dq()Lcom/bytedance/sdk/component/o/d/dq;

    move-result-object p1

    const-string p3, "tt-live-video-player"

    invoke-virtual {p1, p0, p3}, Lcom/bytedance/sdk/component/o/d/dq;->dq(Lcom/bytedance/sdk/component/utils/e$dq;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    :cond_1
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ig/dq/dq;->p(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/ig/dq/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->kx:I

    return p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/ig/dq/dq;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->s:I

    return p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/ig/dq/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ji:J

    return-wide p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/ig/dq/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->q:Z

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/dq/dq;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->p:I

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/dq/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->le:J

    return-wide v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/dq/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->le:J

    return-wide p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/dq/dq;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->e:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/dq/dq;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->wp:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/dq/dq;Lcom/bykv/vk/component/ttvideo/ILivePlayer;)Lcom/bykv/vk/component/ttvideo/ILivePlayer;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/dq/dq;Lcom/bytedance/sdk/component/utils/e;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    return-object p1
.end method

.method private dq(JJ)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;JJ)V

    goto :goto_1

    :cond_0
    move-wide v4, p1

    move-wide v6, p3

    :goto_1
    move-wide p1, v4

    move-wide p3, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/dq/dq;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(JJ)V

    return-void
.end method

.method private declared-synchronized dq(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dq(Ljava/lang/String;)V
    .locals 10

    const-string v0, "ld"

    const-string v1, "sd"

    const-string v2, "hd"

    const-string v3, "uhd"

    const-string v4, "TTLiveVideoPlayer"

    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->op:Lorg/json/JSONObject;

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v7, "live "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "enable"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "appids"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-ne v7, v5, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "common"

    invoke-virtual {v7, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz p1, :cond_7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const-string v8, "app_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "api "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "update reso:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    const/16 v1, 0x2b

    invoke-interface {p1, v1, v0}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setStringOption(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "updateStream: catch exception:"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    aput-object p1, v0, v5

    invoke-static {v4, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/dq/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->no:Z

    return p1
.end method

.method public static synthetic f(Lcom/bytedance/sdk/component/ig/dq/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->fw:J

    return-wide v0
.end method

.method public static synthetic fw(Lcom/bytedance/sdk/component/ig/dq/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->r:J

    return-wide v0
.end method

.method private declared-synchronized i()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->u:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->bl:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/component/ig/dq/dq;)Lcom/bykv/vk/component/ttvideo/ILiveListener;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ce:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    return-object p0
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/component/ig/dq/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->f:J

    return-wide v0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/component/ig/dq/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->fw:J

    return-wide p1
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/component/ig/dq/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->no:Z

    return p0
.end method

.method public static synthetic jy(Lcom/bytedance/sdk/component/ig/dq/dq;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->gh:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->gh:I

    return v0
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/component/ig/dq/dq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ox:Landroid/content/Context;

    return-object p0
.end method

.method private le()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    new-instance v1, Lcom/bytedance/sdk/component/ig/dq/dq$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/ig/dq/dq$5;-><init>(Lcom/bytedance/sdk/component/ig/dq/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/component/ig/dq/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic mp(Lcom/bytedance/sdk/component/ig/dq/dq;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->n:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/sdk/component/ig/dq/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->c:Z

    return p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/component/ig/dq/dq;)Lcom/bykv/vk/component/ttvideo/ILivePlayer;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/ig/dq/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ji:J

    return-wide v0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/ig/dq/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->jy:J

    return-wide p1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/ig/dq/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->k:Z

    return p1
.end method

.method public static synthetic p(Lcom/bytedance/sdk/component/ig/dq/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->i:J

    return-wide v0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/component/ig/dq/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->f:J

    return-wide p1
.end method

.method private p(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/ig/dq/dq$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/ig/dq/dq$2;-><init>(Lcom/bytedance/sdk/component/ig/dq/dq;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/component/ig/dq/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ig:Z

    return p1
.end method

.method public static synthetic q(Lcom/bytedance/sdk/component/ig/dq/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->jy:J

    return-wide v0
.end method

.method private declared-synchronized r()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->bl:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ig/dq/dq;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/component/ig/dq/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->r:J

    return-wide p1
.end method

.method public static synthetic s(Lcom/bytedance/sdk/component/ig/dq/dq;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->d:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public cd()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->i:J

    return-wide v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/ig/dq/dq$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/ig/dq/dq$4;-><init>(Lcom/bytedance/sdk/component/ig/dq/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->kx:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->o:Z

    return-void
.end method

.method public dq()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->gh:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->fw:J

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->r:J

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(ZJZ)V

    return-void
.end method

.method public dq(F)V
    .locals 0

    return-void
.end method

.method public dq(I)V
    .locals 0

    return-void
.end method

.method public dq(J)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->e:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const-string p1, "TTLiveVideoPlayer"

    const-string v0, "setSurface...surface="

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x1

    const-string v3, "TTLiveVideoPlayer"

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    if-eqz p1, :cond_2

    new-instance v0, Landroid/view/Surface;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->e:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {p1, v0}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setSurface(Landroid/view/Surface;)V

    iput-boolean v4, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->mn:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ir:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ig/dq/dq;->r()V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/SurfaceHolder;

    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setSurface(Landroid/view/Surface;)V

    iput-boolean v4, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->mn:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ir:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ig/dq/dq;->r()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setStreamInfo(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ia:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set Datasource:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ia:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->gh:I

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v0, "stop: catch exception:"

    invoke-static {v3, v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iput-boolean v4, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->q:Z

    goto :goto_4

    :pswitch_5
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_2

    :try_start_3
    invoke-interface {p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    const-string v0, "release: catch exception:"

    invoke-static {v3, v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iput-boolean v4, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->kk:Z

    iput-boolean v4, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->q:Z

    goto :goto_4

    :pswitch_6
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz p1, :cond_2

    :try_start_5
    invoke-interface {p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->reset()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_6
    const-string v0, "reset: catch exception:"

    invoke-static {v3, v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iput-boolean v4, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->q:Z

    goto :goto_4

    :pswitch_7
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz p1, :cond_2

    :try_start_7
    invoke-interface {p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->stop()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_8
    const-string v0, "pause: catch exception:"

    invoke-static {v3, v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iput-boolean v4, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->q:Z

    :cond_2
    :goto_4
    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ig/dq/dq;->d()V

    iput-boolean v4, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->mp:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-void

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dq(Landroid/view/SurfaceHolder;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->wp:Landroid/view/SurfaceHolder;

    const-string v0, "TTLiveVideoPlayer...SurfaceHolder......"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLiveVideoPlayer"

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq$dq;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDataSource: model = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTLiveVideoPlayer"

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-eqz p1, :cond_1

    const/16 v0, 0x6b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->c:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    if-eqz v0, :cond_0

    const-string v0, "TTLiveVideoPlayer...setQuietPlay......isMute="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLiveVideoPlayer"

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setMute(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "setMute: catch exception:"

    invoke-static {v1, v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public dq(ZJZ)V
    .locals 0

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->mn:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ia:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    if-eqz p1, :cond_1

    iput-wide p2, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->le:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->jy:J

    invoke-virtual {p0, p4}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-eqz p1, :cond_0

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const-string p1, "TTLiveVideoPlayer"

    const-string p2, "TTLiveVideoPlayer...play......"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/component/ig/dq/dq$3;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/bytedance/sdk/component/ig/dq/dq$3;-><init>(Lcom/bytedance/sdk/component/ig/dq/dq;JZ)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Ljava/lang/Runnable;)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->ir:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->fw:J

    return-wide v0
.end method

.method public fw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->gh:I

    return v0
.end method

.method public gh()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->le:J

    return-wide v0
.end method

.method public ia()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->e:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public ig()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->s:I

    return v0
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->k:Z

    return v0
.end method

.method public jy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->kk:Z

    return v0
.end method

.method public kk()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTLiveVideoPlayer...isCompleted......isComplete....="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->no:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLiveVideoPlayer"

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->no:Z

    return v0
.end method

.method public mn()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->wp:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public mp()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->dq:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "TTLiveVideoPlayer"

    const-string v2, "isPlaying: catch exception:"

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public no()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->p:I

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->mp:Z

    return v0
.end method

.method public ox()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTLiveVideoPlayer...pause......pause....currentPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ig/dq/dq;->gh()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLiveVideoPlayer"

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public ox(Z)V
    .locals 1

    const-string p1, "TTLiveVideoPlayer"

    const-string v0, "setLoop: live is invalid "

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTLiveVideoPlayer...stop......stop....currentPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ig/dq/dq;->gh()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLiveVideoPlayer"

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->q:Z

    return v0
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->iw:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/dq/dq;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ig/dq/dq;->le()V

    :cond_0
    const-string v0, "TTLiveVideoPlayer"

    const-string v1, "TTLiveVideoPlayer...release......release...."

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
