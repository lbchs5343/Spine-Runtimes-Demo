.class Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$2;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$2;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;->p(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$2;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;->p(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->dq(Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq$2;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;->p(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->wp()V

    :cond_0
    return-void
.end method
