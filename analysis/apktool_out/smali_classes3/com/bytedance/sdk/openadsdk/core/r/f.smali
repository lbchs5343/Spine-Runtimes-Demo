.class public Lcom/bytedance/sdk/openadsdk/core/r/f;
.super Ljava/lang/Object;


# instance fields
.field public d:D

.field public dq:D

.field public ox:D

.field public p:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/f;->dq:D

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/r/f;->d:D

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/core/r/f;->ox:D

    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/r/f;->p:D

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/f;Lcom/bytedance/sdk/openadsdk/core/r/f;)Lcom/bytedance/sdk/openadsdk/core/r/f;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/f;->dq:D

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/core/r/f;->d:D

    iget-wide v6, v0, Lcom/bytedance/sdk/openadsdk/core/r/f;->ox:D

    add-double/2addr v6, v2

    iget-wide v8, v0, Lcom/bytedance/sdk/openadsdk/core/r/f;->p:D

    add-double/2addr v8, v4

    iget-wide v10, v1, Lcom/bytedance/sdk/openadsdk/core/r/f;->dq:D

    iget-wide v12, v1, Lcom/bytedance/sdk/openadsdk/core/r/f;->d:D

    iget-wide v14, v1, Lcom/bytedance/sdk/openadsdk/core/r/f;->ox:D

    add-double/2addr v14, v10

    iget-wide v0, v1, Lcom/bytedance/sdk/openadsdk/core/r/f;->p:D

    add-double/2addr v0, v12

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v17

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v19

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    new-instance v16, Lcom/bytedance/sdk/openadsdk/core/r/f;

    sub-double v2, v2, v17

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    sub-double v0, v0, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    invoke-direct/range {v16 .. v24}, Lcom/bytedance/sdk/openadsdk/core/r/f;-><init>(DDDD)V

    return-object v16
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/f;Lcom/bytedance/sdk/openadsdk/core/r/f;)D
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-wide/16 v16, 0x0

    goto :goto_0

    :cond_1
    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/core/r/f;->dq:D

    iget-wide v6, v0, Lcom/bytedance/sdk/openadsdk/core/r/f;->d:D

    iget-wide v8, v0, Lcom/bytedance/sdk/openadsdk/core/r/f;->ox:D

    add-double/2addr v8, v4

    iget-wide v10, v0, Lcom/bytedance/sdk/openadsdk/core/r/f;->p:D

    add-double/2addr v10, v6

    iget-wide v12, v1, Lcom/bytedance/sdk/openadsdk/core/r/f;->dq:D

    iget-wide v14, v1, Lcom/bytedance/sdk/openadsdk/core/r/f;->d:D

    const-wide/16 v16, 0x0

    iget-wide v2, v1, Lcom/bytedance/sdk/openadsdk/core/r/f;->ox:D

    add-double/2addr v2, v12

    iget-wide v0, v1, Lcom/bytedance/sdk/openadsdk/core/r/f;->p:D

    add-double/2addr v0, v14

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v24

    sub-double v22, v22, v18

    sub-double v24, v24, v20

    mul-double v24, v24, v22

    cmpl-double v18, v6, v0

    if-gez v18, :cond_3

    cmpg-double v0, v8, v12

    if-lez v0, :cond_3

    cmpg-double v0, v10, v14

    if-lez v0, :cond_3

    cmpl-double v0, v4, v2

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    return-wide v24

    :cond_3
    :goto_0
    return-wide v16
.end method

.method public static dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/f;
    .locals 12

    if-eqz p0, :cond_0

    const-string v0, "point"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/r/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    int-to-double v8, v0

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result p0

    int-to-double v10, p0

    invoke-direct/range {v3 .. v11}, Lcom/bytedance/sdk/openadsdk/core/r/f;-><init>(DDDD)V

    return-object v3

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/f;)Lorg/json/JSONObject;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/f;->dq:D

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/f;->d:D

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v3, v4}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    const-string v3, "point"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/f;->ox:D

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/f;->p:D

    invoke-virtual {v2, v6, v3, v4}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    const-string p0, "size"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "json:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "xeasy"

    invoke-static {v1, p0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dq(DD)Z
    .locals 7

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/f;->ox:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/f;->p:D

    cmpl-double v6, v4, v2

    if-lez v6, :cond_0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/f;->dq:D

    cmpl-double v6, p1, v2

    if-lez v6, :cond_0

    add-double/2addr v2, v0

    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/f;->d:D

    cmpl-double v0, p3, p1

    if-lez v0, :cond_0

    add-double/2addr p1, v4

    cmpg-double v0, p3, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
