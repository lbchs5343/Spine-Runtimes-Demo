.class final Lcom/bytedance/sdk/openadsdk/core/ir/iw$6;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$6;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$6;->d:Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->d()Lcom/bytedance/sdk/openadsdk/core/fw;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$6;->dq:Ljava/lang/String;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/iw$6;->d:Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
