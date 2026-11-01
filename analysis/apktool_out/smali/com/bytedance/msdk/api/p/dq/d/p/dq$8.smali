.class Lcom/bytedance/msdk/api/p/dq/d/p/dq$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/p/dq/d/p/dq;->fw()V
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

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/p/dq$8;->dq:Lcom/bytedance/msdk/api/p/dq/d/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/p/dq$8;->dq:Lcom/bytedance/msdk/api/p/dq/d/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->mn(Lcom/bytedance/msdk/api/p/dq/d/p/dq;)Lcom/bytedance/msdk/api/p/dq/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/p/dq$8;->dq:Lcom/bytedance/msdk/api/p/dq/d/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->ia(Lcom/bytedance/msdk/api/p/dq/d/p/dq;)Lcom/bytedance/msdk/api/p/dq/d/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ox;->c()Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/p/dq$8;->dq:Lcom/bytedance/msdk/api/p/dq/d/p/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/p/dq;->kk(Lcom/bytedance/msdk/api/p/dq/d/p/dq;)Lcom/bytedance/msdk/api/p/dq/d/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ox;->c()Lcom/bytedance/msdk/api/p/dq/ox/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq()V

    :cond_0
    return-void
.end method
