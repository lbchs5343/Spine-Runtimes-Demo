.class Lcom/bytedance/msdk/ox/p/ia$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/p/ia;->ox(Lcom/bytedance/msdk/api/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/p/ia;

.field final synthetic dq:Lcom/bytedance/msdk/api/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/ia;Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/ia$2;->d:Lcom/bytedance/msdk/ox/p/ia;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/p/ia$2;->dq:Lcom/bytedance/msdk/api/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ia$2;->d:Lcom/bytedance/msdk/ox/p/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/ia;->dq(Lcom/bytedance/msdk/ox/p/ia;)Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/ia$2;->d:Lcom/bytedance/msdk/ox/p/ia;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/ia;->dq(Lcom/bytedance/msdk/ox/p/ia;)Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/ia$2;->dq:Lcom/bytedance/msdk/api/dq;

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->b_(Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    return-void
.end method
