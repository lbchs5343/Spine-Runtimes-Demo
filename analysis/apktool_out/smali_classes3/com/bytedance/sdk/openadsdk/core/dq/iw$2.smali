.class Lcom/bytedance/sdk/openadsdk/core/dq/iw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/dq/iw;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/d/ig;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dq/iw;Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/iw$2;->d:Lcom/bytedance/sdk/openadsdk/core/dq/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dq/iw$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/ig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/iw$2;->d:Lcom/bytedance/sdk/openadsdk/core/dq/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/iw$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/ig;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/dq/iw;Lcom/bytedance/sdk/openadsdk/f/d/d/ig;)V

    return-void
.end method
