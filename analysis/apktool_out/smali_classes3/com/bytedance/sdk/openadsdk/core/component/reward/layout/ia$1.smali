.class Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/ia$1;
.super Lcom/bytedance/sdk/openadsdk/core/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/ia;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/d/d;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Ljava/lang/String;

.field final synthetic ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/ia;

.field final synthetic no:Lcom/bytedance/sdk/openadsdk/core/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/ia;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/ia$1;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/ia;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/ia$1;->dq:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/ia$1;->no:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/d/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "click_live_element"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/ia$1;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/ia$1;->no:Lcom/bytedance/sdk/openadsdk/core/d/d;

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/ia$1;->no:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    return-void
.end method
