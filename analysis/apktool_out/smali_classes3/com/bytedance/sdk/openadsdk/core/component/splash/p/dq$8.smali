.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ig:Z

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/iw;->dq:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/iw;->dq:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->no()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->o(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->o(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d()V

    :cond_1
    return-void
.end method
