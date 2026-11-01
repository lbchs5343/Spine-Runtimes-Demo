.class Lcom/bytedance/msdk/ox/s/dq/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/s/dq/d;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/s/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/s/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d$2;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$2;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/ox/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$2;->dq:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/ox/d/dq/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/ox/d/dq/dq;->kk()V

    :cond_0
    return-void
.end method
