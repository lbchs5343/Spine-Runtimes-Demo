.class Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->d(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$3;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/fw$dq;->dq(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/core/fw;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->jy:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
