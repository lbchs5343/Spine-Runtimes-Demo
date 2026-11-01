.class Lcom/bytedance/msdk/dq/ox/o$dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/o$dq;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/o$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/o$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/o$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/o$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/o$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/o$dq;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/o$dq;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/jy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->s()V

    :cond_0
    return-void
.end method
