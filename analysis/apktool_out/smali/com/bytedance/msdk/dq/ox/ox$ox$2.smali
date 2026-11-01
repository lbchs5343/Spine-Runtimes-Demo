.class Lcom/bytedance/msdk/dq/ox/ox$ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/ox$ox;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/ox$ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/ox$ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$2;->dq:Lcom/bytedance/msdk/dq/ox/ox$ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$2;->dq:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$ox$2;->dq:Lcom/bytedance/msdk/dq/ox/ox$ox;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ox$ox;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->s()V

    :cond_0
    return-void
.end method
