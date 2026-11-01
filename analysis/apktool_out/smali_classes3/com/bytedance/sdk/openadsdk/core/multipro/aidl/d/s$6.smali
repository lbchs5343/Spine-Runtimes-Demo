.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;->mn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$6;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s$6;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/s;)Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;->iw()V

    :cond_0
    return-void
.end method
