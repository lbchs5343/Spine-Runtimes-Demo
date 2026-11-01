.class Lcom/bytedance/msdk/ox/ox/dq/mn$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/dq/mn;->dq(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/dq/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/dq/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/mn$2;->dq:Lcom/bytedance/msdk/ox/ox/dq/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/mn$2;->dq:Lcom/bytedance/msdk/ox/ox/dq/mn;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/dq/mn;->ox(Lcom/bytedance/msdk/ox/ox/dq/mn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/mn$2;->dq:Lcom/bytedance/msdk/ox/ox/dq/mn;

    invoke-static {v1}, Lcom/bytedance/msdk/ox/ox/dq/mn;->s(Lcom/bytedance/msdk/ox/ox/dq/mn;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/mn$2;->dq:Lcom/bytedance/msdk/ox/ox/dq/mn;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/dq/mn;->ox(Lcom/bytedance/msdk/ox/ox/dq/mn;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/mn$2;->dq:Lcom/bytedance/msdk/ox/ox/dq/mn;

    invoke-static {v1}, Lcom/bytedance/msdk/ox/ox/dq/mn;->iw(Lcom/bytedance/msdk/ox/ox/dq/mn;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/ox/ox/dq/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/mn$2;->dq:Lcom/bytedance/msdk/ox/ox/dq/mn;

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/ox/ox/dq/dq;->d(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V

    :cond_0
    return-void
.end method
