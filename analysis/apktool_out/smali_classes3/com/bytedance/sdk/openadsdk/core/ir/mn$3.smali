.class final Lcom/bytedance/sdk/openadsdk/core/ir/mn$3;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/mn;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/mn$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ir/mn$dq;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/mn$dq;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/mn$3;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/mn$3;->d:Lcom/bytedance/sdk/openadsdk/core/ir/mn$dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "MultiProcess"

    :try_start_0
    const-string v1, "getListenerManager().registerPermissionListener..."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/mn;->dq()Lcom/bytedance/sdk/openadsdk/core/fw;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/mn$3;->dq:Ljava/lang/String;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ir/mn$3;->d:Lcom/bytedance/sdk/openadsdk/core/ir/mn$dq;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/ir/mn$dq;)V

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/jy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
