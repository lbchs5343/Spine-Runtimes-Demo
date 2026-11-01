.class Lcom/bytedance/msdk/ox/ox/dq/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/p/s$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/dq/d;->d(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d$3;->dq:Lcom/bytedance/msdk/ox/ox/dq/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/core/p/d;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d$3;->dq:Lcom/bytedance/msdk/ox/ox/dq/d;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/dq/d;->dq:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d$3;->dq:Lcom/bytedance/msdk/ox/ox/dq/d;

    invoke-static {v1}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Lcom/bytedance/msdk/ox/ox/dq/d;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Lcom/bytedance/msdk/ox/ox/dq/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Lcom/bytedance/msdk/core/p/d;)V

    return-void
.end method
