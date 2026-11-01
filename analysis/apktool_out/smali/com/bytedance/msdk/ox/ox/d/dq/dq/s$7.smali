.class Lcom/bytedance/msdk/ox/ox/d/dq/dq/s$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;->dq(Lcom/bytedance/msdk/api/ox/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;

.field final synthetic dq:Lcom/bytedance/msdk/api/ox/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;Lcom/bytedance/msdk/api/ox/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/s$7;->d:Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/s$7;->dq:Lcom/bytedance/msdk/api/ox/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/s$7;->d:Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/dq/s;)Lcom/bytedance/msdk/ox/dq/dq/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->gm()Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/p/dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/s$7;->dq:Lcom/bytedance/msdk/api/ox/dq;

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    :cond_0
    return-void
.end method
