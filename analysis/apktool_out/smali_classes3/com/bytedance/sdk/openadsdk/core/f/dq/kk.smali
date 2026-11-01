.class public Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;
.super Lcom/bytedance/sdk/component/dq/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/dq/s<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/c;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private ox:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/s;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;->ox:Ljava/lang/String;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq/fw;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/c;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;

    const-string v1, "getEstimatedInteractionAreaInfo"

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;

    const-string v1, "interactionAreaInfo"

    invoke-direct {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    return-void
.end method


# virtual methods
.method public bridge synthetic dq(Ljava/lang/Object;Lcom/bytedance/sdk/component/dq/iw;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/c;->ox()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;->ox:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "interactionAreaInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, "getEstimatedInteractionAreaInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    move-object v6, v4

    goto/16 :goto_3

    :cond_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->getEstimatedInteractionAreaInfo()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    :cond_2
    const-string v2, "areas"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/f;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/f;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->setEasyPlayInteractionAreaInfo(Lcom/bytedance/sdk/openadsdk/core/r/f;)V

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->getEstimatedInteractionAreaInfo()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/r/f;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/f;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v4

    goto :goto_1

    :cond_4
    move-object v2, v4

    move-object v5, v2

    :goto_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-string v8, "canMakeVisiable"

    if-nez v5, :cond_5

    if-eqz v1, :cond_0

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/r/f;->d(Lcom/bytedance/sdk/openadsdk/core/r/f;Lcom/bytedance/sdk/openadsdk/core/r/f;)Lcom/bytedance/sdk/openadsdk/core/r/f;

    move-result-object v2

    invoke-interface {v1, v2, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/f;D)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v1, v8, v4}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_5
    const-string v9, "expressWebviewRecycle"

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    if-nez v2, :cond_6

    invoke-interface {v1, v4, v10, v11}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/f;D)V

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->Y_()V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v1, v9, v4}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_6
    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/core/r/f;->dq(Lcom/bytedance/sdk/openadsdk/core/r/f;Lcom/bytedance/sdk/openadsdk/core/r/f;)D

    move-result-wide v12

    iget-wide v14, v2, Lcom/bytedance/sdk/openadsdk/core/r/f;->ox:D

    iget-wide v10, v2, Lcom/bytedance/sdk/openadsdk/core/r/f;->p:D

    mul-double v14, v14, v10

    iget-wide v10, v5, Lcom/bytedance/sdk/openadsdk/core/r/f;->ox:D

    iget-wide v3, v5, Lcom/bytedance/sdk/openadsdk/core/r/f;->p:D

    mul-double v10, v10, v3

    const-wide/16 v3, 0x0

    cmpl-double v17, v10, v3

    if-nez v17, :cond_7

    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/core/r/f;->d(Lcom/bytedance/sdk/openadsdk/core/r/f;Lcom/bytedance/sdk/openadsdk/core/r/f;)Lcom/bytedance/sdk/openadsdk/core/r/f;

    move-result-object v2

    invoke-interface {v1, v2, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/f;D)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 v6, 0x0

    invoke-virtual {v1, v8, v6}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    cmpl-double v7, v14, v3

    if-nez v7, :cond_8

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-interface {v1, v6, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/f;D)V

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->Y_()V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v1, v9, v6}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_8
    div-double v3, v12, v14

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v17, v3, v6

    if-lez v17, :cond_9

    const/4 v6, 0x1

    const/16 v16, 0x1

    goto :goto_2

    :cond_9
    const/16 v16, 0x0

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "A:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " B:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " o:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " R:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xeasy"

    invoke-static {v4, v3}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v16, :cond_a

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    invoke-interface {v1, v6, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/f;D)V

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->Y_()V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v1, v9, v6}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/core/r/f;->d(Lcom/bytedance/sdk/openadsdk/core/r/f;Lcom/bytedance/sdk/openadsdk/core/r/f;)Lcom/bytedance/sdk/openadsdk/core/r/f;

    move-result-object v2

    sub-double/2addr v12, v10

    div-double/2addr v12, v10

    invoke-interface {v1, v2, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/f;D)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/kk;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v1, v8, v6}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_3
    return-object v6
.end method
