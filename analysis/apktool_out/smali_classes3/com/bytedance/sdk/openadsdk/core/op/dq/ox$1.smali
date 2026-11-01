.class Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;Landroid/net/Network;)Landroid/net/Network;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;->dq(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;Landroid/net/Network;)Landroid/net/Network;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;->dq(Landroid/net/Network;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;Z)Z

    return-void
.end method
