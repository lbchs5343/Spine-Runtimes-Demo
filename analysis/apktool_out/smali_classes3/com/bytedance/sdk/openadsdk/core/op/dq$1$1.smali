.class Lcom/bytedance/sdk/openadsdk/core/op/dq$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/op/dq$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/op/dq$1;

.field final synthetic dq:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/op/dq$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/op/dq$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq$1$1;->dq:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/op/dq$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/op/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/op/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq$1$1;->dq:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/op/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/op/dq;Landroid/net/Network;Ljava/util/List;)V

    return-void
.end method
