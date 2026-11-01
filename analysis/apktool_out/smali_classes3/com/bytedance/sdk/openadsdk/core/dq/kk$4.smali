.class Lcom/bytedance/sdk/openadsdk/core/dq/kk$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dq/kk;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/dq/kk;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/d/f;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dq/kk;Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/kk$4;->d:Lcom/bytedance/sdk/openadsdk/core/dq/kk;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dq/kk$4;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/kk$4;->d:Lcom/bytedance/sdk/openadsdk/core/dq/kk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/kk$4;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dq/kk;->d(Lcom/bytedance/sdk/openadsdk/core/dq/kk;Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V

    return-void
.end method
