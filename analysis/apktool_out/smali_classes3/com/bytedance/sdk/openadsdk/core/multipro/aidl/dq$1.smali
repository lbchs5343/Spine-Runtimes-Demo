.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/mp$dq;->dq(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/core/mp;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;Lcom/bytedance/sdk/openadsdk/core/mp;)Lcom/bytedance/sdk/openadsdk/core/mp;

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->d(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;)Lcom/bytedance/sdk/openadsdk/core/mp;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MultiProcess"

    const-string v0, "onServiceConnected throws :"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->p(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;)J

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MultiProcess"

    const-string v0, "BinderPool......onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
