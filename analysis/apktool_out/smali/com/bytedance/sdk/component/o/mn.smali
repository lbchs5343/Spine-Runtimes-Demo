.class public Lcom/bytedance/sdk/component/o/mn;
.super Lcom/bytedance/sdk/component/o/iw;


# static fields
.field public static d:Lcom/bytedance/sdk/component/o/dq;

.field public static final dq:I

.field public static ox:Z

.field public static p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/component/o/mn;->dq:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/component/o/mn;->ox:Z

    const/16 v0, 0x78

    sput v0, Lcom/bytedance/sdk/component/o/mn;->p:I

    return-void
.end method

.method public static d()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/no;->kk()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/bytedance/sdk/component/o/kk;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/component/o/kk;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/o/kk;->dq(I)V

    sget-object p1, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/no;->ig()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static dq()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/no;->ig()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static dq(I)V
    .locals 0

    sput p0, Lcom/bytedance/sdk/component/o/mn;->p:I

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/o/dq;)V
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/component/o/mn;->d:Lcom/bytedance/sdk/component/o/dq;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/o/kk;)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/o/kk;->dq(I)V

    sget-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/no;->o()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/o/kk;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/o/kk;->dq(I)V

    sget-object p1, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/no;->ig()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static dq(Z)V
    .locals 0

    sput-boolean p0, Lcom/bytedance/sdk/component/o/mn;->ox:Z

    return-void
.end method

.method public static ox()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static ox(Lcom/bytedance/sdk/component/o/kk;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->d()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static p()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/no;->no()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static p(Lcom/bytedance/sdk/component/o/kk;)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/no;->ig()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static s(Lcom/bytedance/sdk/component/o/kk;)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/no;->o()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static s()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/o/mn;->ox:Z

    return v0
.end method
