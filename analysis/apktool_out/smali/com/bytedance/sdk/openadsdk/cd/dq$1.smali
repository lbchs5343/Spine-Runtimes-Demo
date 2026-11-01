.class Lcom/bytedance/sdk/openadsdk/cd/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cd/dq;->d(Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/cd/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/cd/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cd/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/cd/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/cd/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq(Lcom/bytedance/sdk/openadsdk/cd/dq;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ApiThread"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/cd/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq(Lcom/bytedance/sdk/openadsdk/cd/dq;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq(Lcom/bytedance/sdk/openadsdk/cd/dq;Ljava/util/concurrent/ThreadPoolExecutor;)V

    const-string v0, "release init pool!"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v3, "release mInitExecutor failed"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/api/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/cd/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/cd/dq;->d(Lcom/bytedance/sdk/openadsdk/cd/dq;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/cd/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cd/dq;->d(Lcom/bytedance/sdk/openadsdk/cd/dq;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/cd/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cd/dq;->d(Lcom/bytedance/sdk/openadsdk/cd/dq;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq(Lcom/bytedance/sdk/openadsdk/cd/dq;Ljava/util/concurrent/ThreadPoolExecutor;)V

    const-string v0, "release api pool!"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v3, "release mApiExecutor failed"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/api/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cd/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/cd/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/cd/dq;->ox(Lcom/bytedance/sdk/openadsdk/cd/dq;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    return-void
.end method
