.class Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/p/p/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Lcom/bytedance/sdk/openadsdk/core/p/p/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$5;->d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ZLjava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/ox;->d()V

    :cond_0
    return-void
.end method
