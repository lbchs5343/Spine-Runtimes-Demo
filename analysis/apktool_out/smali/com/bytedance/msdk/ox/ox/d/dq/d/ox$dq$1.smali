.class Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq$1;
.super Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq;->d(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq;)Lcom/bytedance/msdk/api/p/dq/mn/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq;->d(Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq;)Lcom/bytedance/msdk/api/p/dq/mn/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/mn/o;->dq(I)V

    :cond_0
    return-void
.end method
