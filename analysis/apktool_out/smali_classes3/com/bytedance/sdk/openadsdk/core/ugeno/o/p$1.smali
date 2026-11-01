.class Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;->ox(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;)Lg/dlv;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;)Lg/dlv;

    move-result-object v0

    check-cast v0, Lg/eid;

    invoke-virtual {v0}, Lg/eid;->ox()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getScrollState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;->ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;)Lg/dlv;

    move-result-object v0

    check-cast v0, Lg/eid;

    const-string v1, "header"

    iget-object v0, v0, Lg/eid;->w:Lg/dfp;

    if-eqz v0, :cond_0

    iput-object v1, v0, Lg/dfp;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->dq(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
