.class final Lcom/bytedance/msdk/dq/s/iw$2;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/s/iw;->kk()Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-static {}, Lcom/bytedance/msdk/mn/ox/dq;->dq()Lcom/bytedance/msdk/mn/ox/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/mn/ox/dq;->s()V

    return-void
.end method
