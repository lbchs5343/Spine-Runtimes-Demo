.class Lcom/bytedance/sdk/openadsdk/core/o/ox$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/o/ox;

.field final synthetic dq:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->dq:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public dq()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "open_url_app"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->d:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$3;->dq:Landroid/content/Intent;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/o/ox$3$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/ox$3;)V

    const-string v3, "main"

    const-string v4, "internal"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/d$dq;Z)Z

    return-void
.end method

.method public ox()V
    .locals 0

    return-void
.end method
