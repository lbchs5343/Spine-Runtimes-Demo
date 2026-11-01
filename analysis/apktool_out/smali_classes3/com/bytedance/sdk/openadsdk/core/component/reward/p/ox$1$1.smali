.class Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->fw:Z

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->dq(Z)V

    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->fw:Z

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->dq(Z)V

    return-void
.end method

.method public dq(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->kk(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;I)I

    return-void
.end method

.method public ox()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ia()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/t;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/p;->d()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ox(I)V

    :cond_0
    return-void
.end method
