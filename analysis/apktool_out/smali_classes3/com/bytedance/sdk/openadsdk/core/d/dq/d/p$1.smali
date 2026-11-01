.class Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;->dq()V

    :cond_0
    return-void
.end method
