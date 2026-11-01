.class Lcom/bytedance/sdk/component/o/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/o/p;->dq(Ljava/util/concurrent/ThreadPoolExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Ljava/util/concurrent/ThreadPoolExecutor;

.field final synthetic ox:Z

.field final synthetic p:Lcom/bytedance/sdk/component/o/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/o/p;Ljava/util/concurrent/ThreadPoolExecutor;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/p$3;->p:Lcom/bytedance/sdk/component/o/p;

    iput-object p2, p0, Lcom/bytedance/sdk/component/o/p$3;->dq:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-wide p3, p0, Lcom/bytedance/sdk/component/o/p$3;->d:J

    iput-boolean p5, p0, Lcom/bytedance/sdk/component/o/p$3;->ox:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p$3;->dq:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/o/p$3;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v1, 0x3c

    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p$3;->dq:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/o/p$3;->ox:Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method
