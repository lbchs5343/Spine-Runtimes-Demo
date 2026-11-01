.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;)Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;)Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;->d()V

    :cond_0
    return-void
.end method
