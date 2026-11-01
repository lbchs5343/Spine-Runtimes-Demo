.class public Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;
.super Lcom/bytedance/sdk/openadsdk/core/q$dq;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

.field private dq:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q$dq;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;->dq:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;->d:Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;)Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;->d:Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    return-object p0
.end method

.method private dq(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;->dq:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ox()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;->dq(Ljava/lang/Runnable;)V

    return-void
.end method
