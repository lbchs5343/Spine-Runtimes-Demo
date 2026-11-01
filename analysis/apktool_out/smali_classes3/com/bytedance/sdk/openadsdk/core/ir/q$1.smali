.class Lcom/bytedance/sdk/openadsdk/core/ir/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/q;->dq(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ir/q;

.field final synthetic dq:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ir/q;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/q$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/q;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/q$1;->dq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/q$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/q;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/q;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/q;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    const-string v1, "all_activity_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/q$1;->dq:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/q$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/q;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/q;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/q;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v3

    const-string v4, "hide_activity_count"

    invoke-interface {v3, v4, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0xa

    if-lt v3, v5, :cond_0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/q$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/q;

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/q;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/q;I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/q$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/q;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/q;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/q;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/q$1;->d:Lcom/bytedance/sdk/openadsdk/core/ir/q;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/q;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/q;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V

    return-void
.end method
