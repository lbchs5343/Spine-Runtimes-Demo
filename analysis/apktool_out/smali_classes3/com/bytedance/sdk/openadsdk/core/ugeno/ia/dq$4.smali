.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->fw()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->p(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ia:Lg/dlv;

    instance-of v1, v0, Lg/eid;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ia:Lg/dlv;

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->ox(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ia:Lg/dlv;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq(Lg/dlv;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->p(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v1, "in_web_click"

    const/4 v2, 0x0

    const-string v3, "landingpage"

    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    return-void
.end method
