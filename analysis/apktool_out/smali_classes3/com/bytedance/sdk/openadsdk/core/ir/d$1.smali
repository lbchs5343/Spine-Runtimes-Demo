.class Lcom/bytedance/sdk/openadsdk/core/ir/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/d;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ir/d;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ir/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$1;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/d;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$1;->dq:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/d;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$1;->dq:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v3, v0}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->d(Lcom/bytedance/sdk/openadsdk/core/ir/d;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->ox(Lcom/bytedance/sdk/openadsdk/core/ir/d;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v1

    const-string v3, "histRunningCount"

    invoke-interface {v1, v3, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/d;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->ox(Lcom/bytedance/sdk/openadsdk/core/ir/d;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->d(Lcom/bytedance/sdk/openadsdk/core/ir/d;)I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
