.class public Lcom/bytedance/sdk/component/ig/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/dq;
.implements Lcom/bytedance/sdk/component/utils/e$dq;


# static fields
.field public static volatile d:Z


# instance fields
.field private bl:Z

.field private cd:Z

.field dq:Ljava/util/concurrent/CountDownLatch;

.field private volatile e:I

.field private f:I

.field private fw:I

.field private gh:I

.field private h:Ljava/lang/Runnable;

.field private i:Landroid/graphics/SurfaceTexture;

.field private ia:Z

.field private ig:J

.field private iw:Z

.field private final ji:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private jy:J

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/api/dq$dq;",
            ">;>;"
        }
    .end annotation
.end field

.field private kk:Z

.field private kx:J

.field private le:Landroid/view/SurfaceHolder;

.field private mn:Z

.field private mp:J

.field private no:Z

.field private o:Z

.field private ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

.field private volatile p:Z

.field private q:J

.field private r:I

.field private s:Z

.field private wp:Lcom/bytedance/sdk/component/utils/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->p:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->s:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->iw:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->mn:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ia:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->kk:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->o:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->no:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ig/d/d;->mp:J

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ig/d/d;->q:J

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ig/d/d;->jy:J

    iput v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->f:I

    iput v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->fw:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->cd:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->k:Ljava/util/List;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->e:I

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ig/d/d;->kx:J

    new-instance v0, Lcom/bytedance/sdk/component/ig/d/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ig/d/d$1;-><init>(Lcom/bytedance/sdk/component/ig/d/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->h:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->dq:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ji:Ljava/util/ArrayList;

    const-string v0, "vd_"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ig/d/d;->dq(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/ig/d/d;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->r:I

    return p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/ig/d/d;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->mp:J

    return-wide p1
.end method

.method private d(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->mn:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ig/d/d;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/ig/d/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ia:Z

    return p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/ig/d/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->cd:Z

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/d/d;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->gh:I

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/d/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->kx:J

    return-wide v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/d/d;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->kx:J

    return-wide p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/d/d;Lcom/bytedance/sdk/component/utils/e;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->wp:Lcom/bytedance/sdk/component/utils/e;

    return-object p1
.end method

.method private dq(JJ)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->k:Ljava/util/List;

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

.method private dq(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/component/ig/d/dq;->dq(Landroid/content/Context;)Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->wp:Lcom/bytedance/sdk/component/utils/e;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/o/d/dq;->dq()Lcom/bytedance/sdk/component/o/d/dq;

    move-result-object p1

    const-string v0, "csj_"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/sdk/component/o/d/dq;->dq(Lcom/bytedance/sdk/component/utils/e$dq;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->wp:Lcom/bytedance/sdk/component/utils/e;

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ig/d/d;->e()V

    return-void
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[JZLcom/bykv/vk/component/ttvideo/log/VideoEventEngineUploader;)V
    .locals 7

    :try_start_0
    new-instance v0, Lcom/bykv/vk/component/ttvideo/playerwrapper/MediaPlayerWrapper;

    invoke-direct {v0}, Lcom/bykv/vk/component/ttvideo/playerwrapper/MediaPlayerWrapper;-><init>()V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->create(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;Landroid/content/Context;)Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->release()V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/component/ig/d/dq;->dq(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[JLcom/bykv/vk/component/ttvideo/log/VideoEventEngineUploader;)V

    invoke-static {p5}, Lcom/bytedance/sdk/component/ig/d/dq;->dq(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/bytedance/sdk/component/ig/d/d;->d:Z

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/d/d;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/ig/d/d;->dq(JJ)V

    return-void
.end method

.method private declared-synchronized dq(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ji:Ljava/util/ArrayList;

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

.method public static synthetic dq(Lcom/bytedance/sdk/component/ig/d/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->kk:Z

    return p1
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    new-instance v1, Lcom/bytedance/sdk/component/ig/d/d$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/ig/d/d$8;-><init>(Lcom/bytedance/sdk/component/ig/d/d;)V

    invoke-virtual {v0, v1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setVideoEngineSimpleCallback(Lcom/bykv/vk/component/ttvideo/VideoEngineSimpleCallback;)V

    return-void
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->o:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->iw:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->wp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/component/ig/d/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ig:J

    return-wide v0
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/component/ig/d/d;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/ig/d/d;->f:I

    return p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/component/ig/d/d;)Lcom/bykv/vk/component/ttvideo/TTVideoEngine;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    return-object p0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ji:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ig/d/d;->le()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/component/ig/d/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->mp:J

    return-wide v0
.end method

.method private kx()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->s:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->iw:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ia:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->kk:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->o:Z

    return-void
.end method

.method private le()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->bl:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->bl:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d;->ji:Ljava/util/ArrayList;

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

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->bl:Z

    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/component/ig/d/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ig/d/d;->k:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic mp(Lcom/bytedance/sdk/component/ig/d/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->q:J

    return-wide v0
.end method

.method public static synthetic no(Lcom/bytedance/sdk/component/ig/d/d;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/ig/d/d;->fw:I

    return p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/component/ig/d/d;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ig/d/d;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/ig/d/d;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->f:I

    return p1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/ig/d/d;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->jy:J

    return-wide p1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/ig/d/d;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ig/d/d;->wp:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/ig/d/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->ia:Z

    return p1
.end method

.method public static synthetic p(Lcom/bytedance/sdk/component/ig/d/d;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/ig/d/d;->e:I

    return p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/component/ig/d/d;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->fw:I

    return p1
.end method

.method public static synthetic p(Lcom/bytedance/sdk/component/ig/d/d;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->q:J

    return-wide p1
.end method

.method public static synthetic q(Lcom/bytedance/sdk/component/ig/d/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->jy:J

    return-wide v0
.end method

.method public static r()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/ig/d/d;->d:Z

    return v0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/component/ig/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ig/d/d;->i()V

    return-void
.end method

.method private wp()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ji:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cd()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public d()V
    .locals 4

    const-string v0, "CSJ_VIDEO_TTVideo"

    const-string v1, "play: "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->wp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d;->h:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bytedance/sdk/component/ig/d/d;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/bytedance/sdk/component/ig/d/d$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/ig/d/d$5;-><init>(Lcom/bytedance/sdk/component/ig/d/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->e:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->no:Z

    return-void
.end method

.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->isMute()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v1, p0, Lcom/bytedance/sdk/component/ig/d/d;->fw:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ig/d/d;->q:J

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ig/d/d;->jy:J

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ig/d/d;->ia:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/bytedance/sdk/component/ig/d/d;->dq(ZJZ)V

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
    .locals 3

    const-string v0, "CSJ_VIDEO_TTVideo"

    const-string v1, "seekTo: "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/ig/d/d;->iw:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    long-to-int p2, p1

    new-instance p1, Lcom/bytedance/sdk/component/ig/d/d$6;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/ig/d/d$6;-><init>(Lcom/bytedance/sdk/component/ig/d/d;)V

    invoke-virtual {v0, p2, p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->seekTo(ILcom/bykv/vk/component/ttvideo/SeekCompletionListener;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    const-string p2, "Can not exec seek, please exec setDataSource before seek"

    const/4 v1, 0x1

    aput-object p2, p1, v1

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ig/d/d;->d(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->i:Landroid/graphics/SurfaceTexture;

    new-instance v0, Lcom/bytedance/sdk/component/ig/d/d$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/ig/d/d$3;-><init>(Lcom/bytedance/sdk/component/ig/d/d;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ig/d/d;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_7

    const/16 v1, 0x6e

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->release()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/bytedance/sdk/component/ig/d/d;->mn:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->ox(Lcom/bykv/vk/openvk/component/video/api/dq;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ig/d/d;->kx()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->wp:Lcom/bytedance/sdk/component/utils/e;

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->pause()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->wp:Lcom/bytedance/sdk/component/utils/e;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->play()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    if-eqz v0, :cond_8

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    const-string v0, "CSJ_VIDEO_TTVideo"

    const-string v1, "setSurface: TextureView "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setSurface(Landroid/view/Surface;)V

    iput-boolean v4, p0, Lcom/bytedance/sdk/component/ig/d/d;->p:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->dq:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ig/d/d;->k()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    if-eqz v0, :cond_8

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/SurfaceHolder;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    iput-boolean v4, p0, Lcom/bytedance/sdk/component/ig/d/d;->p:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->dq:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ig/d/d;->k()V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_3
    return-void

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dq(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "CSJ_VIDEO_TTVideo"

    const-string v1, "setDisplay:  SurfaceView"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ig/d/d;->d(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->le:Landroid/view/SurfaceHolder;

    new-instance v0, Lcom/bytedance/sdk/component/ig/d/d$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/ig/d/d$2;-><init>(Lcom/bytedance/sdk/component/ig/d/d;Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ig/d/d;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq$dq;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->k:Ljava/util/List;

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
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->k:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setDirectUrlUseDataLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->s:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/component/ig/d/d;->fw:I

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->q()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object p1

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "TTVideoPlayer setDirectUrlUseDataLoader:  url ="

    aput-object v7, v6, v1

    aput-object v2, v6, v0

    const-string v0, " isH265="

    const/4 v1, 0x2

    aput-object v0, v6, v1

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const-string v0, " presize="

    const/4 v1, 0x4

    aput-object v0, v6, v1

    const/4 v0, 0x5

    aput-object v4, v6, v0

    const-string v0, " path="

    const/4 v1, 0x6

    aput-object v0, v6, v1

    const/4 v0, 0x7

    aput-object v5, v6, v0

    const-string v0, " fileName ="

    const/16 v1, 0x8

    aput-object v0, v6, v1

    const/16 v0, 0x9

    aput-object p1, v6, v0

    const-string p1, "CSJ_VIDEO_TTVideo"

    invoke-static {p1, v6}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Z)V
    .locals 2

    const-string v0, "CSJ_VIDEO_TTVideo"

    const-string v1, "setIsMute: "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setIsMute(Z)V

    return-void
.end method

.method public dq(ZJZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start: firstSeek:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " first:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " quiet:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CSJ_VIDEO_TTVideo"

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->wp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d;->h:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bytedance/sdk/component/ig/d/d;->e:I

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ig/d/d;->ig:J

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setStartTime(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    invoke-virtual {p1, p4}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setIsMute(Z)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->p:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->s:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ig/d/d;->i()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "seekTo: "

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "Can not exec play, please exec setDataSource && setSurface before seek"

    const/4 p3, 0x1

    aput-object p2, p1, p3

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/bytedance/sdk/component/ig/d/d$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/ig/d/d$4;-><init>(Lcom/bytedance/sdk/component/ig/d/d;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ig/d/d;->dq(Ljava/lang/Runnable;)V

    :goto_0
    const-string p1, "start:end"

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d;->dq:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public f()J
    .locals 5

    iget v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->fw:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/bytedance/sdk/component/ig/d/d;->q:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/bytedance/sdk/component/ig/d/d;->jy:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/component/ig/d/d;->jy:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->q:J

    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->q:J

    return-wide v0
.end method

.method public fw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->fw:I

    return v0
.end method

.method public gh()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->getCurrentPlaybackTime()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public ia()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->i:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public ig()I
    .locals 2

    const-string v0, "CSJ_VIDEO_TTVideo"

    const-string v1, "getVideoHeight: "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->r:I

    return v0
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->cd:Z

    return v0
.end method

.method public jy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->mn:Z

    return v0
.end method

.method public kk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ia:Z

    return v0
.end method

.method public mn()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->le:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public mp()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public no()I
    .locals 2

    const-string v0, "CSJ_VIDEO_TTVideo"

    const-string v1, "getVideoWidth: "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->gh:I

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->o:Z

    return v0
.end method

.method public ox()V
    .locals 2

    const-string v0, "CSJ_VIDEO_TTVideo"

    const-string v1, "pause: "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->wp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public ox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setLooping(Z)V

    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "CSJ_VIDEO_TTVideo"

    const-string v1, "stop: "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->wp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->ox:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s()V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ig/d/d;->wp()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d;->wp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/ig/d/d$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/ig/d/d$7;-><init>(Lcom/bytedance/sdk/component/ig/d/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
