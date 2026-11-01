.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->p(Lg/fzc;Lg/dvh;Lg/eho;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lg/dvh;

.field final synthetic dq:Lg/fzc;

.field final synthetic ox:Lg/eho;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;Lg/fzc;Lg/dvh;Lg/eho;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;->dq:Lg/fzc;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;->d:Lg/dvh;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;->ox:Lg/eho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mp:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;->dq:Lg/fzc;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;->d:Lg/dvh;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$4;->ox:Lg/eho;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;Lg/fzc;Lg/dvh;Lg/eho;I)V

    :cond_1
    :goto_0
    return-void
.end method
