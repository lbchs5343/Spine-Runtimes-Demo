.class Lcom/bytedance/sdk/component/ig/d/d$8;
.super Lcom/bykv/vk/component/ttvideo/VideoEngineSimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ig/d/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/ig/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ig/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/VideoEngineSimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferEnd(I)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/d/d;->ig(Lcom/bytedance/sdk/component/ig/d/d;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/d/d;->mp(Lcom/bytedance/sdk/component/ig/d/d;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v5}, Lcom/bytedance/sdk/component/ig/d/d;->q(Lcom/bytedance/sdk/component/ig/d/d;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/component/ig/d/d;->p(Lcom/bytedance/sdk/component/ig/d/d;J)J

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onBufferEnd: code ="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "CSJ_VIDEO_TTVideo"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/d/d;->mn(Lcom/bytedance/sdk/component/ig/d/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-interface {v1, v2, p1}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onBufferStart(III)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/ig/d/d;->ox(Lcom/bytedance/sdk/component/ig/d/d;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/d/d;->no(Lcom/bytedance/sdk/component/ig/d/d;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ig/d/d;->p(Lcom/bytedance/sdk/component/ig/d/d;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/component/ig/d/d;->ox(Lcom/bytedance/sdk/component/ig/d/d;J)J

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "onBufferStart: reason ="

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v0, v4, v2

    const-string v0, "  afterFirstFrame ="

    const/4 v2, 0x2

    aput-object v0, v4, v2

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v0, "  action="

    const/4 v1, 0x4

    aput-object v0, v4, v1

    const/4 v0, 0x5

    aput-object v3, v4, v0

    const-string v0, "CSJ_VIDEO_TTVideo"

    invoke-static {v0, v4}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/d/d;->mn(Lcom/bytedance/sdk/component/ig/d/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
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

    check-cast v1, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;III)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBufferingUpdate(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;I)V
    .locals 3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onBufferingUpdate: percent ="

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "CSJ_VIDEO_TTVideo"

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ig/d/d;->mn(Lcom/bytedance/sdk/component/ig/d/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
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

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-interface {v0, v1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->d(Lcom/bykv/vk/openvk/component/video/api/dq;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCompletion(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;)V
    .locals 2

    const-string p1, "CSJ_VIDEO_TTVideo"

    const-string v0, "onCompletion: "

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ig/d/d;->ox(Lcom/bytedance/sdk/component/ig/d/d;Z)Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ig/d/d;->ox(Lcom/bytedance/sdk/component/ig/d/d;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ig/d/d;->ox(Lcom/bytedance/sdk/component/ig/d/d;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/d/d;->o(Lcom/bytedance/sdk/component/ig/d/d;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ig/d/d;->mn(Lcom/bytedance/sdk/component/ig/d/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onError(Lcom/bykv/vk/component/ttvideo/utils/Error;)V
    .locals 3

    const-string v0, "CSJ_VIDEO_TTVideo"

    const-string v1, "onError: "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/utils/Error;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/utils/Error;->getInternalCode()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(II)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ig/d/d;->mn(Lcom/bytedance/sdk/component/ig/d/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-interface {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLoadStateChanged(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;I)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onLoadStateChanged: loadState ="

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "CSJ_VIDEO_TTVideo"

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMDLHitCache(Ljava/lang/String;J)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "onMDLHitCache: MDLPlayTaskKey ="

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const/4 v0, 0x1

    aput-object p1, p3, v0

    const-string p1, " hitCacheSize = "

    const/4 v0, 0x2

    aput-object p1, p3, v0

    const/4 p1, 0x3

    aput-object p2, p3, p1

    const-string p1, "CSJ_VIDEO_TTVideo"

    invoke-static {p1, p3}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;I)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onPlaybackStateChanged: playbackState ="

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "CSJ_VIDEO_TTVideo"

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPrepare(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;)V
    .locals 1

    const-string p1, "CSJ_VIDEO_TTVideo"

    const-string v0, "onPrepare: "

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepared(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;)V
    .locals 2

    const-string p1, "CSJ_VIDEO_TTVideo"

    const-string v0, "onPrepared: "

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ig/d/d;->dq(Lcom/bytedance/sdk/component/ig/d/d;Z)Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ig/d/d;->mn(Lcom/bytedance/sdk/component/ig/d/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
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

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->d(Lcom/bykv/vk/openvk/component/video/api/dq;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRenderSeekComplete(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRenderSeekComplete: isSeekInCached = "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "CSJ_VIDEO_TTVideo"

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRenderStart(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;)V
    .locals 4

    const-string p1, "CSJ_VIDEO_TTVideo"

    const-string v0, "onRenderStart: "

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/component/ig/d/d;->ia(Lcom/bytedance/sdk/component/ig/d/d;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/component/ig/d/d;->d(Lcom/bytedance/sdk/component/ig/d/d;J)J

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ig/d/d;->mn(Lcom/bytedance/sdk/component/ig/d/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
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

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ig/d/d;->kk(Lcom/bytedance/sdk/component/ig/d/d;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;J)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ig/d/d;->d(Lcom/bytedance/sdk/component/ig/d/d;Z)Z

    return-void
.end method

.method public onRetry(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRetry: playType = "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "CSJ_VIDEO_TTVideo"

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUseMDLCacheEnd()V
    .locals 2

    const-string v0, "CSJ_VIDEO_TTVideo"

    const-string v1, "onUseMDLCacheEnd: "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;II)V
    .locals 4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onVideoSizeChanged: width = "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, " height = "

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 p1, 0x3

    aput-object v0, v1, p1

    const-string p1, "CSJ_VIDEO_TTVideo"

    invoke-static {p1, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ig/d/d;->dq(Lcom/bytedance/sdk/component/ig/d/d;I)I

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/ig/d/d;->d(Lcom/bytedance/sdk/component/ig/d/d;I)I

    iget-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ig/d/d;->mn(Lcom/bytedance/sdk/component/ig/d/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
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

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/d/d$8;->dq:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-interface {v0, v1, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;II)V

    goto :goto_0

    :cond_1
    return-void
.end method
