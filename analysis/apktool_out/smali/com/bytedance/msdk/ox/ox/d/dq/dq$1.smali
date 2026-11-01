.class Lcom/bytedance/msdk/ox/ox/d/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/dq/dq/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/dq;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/dq;)Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/dq;)Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/dq;)Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/dq;)Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/dq;)Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/dq;)Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Ljava/util/List;)V

    :cond_0
    return-void
.end method
