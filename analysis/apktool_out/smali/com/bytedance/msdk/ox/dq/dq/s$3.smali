.class Lcom/bytedance/msdk/ox/dq/dq/s$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/dq/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/dq/dq/s;->kf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/dq/dq/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/dq/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/dq/dq/s$3;->dq:Lcom/bytedance/msdk/ox/dq/dq/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/s$3;->dq:Lcom/bytedance/msdk/ox/dq/dq/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->n()Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/s$3;->dq:Lcom/bytedance/msdk/ox/dq/dq/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->n()Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/ox;->dq()V

    :cond_0
    return-void
.end method
