.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
.super Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public dq(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(II)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(II)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(II)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->d(II)V

    :cond_0
    return-void
.end method

.method public k()Lcom/bykv/vk/openvk/component/video/api/renderview/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->fw()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
