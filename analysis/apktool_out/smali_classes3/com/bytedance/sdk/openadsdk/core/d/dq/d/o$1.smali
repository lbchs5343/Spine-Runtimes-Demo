.class Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$1;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Lcom/bytedance/sdk/openadsdk/core/r/io;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Lcom/bytedance/sdk/openadsdk/core/r/io;Landroid/widget/Toast;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Lcom/bytedance/sdk/openadsdk/core/r/io;Landroid/widget/Toast;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$1;->dq(Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "userName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x25d

    const-string v0, " userName or path is null!"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$d;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Landroid/widget/Toast;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->ox()Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$1;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->ox(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->p(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Z

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;Ljava/lang/String;Z)V

    return-void
.end method
