.class Lcom/bytedance/msdk/ox/ox/dq/d$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/dq/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/dq/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d$1;->dq:Lcom/bytedance/msdk/ox/ox/dq/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d$1;->dq:Lcom/bytedance/msdk/ox/ox/dq/d;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Lcom/bytedance/msdk/ox/ox/dq/d;Landroid/os/Message;)V

    return-void
.end method
