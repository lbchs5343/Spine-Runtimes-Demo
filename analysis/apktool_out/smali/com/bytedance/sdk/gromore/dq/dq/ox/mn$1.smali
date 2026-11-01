.class Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/iw/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->d(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/sdk/gromore/dq/dq/ox/s;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->ox(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/msdk/core/admanager/dq;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;-><init>(Lcom/bytedance/msdk/core/admanager/dq;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;Lcom/bytedance/sdk/gromore/dq/dq/ox/s;)Lcom/bytedance/sdk/gromore/dq/dq/ox/s;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-static {v1}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->d(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/sdk/gromore/dq/dq/ox/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    :cond_1
    return-void
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->d(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/sdk/gromore/dq/dq/ox/s;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->ox(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/msdk/core/admanager/dq;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/ox/s;-><init>(Lcom/bytedance/msdk/core/admanager/dq;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;Lcom/bytedance/sdk/gromore/dq/dq/ox/s;)Lcom/bytedance/sdk/gromore/dq/dq/ox/s;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-static {v1}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->d(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/sdk/gromore/dq/dq/ox/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
