.class Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->iw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->iw(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v0

    const-string v1, "dislike"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->no(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->no(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->no(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ig(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->iw(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v2

    const-string v3, "close_fail"

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ig(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->iw(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v2

    const-string v3, "close_success"

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->iw(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->d(Ljava/lang/String;)V

    return-void
.end method
