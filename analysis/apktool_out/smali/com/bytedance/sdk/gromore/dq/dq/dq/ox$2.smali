.class Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;)Lcom/bytedance/sdk/gromore/dq/dq/dq/p;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/dq/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->d(Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;)Lcom/bytedance/msdk/core/admanager/kk;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/dq/dq;-><init>(Lcom/bytedance/msdk/core/admanager/kk;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;)Lcom/bytedance/sdk/gromore/dq/dq/dq/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;->dq(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;)Lcom/bytedance/sdk/gromore/dq/dq/dq/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;)Lcom/bytedance/sdk/gromore/dq/dq/dq/p;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
