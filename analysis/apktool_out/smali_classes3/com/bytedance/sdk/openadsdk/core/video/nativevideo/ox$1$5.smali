.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$5;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$5;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->er(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$5;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wn(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d()V

    :cond_0
    return-void
.end method
