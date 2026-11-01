.class public abstract Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/p/ox;
.implements Lcom/bytedance/sdk/component/utils/e$dq;
.implements Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;
    }
.end annotation


# instance fields
.field protected cd:Z

.field protected d:Landroid/view/SurfaceHolder;

.field protected final dq:Lcom/bytedance/sdk/component/utils/e;

.field private e:J

.field protected f:J

.field protected fw:Z

.field protected gh:Z

.field protected i:Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;

.field protected ia:J

.field protected ig:Z

.field protected iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field protected jy:Z

.field private k:Z

.field protected kk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected le:Ljava/lang/Runnable;

.field protected mn:J

.field protected mp:J

.field protected no:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Z

.field protected ox:Landroid/graphics/SurfaceTexture;

.field protected p:Lcom/bykv/vk/openvk/component/video/api/dq;

.field protected q:Z

.field protected r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

.field protected s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

.field private wp:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/utils/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/e;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/e$dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mp:J

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->jy:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->k:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->cd:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gh:Z

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->le:Ljava/lang/Runnable;

    return-void
.end method

.method private k()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->fw()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v0

    instance-of v2, v0, Lcom/bykv/vk/openvk/component/video/api/renderview/SSRenderTextureView;

    if-nez v2, :cond_1

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private s(J)J
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public bl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->wp:J

    return-wide v0
.end method

.method public synthetic cd()Lcom/bykv/vk/openvk/component/video/api/p/d;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->wn()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v0

    return-object v0
.end method

.method public ce()V
    .locals 2

    const-string v0, "execPendingActions: before "

    const-string v1, "BaseController"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->k:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "execPendingActions:  exec"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    :goto_1
    return-void
.end method

.method public d(J)V
    .locals 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    const-string p2, "BaseController"

    const-string v0, "surfaceTextureDestroyed: "

    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->d(Z)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ox:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ce()V

    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d:Landroid/view/SurfaceHolder;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->d(Z)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Z)V

    :cond_0
    return-void
.end method

.method public d(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dq(JJ)J
    .locals 11

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->c()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->ox()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_2

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v3

    :cond_0
    sub-long v5, p1, v0

    cmp-long v2, v5, v3

    if-ltz v2, :cond_1

    cmp-long v2, p1, v3

    if-nez v2, :cond_2

    :cond_1
    return-wide v3

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v2, :cond_3

    return-wide p1

    :cond_3
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kr()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    const-wide/32 v5, 0xea60

    cmp-long v2, p3, v5

    if-lez v2, :cond_5

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q:Z

    if-eqz v2, :cond_4

    sub-long/2addr p3, v5

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->e:J

    sub-long v9, p1, v7

    cmp-long v2, v9, p3

    if-ltz v2, :cond_4

    return-wide v7

    :cond_4
    move-wide p3, v5

    :cond_5
    sub-long/2addr p1, v0

    cmp-long v0, p1, v3

    if-lez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    :goto_0
    int-to-long v0, v0

    mul-long p3, p3, v0

    add-long/2addr p3, p1

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->e:J

    return-wide p3
.end method

.method public dq(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(I)V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->wn()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object p1

    invoke-static {p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ox:Landroid/graphics/SurfaceTexture;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq;->d(Z)V

    :cond_0
    const-string p1, "BaseController"

    const-string p2, "surfaceTextureCreated: "

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ce()V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d:Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Landroid/view/SurfaceHolder;)V

    :cond_1
    const-string p1, "BaseController"

    const-string p2, "surfaceCreated: "

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ce()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->i:Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;

    return-void
.end method

.method public dq(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->mp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/s/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_1
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->p(Z)V

    :cond_0
    return-void
.end method

.method public er()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->jy:Z

    return v0
.end method

.method public fw()Lcom/bykv/vk/openvk/component/video/api/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    return-object v0
.end method

.method public gh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    return v0
.end method

.method public gx()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ia(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->k:Z

    return-void
.end method

.method public ig()J
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public ir()I
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    return v0
.end method

.method public ji()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gh:Z

    return-void
.end method

.method public kx()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ox:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/dq;->ia()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ox:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Landroid/graphics/SurfaceTexture;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/dq;->mn()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Landroid/view/SurfaceHolder;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public l()V
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "EXTRA_PLAY_START"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gx()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->mp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/s/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ce()V

    return-void
.end method

.method public nh()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    invoke-interface {p0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->mp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->iw(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "EXTRA_PLAY_ACTION"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gx()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->s(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    return-void
.end method

.method public no()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    return-wide v0
.end method

.method public ob()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "EXTRA_PLAY_ACTION"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gx()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->wn()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->ox(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    return-void
.end method

.method public op()Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;-><init>()V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->mn:J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gh()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->ia:Z

    invoke-interface {p0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->i()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->p:Z

    return-object v0
.end method

.method public ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;)J
    .locals 9

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->e()Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v2

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->we()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d(I)Z

    move-result v3

    if-nez v3, :cond_2

    return-wide v0

    :cond_2
    const/4 v3, 0x7

    if-eq v4, v3, :cond_3

    const/16 v3, 0x8

    if-eq v4, v3, :cond_3

    return-wide v0

    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-wide v0

    :cond_4
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mn()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_5

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->iw()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_5

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->f()I

    move-result p1

    if-lez p1, :cond_5

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-ltz p1, :cond_5

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v0

    double-to-long v0, v3

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->wp:J

    :cond_5
    return-wide v0
.end method

.method public ox(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->d(I)V

    :cond_0
    return-void
.end method

.method public ox(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mp:J

    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->cd:Z

    return-void
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->f:J

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->cd()J

    move-result-wide v0

    return-wide v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->cd:Z

    return v0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "EXTRA_PLAY_START"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gx()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    return-void
.end method

.method public u()Z
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->wp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public vf()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "EXTRA_PLAY_ACTION"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gx()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    return-void
.end method

.method public wn()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object v0
.end method
