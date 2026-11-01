.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/bykv/vk/openvk/component/video/api/dq;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->mp(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->q(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->no(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->gh(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/api/dq;I)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(I)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->yy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$8;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;II)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->vf(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;III)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->gx(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$7;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;J)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->o(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->no(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;J)J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ig(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;JJ)V
    .locals 6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->v(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x32

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ha(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;JJ)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ce(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->dq()I

    move-result p1

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->ox()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;ILjava/lang/String;)V

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->cv(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dc(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jw(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle_live_sdk_monitor"

    invoke-static {p1, p3, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq;Z)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->j(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$5;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ox(Lcom/bykv/vk/openvk/component/video/api/dq;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->nh(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    return-void
.end method
