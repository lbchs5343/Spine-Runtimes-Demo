.class Lcom/bytedance/sdk/openadsdk/core/video/d/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->d()V

    :cond_1
    return-void
.end method
