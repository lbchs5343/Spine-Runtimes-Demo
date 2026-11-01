.class Lcom/bytedance/sdk/openadsdk/core/ji$6;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ji;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/h$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/h$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$6;->d:Lcom/bytedance/sdk/openadsdk/core/ji;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$6;->dq:Lcom/bytedance/sdk/openadsdk/core/h$dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 12

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result p1

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ji$d;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ji$d;

    move-result-object p1

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/ji$d;->dq:I

    int-to-long v1, v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->kk()J

    move-result-wide v3

    iget-boolean v5, p1, Lcom/bytedance/sdk/openadsdk/core/ji$d;->d:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v8, v1

    move-wide v10, v3

    move v7, v5

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    move-wide v8, v1

    move-wide v10, v3

    const/4 v7, 0x0

    :goto_0
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ji$6;->dq:Lcom/bytedance/sdk/openadsdk/core/h$dq;

    invoke-interface/range {v6 .. v11}, Lcom/bytedance/sdk/openadsdk/core/h$dq;->dq(ZJJ)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result p1

    int-to-long v1, p1

    :cond_2
    move-wide v5, v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$6;->dq:Lcom/bytedance/sdk/openadsdk/core/h$dq;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->kk()J

    move-result-wide v7

    invoke-interface/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/h$dq;->dq(ZJJ)V

    :cond_3
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ji$6;->dq:Lcom/bytedance/sdk/openadsdk/core/h$dq;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/h$dq;->dq(ZJJ)V

    return-void
.end method
