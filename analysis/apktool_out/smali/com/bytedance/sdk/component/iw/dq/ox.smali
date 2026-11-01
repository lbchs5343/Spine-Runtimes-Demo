.class public Lcom/bytedance/sdk/component/iw/dq/ox;
.super Ljava/lang/Object;


# static fields
.field private static final dq:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/bytedance/sdk/component/iw/dq/ox;->dq:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static dq()Ljava/util/concurrent/ExecutorService;
    .locals 8

    new-instance v0, Lcom/bytedance/sdk/component/o/p/p;

    sget-object v5, Lcom/bytedance/sdk/component/iw/dq/ox;->dq:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/bytedance/sdk/component/iw/dq/dq;

    const-string v1, "default"

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/component/iw/dq/dq;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-wide/16 v3, 0x1e

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/o/p/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/o/p/p;->allowCoreThreadTimeOut(Z)V

    return-object v0
.end method
