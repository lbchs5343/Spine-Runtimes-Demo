.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->dq(Lg/dlv;Ljava/lang/String;Lg/blw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Lg/dlv;

.field final synthetic ox:Lg/blw;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;Lg/dlv;Ljava/lang/String;Lg/blw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;->dq:Lg/dlv;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;->ox:Lg/blw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mp:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;->dq:Lg/dlv;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;->ox:Lg/blw;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;Lg/dlv;Ljava/lang/String;Lg/blw;)V

    :cond_1
    :goto_0
    return-void
.end method
