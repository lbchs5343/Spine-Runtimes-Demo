.class Lcom/bytedance/msdk/ox/s/dq/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/s/dq/d;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/api/dq;

.field final synthetic dq:Ljava/util/List;

.field final synthetic ox:Lcom/bytedance/msdk/ox/s/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/s/dq/d;Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d$5;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/s/dq/d$5;->dq:Ljava/util/List;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/s/dq/d$5;->d:Lcom/bytedance/msdk/api/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$5;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/ox/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$5;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/ox/d/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d$5;->dq:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/s/dq/d$5;->d:Lcom/bytedance/msdk/api/dq;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/msdk/ox/d/dq/dq;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    return-void
.end method
