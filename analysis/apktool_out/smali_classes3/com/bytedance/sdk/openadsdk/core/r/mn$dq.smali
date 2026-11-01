.class public Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/r/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:I

.field private dq:I

.field private ia:I

.field private iw:Z

.field private mn:I

.field private ox:I

.field private p:I

.field private s:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "get_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->dq:I

    const-string v0, "max_count"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->d:I

    const-string v0, "strategy_type"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->ox:I

    const-string v0, "store_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->p:I

    const-string v0, "online_timeout"

    const/16 v1, 0x2710

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->s:I

    const-string v0, "enable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->iw:Z

    const-string v0, "load_type"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->mn:I

    const-string v0, "trans_cache"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->ia:I

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->p:I

    return p1
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->dq:I

    return v0
.end method

.method public dq()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "get_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->dq:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "max_count"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "strategy_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->ox:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "store_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "online_timeout"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->s:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enable"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->iw:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "load_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->mn:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "trans_cache"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->ia:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->mn:I

    return v0
.end method

.method public iw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->s:I

    return v0
.end method

.method public kk()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->ia:I

    return v0
.end method

.method public mn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->iw:Z

    return v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->d:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->d:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->d:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->ox:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->p:I

    return v0
.end method
