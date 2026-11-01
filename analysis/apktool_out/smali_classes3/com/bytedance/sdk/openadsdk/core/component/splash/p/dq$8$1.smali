.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->o(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->o(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d()V

    :cond_0
    return-void
.end method
