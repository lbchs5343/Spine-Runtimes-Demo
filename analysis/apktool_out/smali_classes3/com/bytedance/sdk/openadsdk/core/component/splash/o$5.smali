.class Lcom/bytedance/sdk/openadsdk/core/component/splash/o$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/iw;->dq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/iw;->dq:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->no()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$5$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$5$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/o$5;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d()V

    return-void
.end method
