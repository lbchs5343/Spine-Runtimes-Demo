.class Lcom/bytedance/msdk/ox/s/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/s/d/d;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/no;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/no/no;

.field final synthetic dq:Ljava/util/List;

.field final synthetic ox:Lcom/bytedance/msdk/ox/s/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/s/d/d;Ljava/util/List;Lcom/bytedance/msdk/core/no/no;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/d/d$1;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/s/d/d$1;->dq:Ljava/util/List;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/s/d/d$1;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d$1;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/d/d;->dq(Lcom/bytedance/msdk/ox/s/d/d;)Lcom/bytedance/msdk/ox/d/d/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/d/d$1;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/d/d;->dq(Lcom/bytedance/msdk/ox/s/d/d;)Lcom/bytedance/msdk/ox/d/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/d/d$1;->dq:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/s/d/d$1;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/msdk/ox/d/d/dq;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/no;)V

    :cond_0
    return-void
.end method
