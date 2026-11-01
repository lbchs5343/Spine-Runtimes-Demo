.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$4;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$4;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$4;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jo(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$4;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->cc(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$4;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->mc(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/ref/WeakReference;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$4;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->yo(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$4;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ox(Z)V

    const-string v0, "NativeVideoController"

    const-string v1, "\u51fa\u9519\u540e\u5c55\u793a\u7ed3\u679c\u9875\u3001\u3001\u3001\u3001\u3001\u3001\u3001showAdCard"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
