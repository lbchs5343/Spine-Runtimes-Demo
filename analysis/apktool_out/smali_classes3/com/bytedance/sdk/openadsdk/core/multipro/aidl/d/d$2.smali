.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d;->dq(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d$2;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d;)Lcom/bytedance/sdk/openadsdk/core/ir/mn$dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d;)Lcom/bytedance/sdk/openadsdk/core/ir/mn$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d$2;->dq:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/mn$dq;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
