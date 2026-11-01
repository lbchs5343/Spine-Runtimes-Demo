.class final Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$1;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$1;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 4

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq(I)I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$1;->dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$1;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->o()[B

    move-result-object p1

    const-string p2, "uchain_dsl"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq([BLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq(J)J

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->s()I

    move-result p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->iw()I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->mn()J

    move-result-wide v1

    invoke-static {p2, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq(IIJ)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq(Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->kk()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$1;->dq:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->s()I

    move-result p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->iw()I

    move-result p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->mn()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq(IIJ)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ia()V

    return-void

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ia()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ia()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq(I)I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ia()V

    return-void
.end method
