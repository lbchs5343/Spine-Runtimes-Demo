.class Lcom/bytedance/sdk/openadsdk/core/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dq/dq;Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/h$d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/d;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method
