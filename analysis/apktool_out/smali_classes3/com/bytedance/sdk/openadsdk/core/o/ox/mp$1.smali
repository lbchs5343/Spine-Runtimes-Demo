.class Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->mp()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/ox;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->s()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->iw()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/d;->s(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hy()Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dq(Lcom/bytedance/sdk/openadsdk/core/r/s;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->mp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/s;->kk(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/s;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->mn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/s;->p(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->no()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/s;->d(Lorg/json/JSONArray;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->ia()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/s;->s(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->ig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/s;->ia(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->iw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/s;->ox(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->kk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/s;->iw(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->mn(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->ox(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->iw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->mp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/s;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/mp;Lcom/bytedance/sdk/openadsdk/core/r/ox;)V

    return-void

    :cond_3
    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Landroid/content/Context;)V

    return-void
.end method
