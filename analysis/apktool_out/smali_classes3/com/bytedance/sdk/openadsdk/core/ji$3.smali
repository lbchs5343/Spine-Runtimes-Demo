.class Lcom/bytedance/sdk/openadsdk/core/ji$3;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ji;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/h$s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/h$s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$3;->d:Lcom/bytedance/sdk/openadsdk/core/ji;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$3;->dq:Lcom/bytedance/sdk/openadsdk/core/h$s;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result p1

    if-eqz p1, :cond_3

    :try_start_0
    const-string p1, "verify"

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq(Lcom/bytedance/sdk/component/kk/d;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ji$p;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ji$p;

    move-result-object p1

    iget p2, p1, Lcom/bytedance/sdk/openadsdk/core/ji$p;->dq:I

    const/16 v0, 0x4e20

    if-eq p2, v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$3;->dq:Lcom/bytedance/sdk/openadsdk/core/h$s;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/h$s;->dq(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/ji$p;->ox:Lcom/bytedance/sdk/openadsdk/core/r/z;

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$3;->d:Lcom/bytedance/sdk/openadsdk/core/ji;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$3;->dq:Lcom/bytedance/sdk/openadsdk/core/h$s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/h$s;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$3;->dq:Lcom/bytedance/sdk/openadsdk/core/h$s;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/h$s;->dq(Lcom/bytedance/sdk/openadsdk/core/ji$p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_3
    const/4 p1, -0x2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->d()Ljava/lang/String;

    move-result-object p1

    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$3;->dq:Lcom/bytedance/sdk/openadsdk/core/h$s;

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h$s;->dq(ILjava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$3;->d:Lcom/bytedance/sdk/openadsdk/core/ji;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$3;->dq:Lcom/bytedance/sdk/openadsdk/core/h$s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/h$s;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$3;->dq:Lcom/bytedance/sdk/openadsdk/core/h$s;

    const/4 v0, -0x2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/h$s;->dq(ILjava/lang/String;)V

    return-void
.end method
