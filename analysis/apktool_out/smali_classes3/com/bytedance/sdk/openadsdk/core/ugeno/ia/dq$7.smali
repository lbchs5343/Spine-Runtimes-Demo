.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lg/dlv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lg/dlv;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;Lg/dlv;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->d:Lg/dlv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->d:Lg/dlv;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;Lg/dlv;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;->d:Lg/dlv;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;Lg/dlv;)V

    return-void
.end method
