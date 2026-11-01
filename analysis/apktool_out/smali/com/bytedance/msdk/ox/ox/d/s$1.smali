.class Lcom/bytedance/msdk/ox/ox/d/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/s;->dq(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/ox/s/d/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/d/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/s$1;->dq:Lcom/bytedance/msdk/ox/ox/d/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/s$1;->dq:Lcom/bytedance/msdk/ox/ox/d/s;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/s;->dq(Lcom/bytedance/msdk/ox/ox/d/s;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/ox/ox/d/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/s$1;->dq:Lcom/bytedance/msdk/ox/ox/d/s;

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq$dq;)V

    return-void
.end method
