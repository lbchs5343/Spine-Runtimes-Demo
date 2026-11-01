.class Lcom/bytedance/sdk/openadsdk/core/o/ox$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/o/ox$3;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox$3;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox$3;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox$3;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deeplink_success_realtime"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deeplink_fail_realtime"

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
