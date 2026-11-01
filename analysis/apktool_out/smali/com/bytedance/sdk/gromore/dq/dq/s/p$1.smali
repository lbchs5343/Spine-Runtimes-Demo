.class Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/ia/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/s/p;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->d(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/sdk/gromore/dq/dq/s/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/s/d;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->ox(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/msdk/core/admanager/o;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/s/d;-><init>(Lcom/bytedance/msdk/core/admanager/o;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/s/p;Lcom/bytedance/sdk/gromore/dq/dq/s/d;)Lcom/bytedance/sdk/gromore/dq/dq/s/d;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-static {v1}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->d(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/sdk/gromore/dq/dq/s/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V

    :cond_1
    return-void
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->d(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/sdk/gromore/dq/dq/s/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/s/d;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->ox(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/msdk/core/admanager/o;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/s/d;-><init>(Lcom/bytedance/msdk/core/admanager/o;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/s/p;Lcom/bytedance/sdk/gromore/dq/dq/s/d;)Lcom/bytedance/sdk/gromore/dq/dq/s/d;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-static {v1}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->d(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/sdk/gromore/dq/dq/s/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/s/p$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/p;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s/p;->dq(Lcom/bytedance/sdk/gromore/dq/dq/s/p;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
