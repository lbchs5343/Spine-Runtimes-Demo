.class Lcom/bytedance/msdk/core/ia/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/ox/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/ia/dq;->ob()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/ia/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/ia/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/ia/dq$2;->dq:Lcom/bytedance/msdk/core/ia/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq$2;->dq:Lcom/bytedance/msdk/core/ia/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/ia/dq;->d(Lcom/bytedance/msdk/core/ia/dq;)V

    return-void
.end method

.method public dq(FF)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq$2;->dq:Lcom/bytedance/msdk/core/ia/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/ia/dq;->dq(Lcom/bytedance/msdk/core/ia/dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/ox/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq$2;->dq:Lcom/bytedance/msdk/core/ia/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/ia/dq;->dq(Lcom/bytedance/msdk/core/ia/dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/ox/s;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/ox/s;->dq(FF)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq$2;->dq:Lcom/bytedance/msdk/core/ia/dq;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/core/ia/dq;->dq(Lcom/bytedance/msdk/core/ia/dq;Landroid/view/View;)V

    return-void
.end method

.method public dq(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq$2;->dq:Lcom/bytedance/msdk/core/ia/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/ia/dq;->dq(Lcom/bytedance/msdk/core/ia/dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/ox/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/ia/dq$2;->dq:Lcom/bytedance/msdk/core/ia/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/ia/dq;->dq(Lcom/bytedance/msdk/core/ia/dq;)Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/ox/s;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/msdk/api/p/dq/ox/s;->dq(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
