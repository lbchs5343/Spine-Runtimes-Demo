.class final Lcom/bytedance/sdk/openadsdk/core/q/ox$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/q/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/q/ox$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/q/ox$dq;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/q/ox$dq;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox$1;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox$dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox$1;->dq:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/q/ox;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q/ox;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "js_pform"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox$1;->dq:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/q/ox;->dq:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q/ox;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox$dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/q/ox$dq;->run()V

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->ox()Lcom/bytedance/sdk/component/kk/d/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox$1;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "content-type"

    const-string v3, "application/json; charset=utf-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/d/p;->p(Ljava/util/Map;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/q/ox$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/q/ox$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/q/ox$1;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/d/ox;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    return-void
.end method
