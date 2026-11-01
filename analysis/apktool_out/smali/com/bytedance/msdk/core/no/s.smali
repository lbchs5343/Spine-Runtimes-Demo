.class public Lcom/bytedance/msdk/core/no/s;
.super Ljava/lang/Object;


# instance fields
.field private d:D

.field private dq:D

.field private iw:Ljava/lang/String;

.field private mn:Lorg/json/JSONObject;

.field private ox:I

.field private p:Ljava/lang/String;

.field private s:I


# direct methods
.method private constructor <init>(DDILjava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/s;->dq:D

    iput-wide p3, p0, Lcom/bytedance/msdk/core/no/s;->d:D

    iput p5, p0, Lcom/bytedance/msdk/core/no/s;->ox:I

    iput-object p6, p0, Lcom/bytedance/msdk/core/no/s;->p:Ljava/lang/String;

    iput p7, p0, Lcom/bytedance/msdk/core/no/s;->s:I

    iput-object p8, p0, Lcom/bytedance/msdk/core/no/s;->iw:Ljava/lang/String;

    iput-object p9, p0, Lcom/bytedance/msdk/core/no/s;->mn:Lorg/json/JSONObject;

    return-void
.end method

.method public static dq(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/no/s;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const-string v0, "prime_rits"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    :try_start_0
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Lcom/bytedance/msdk/core/no/s;

    const-string v0, "upper"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    const-string v0, "lower"

    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v0, "type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "js_mode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "rule_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "refresh_time"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    move-wide v14, v7

    move-wide v7, v5

    move-wide v5, v14

    invoke-direct/range {v4 .. v13}, Lcom/bytedance/msdk/core/no/s;-><init>(DDILjava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v5, p1

    :try_start_1
    invoke-interface {v5, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v5, p1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_3
    return-void
.end method


# virtual methods
.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/s;->d:D

    return-wide v0
.end method

.method public dq()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/s;->dq:D

    return-wide v0
.end method

.method public dq(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/s;->mn:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/s;->ox:I

    return v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/s;->s:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/s;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public s()Z
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/s;->dq:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/s;->d:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
