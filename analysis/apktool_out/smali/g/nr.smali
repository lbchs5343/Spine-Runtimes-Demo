.class public final Lg/nr;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Ljava/util/concurrent/ScheduledExecutorService;

.field public static volatile b:Lg/nr;

.field public static volatile c:Lcom/bytedance/sdk/component/o/p/p;

.field public static volatile d:Lcom/bytedance/sdk/component/o/p/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lg/ayn;->b:I

    new-instance v1, Lcom/bytedance/sdk/component/o/p/p;

    sget v2, Lg/ayn;->b:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lg/ayn;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v8, Lg/gqv;

    sget-object v0, Lg/coi;->d:Lg/coi;

    const-string v3, "tt-api-thread-"

    invoke-direct {v8, v0, v3}, Lg/gqv;-><init>(Lg/coi;Ljava/lang/String;)V

    const-wide/16 v4, 0x1

    move v3, v2

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/component/o/p/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lg/nr;->c:Lcom/bytedance/sdk/component/o/p/p;

    new-instance v3, Lcom/bytedance/sdk/component/o/p/p;

    sget v4, Lg/ayn;->c:I

    sget-object v9, Lg/ayn;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v10, Lg/gqv;

    const-string v1, "tt-default-thread-"

    invoke-direct {v10, v0, v1}, Lg/gqv;-><init>(Lg/coi;Ljava/lang/String;)V

    move-object v8, v6

    const-wide/16 v6, 0x1

    move v5, v4

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/sdk/component/o/p/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v3, Lg/nr;->d:Lcom/bytedance/sdk/component/o/p/p;

    new-instance v0, Lg/gqv;

    sget-object v1, Lg/coi;->dq:Lg/coi;

    const-string v2, "tt-delay-thread-"

    invoke-direct {v0, v1, v2}, Lg/gqv;-><init>(Lg/coi;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/ox;->ox(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lg/nr;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method
