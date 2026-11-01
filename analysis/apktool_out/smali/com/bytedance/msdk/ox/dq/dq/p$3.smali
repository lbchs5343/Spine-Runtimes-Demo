.class Lcom/bytedance/msdk/ox/dq/dq/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/dq/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/dq/dq/p;->kf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/dq/dq/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/dq/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/dq/dq/p$3;->dq:Lcom/bytedance/msdk/ox/dq/dq/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/p$3;->dq:Lcom/bytedance/msdk/ox/dq/dq/p;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->c()Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/p$3;->dq:Lcom/bytedance/msdk/ox/dq/dq/p;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->c()Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq()V

    :cond_0
    return-void
.end method
