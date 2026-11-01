.class public Lcom/bytedance/sdk/openadsdk/core/r/xi;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field private dq:Lorg/json/JSONObject;

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private s:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/xi;->dq:Lorg/json/JSONObject;

    const-string v0, "dialog_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xi;->d:I

    const-string v0, "template_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xi;->ox:Ljava/lang/String;

    const-string v0, "template_md5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/xi;->p:Ljava/lang/String;

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->ox(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xi;->dq:Lorg/json/JSONObject;

    return-object v0
.end method

.method public dq()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xi;->dq:Lorg/json/JSONObject;

    return-object v0
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/xi;->s:Z

    return-void
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xi;->s:Z

    return v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xi;->d:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xi;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xi;->p:Ljava/lang/String;

    return-object v0
.end method
