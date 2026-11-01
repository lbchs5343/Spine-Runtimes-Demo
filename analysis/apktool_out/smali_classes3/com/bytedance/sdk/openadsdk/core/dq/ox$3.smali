.class Lcom/bytedance/sdk/openadsdk/core/dq/ox$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dq/ox;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/dq/ox;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/dq/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dq/ox;->d(Lcom/bytedance/sdk/openadsdk/core/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    return-void
.end method
