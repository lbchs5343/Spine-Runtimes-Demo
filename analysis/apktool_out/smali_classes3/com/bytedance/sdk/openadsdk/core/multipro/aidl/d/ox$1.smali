.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/ox;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/ox;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;->dq()V

    :cond_0
    return-void
.end method
