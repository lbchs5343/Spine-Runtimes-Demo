.class Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$no;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;->dq(ZI)V

    :cond_1
    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/ox$dq;->dq()V

    :cond_0
    return-void
.end method
