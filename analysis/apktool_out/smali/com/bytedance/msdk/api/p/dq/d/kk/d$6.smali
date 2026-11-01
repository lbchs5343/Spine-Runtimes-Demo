.class Lcom/bytedance/msdk/api/p/dq/d/kk/d$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/p/dq/d/kk/d;->dq(Lcom/bytedance/msdk/api/ox/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/api/p/dq/d/kk/d;

.field final synthetic dq:Lcom/bytedance/msdk/api/ox/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/p/dq/d/kk/d;Lcom/bytedance/msdk/api/ox/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/kk/d$6;->d:Lcom/bytedance/msdk/api/p/dq/d/kk/d;

    iput-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/kk/d$6;->dq:Lcom/bytedance/msdk/api/ox/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/kk/d$6;->d:Lcom/bytedance/msdk/api/p/dq/d/kk/d;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->iw(Lcom/bytedance/msdk/api/p/dq/d/kk/d;)Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->ig()Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/api/p/dq/d/kk/d$6;->dq:Lcom/bytedance/msdk/api/ox/dq;

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    :cond_0
    return-void
.end method
