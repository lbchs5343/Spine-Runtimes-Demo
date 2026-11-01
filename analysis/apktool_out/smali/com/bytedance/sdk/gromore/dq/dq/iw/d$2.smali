.class Lcom/bytedance/sdk/gromore/dq/dq/iw/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/kk/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/gromore/dq/dq/iw/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/d;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->ox(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;)Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/d;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->ox(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;)Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;->d()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/d;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->ox(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;)Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/d;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->ox(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;)Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$2;->dq:Lcom/bytedance/sdk/gromore/dq/dq/iw/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    :cond_0
    return-void
.end method
