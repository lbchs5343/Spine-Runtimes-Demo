.class Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILcom/bytedance/sdk/openadsdk/f/d/d/iw;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;->dq(ILcom/bytedance/sdk/openadsdk/f/d/d/iw;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dismiss()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->d(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Lcom/bytedance/sdk/openadsdk/f/d/d/iw;)V

    return-void
.end method
