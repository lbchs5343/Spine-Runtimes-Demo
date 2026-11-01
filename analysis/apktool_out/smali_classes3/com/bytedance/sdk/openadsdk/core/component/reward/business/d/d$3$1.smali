.class Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    const-string v1, "\u5f53\u524d\u65e0\u65b0\u89c6\u9891\uff0c\u8bf7\u70b9\u51fb\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->s()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq(ILcom/bytedance/sdk/openadsdk/widget/TTProgressBar;)V

    return-void
.end method
