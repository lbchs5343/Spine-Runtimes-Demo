.class Lcom/bytedance/msdk/api/p/dq/d/p/dq$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/p/dq/d/p/dq;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/api/p/dq/d/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/p/dq/d/p/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/p/dq$7;->dq:Lcom/bytedance/msdk/api/p/dq/d/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/p/dq$7;->dq:Lcom/bytedance/msdk/api/p/dq/d/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->p(Lcom/bytedance/msdk/api/p/dq/d/p/dq;)Lcom/bytedance/msdk/api/p/dq/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/p/dq$7;->dq:Lcom/bytedance/msdk/api/p/dq/d/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->s(Lcom/bytedance/msdk/api/p/dq/d/p/dq;)Lcom/bytedance/msdk/api/p/dq/d/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ox;->c()Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/p/dq$7;->dq:Lcom/bytedance/msdk/api/p/dq/d/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->iw(Lcom/bytedance/msdk/api/p/dq/d/p/dq;)Lcom/bytedance/msdk/api/p/dq/d/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ox;->c()Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq(Landroid/view/View;)V

    :cond_0
    return-void
.end method
