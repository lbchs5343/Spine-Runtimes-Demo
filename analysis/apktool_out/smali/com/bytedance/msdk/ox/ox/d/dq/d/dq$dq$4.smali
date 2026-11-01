.class Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$4;
.super Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$4;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->d()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->dq()V

    :cond_0
    return-void
.end method

.method public dq(ILjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$4;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$4;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;Z)Z

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$4;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;->d:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/d/dq;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->dq(ILjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
