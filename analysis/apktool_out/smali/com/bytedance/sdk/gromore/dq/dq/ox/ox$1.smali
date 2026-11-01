.class Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/p/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->d(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->ox(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/msdk/core/admanager/mn;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;-><init>(Lcom/bytedance/msdk/core/admanager/mn;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->d(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    :cond_1
    return-void
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->d(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->ox(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/msdk/core/admanager/mn;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;-><init>(Lcom/bytedance/msdk/core/admanager/mn;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->d(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/ox;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
