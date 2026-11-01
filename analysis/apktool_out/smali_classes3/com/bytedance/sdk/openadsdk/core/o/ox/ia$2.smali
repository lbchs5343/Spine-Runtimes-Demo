.class Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->fw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$2;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/fw$dq;->dq(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/core/fw;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$2;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$2;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$2;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/r;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$2;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->jy:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/fw;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$2;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
