.class Lcom/bytedance/sdk/openadsdk/core/p/p/iw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/p/iw;->d(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/p/p/iw;

.field final synthetic dq:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/p/iw;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/iw$2;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/iw$2;->dq:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/iw$2;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/iw;)Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/iw$2;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/iw;)Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/iw$2;->dq:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/s;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
