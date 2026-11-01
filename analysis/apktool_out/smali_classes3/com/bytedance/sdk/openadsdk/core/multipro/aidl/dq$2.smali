.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "MultiProcess"

    const-string v1, "binder died."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->d(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;)Lcom/bytedance/sdk/openadsdk/core/mp;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;Lcom/bytedance/sdk/openadsdk/core/mp;)Lcom/bytedance/sdk/openadsdk/core/mp;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;->s(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/dq;)V

    return-void
.end method
