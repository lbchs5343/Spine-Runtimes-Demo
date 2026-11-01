.class Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$3;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$3;->dq:Ljava/lang/String;

    const/4 v3, 0x6

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void
.end method

.method public dq(Lg/dlv;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dlv;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$3;->dq:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v3, 0x5

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void
.end method
