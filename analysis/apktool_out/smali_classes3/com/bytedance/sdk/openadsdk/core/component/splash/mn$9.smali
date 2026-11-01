.class Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$9;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$9;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$9;->d:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->d()V

    return-void
.end method
