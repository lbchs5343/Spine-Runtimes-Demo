.class Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/bykv/vk/openvk/component/video/api/dq;)V
    .locals 1

    const-string p1, "BaseVideoController"

    const-string v0, "IVideoPlayerCallback onPrepared: "

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ig(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/api/dq;I)V
    .locals 0

    const-string p1, "BaseVideoController"

    const-string p2, "IVideoPlayerCallback onBufferingUpdate: "

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;)V
    .locals 1

    const-string p1, "BaseVideoController"

    const-string v0, "IVideoPlayerCallback onCompletion: "

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(I)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;I)V
    .locals 0

    const-string p1, "BaseVideoController"

    const-string p2, "IVideoPlayerCallback onBufferEnd: "

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->n(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$7;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;II)V
    .locals 1

    const-string p1, "BaseVideoController"

    const-string v0, "IVideoPlayerCallback onVideoSizeChanged: "

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;I)I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;I)I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->bu()V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;III)V
    .locals 0

    const-string p1, "BaseVideoController"

    const-string p2, "IVideoPlayerCallback onBufferStart: "

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->kx(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$6;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;J)V
    .locals 1

    const-string p1, "BaseVideoController"

    const-string v0, "IVideoPlayerCallback onRenderStart: "

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ia(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->s(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;J)J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->fd()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->ox()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;JJ)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->op(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x32

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "IVideoPlayerCallback onPlayPositionUpdate: current = "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "; duration="

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v0, "BaseVideoController"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->er(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;

    move-object v2, p0

    move-object v7, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;JJLcom/bykv/vk/openvk/component/video/api/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IVideoPlayerCallback video_pip_big_error onError: code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->dq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseVideoController"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->gh(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;Lcom/bykv/vk/openvk/component/video/api/ox/d;Lcom/bykv/vk/openvk/component/video/api/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->dq()I

    move-result p1

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->ox()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;ILjava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "start"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string p3, "sdk_dns_analysis_end"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string p3, "player_dns_analysis_end"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string p3, "tcp_connect_end"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string p3, "tcp_first_package_end"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string p3, "first_video_package_end"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string p3, "first_frame_video_decode_end"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string p3, "first_frame_render_end"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wn(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->j(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->nh(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle_live_sdk_monitor"

    invoke-static {p1, p3, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;Z)V
    .locals 0

    const-string p1, "BaseVideoController"

    const-string p2, "IVideoPlayerCallback onSeekCompletion: "

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$5;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ox(Lcom/bykv/vk/openvk/component/video/api/dq;)V
    .locals 1

    const-string p1, "BaseVideoController"

    const-string v0, "IVideoPlayerCallback onRelease: "

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
