.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;)Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;->dq()V

    return-void
.end method
