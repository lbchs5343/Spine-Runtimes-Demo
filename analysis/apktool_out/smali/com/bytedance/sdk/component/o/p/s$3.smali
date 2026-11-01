.class Lcom/bytedance/sdk/component/o/p/s$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/o/p/s;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Ljava/lang/Runnable;

.field final synthetic ox:J

.field final synthetic p:Ljava/util/concurrent/TimeUnit;

.field final synthetic s:Lcom/bytedance/sdk/component/o/p/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/o/p/s;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/p/s$3;->s:Lcom/bytedance/sdk/component/o/p/s;

    iput-object p2, p0, Lcom/bytedance/sdk/component/o/p/s$3;->dq:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/bytedance/sdk/component/o/p/s$3;->d:J

    iput-wide p5, p0, Lcom/bytedance/sdk/component/o/p/s$3;->ox:J

    iput-object p7, p0, Lcom/bytedance/sdk/component/o/p/s$3;->p:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/s$3;->s:Lcom/bytedance/sdk/component/o/p/s;

    iget-object v1, p0, Lcom/bytedance/sdk/component/o/p/s$3;->dq:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/bytedance/sdk/component/o/p/s$3;->d:J

    iget-wide v4, p0, Lcom/bytedance/sdk/component/o/p/s$3;->ox:J

    iget-object v6, p0, Lcom/bytedance/sdk/component/o/p/s$3;->p:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/component/o/p/s;->d(Lcom/bytedance/sdk/component/o/p/s;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/p/s$3;->s:Lcom/bytedance/sdk/component/o/p/s;

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/p/s;->dq(Lcom/bytedance/sdk/component/o/p/s;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/o/p/s$3;->dq:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
