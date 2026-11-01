.class Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq$2;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq$2;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq$2;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq$2$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq$2$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq$2;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq$2;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/dq/dq;)Lcom/bytedance/msdk/ox/dq/dq/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->gm()Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/dq/dq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->dq(Landroid/view/View;)V

    :cond_0
    return-void
.end method
