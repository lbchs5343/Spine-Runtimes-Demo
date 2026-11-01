.class public Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$dq;
.super Lcom/bytedance/sdk/openadsdk/core/mp$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/mp$dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(I)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq/iw;->d()Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq/iw;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq/p;->d()Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq/p;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq/d;->d()Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq/d;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq/ox;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq/s;->d()Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq/s;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq/mn;->d()Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq/mn;

    move-result-object p1

    return-object p1
.end method
