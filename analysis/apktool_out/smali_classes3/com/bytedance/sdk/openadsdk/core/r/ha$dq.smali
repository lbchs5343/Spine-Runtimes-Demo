.class public Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/r/ha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field d:I

.field dq:I

.field ox:I

.field p:I

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/r/ha;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/ha;Lorg/json/JSONObject;I)V
    .locals 7

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/ha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->dq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->d:I

    const/16 v1, 0x96

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->ox:I

    const/16 v2, 0x28

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->p:I

    const/4 v3, 0x2

    const/16 v4, 0x14

    if-nez p2, :cond_0

    if-ne p3, v3, :cond_b

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->ox:I

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->p:I

    return-void

    :cond_0
    const-string v5, "left_margin"

    invoke-virtual {p2, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->dq:I

    if-ltz v5, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ha;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ha;)I

    move-result v6

    if-le v5, v6, :cond_2

    :cond_1
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->dq:I

    :cond_2
    const-string v5, "right_margin"

    invoke-virtual {p2, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->d:I

    if-ltz v5, :cond_3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ha;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ha;)I

    move-result v6

    if-le v5, v6, :cond_4

    :cond_3
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->d:I

    :cond_4
    const-string v0, "bottom_margin"

    const-string v5, "top_margin"

    if-ne p3, v3, :cond_8

    invoke-virtual {p2, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->ox:I

    if-ltz p3, :cond_5

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ha;->d(Lcom/bytedance/sdk/openadsdk/core/r/ha;)I

    move-result v1

    if-le p3, v1, :cond_6

    :cond_5
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->ox:I

    :cond_6
    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->p:I

    if-ltz p2, :cond_7

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ha;->d(Lcom/bytedance/sdk/openadsdk/core/r/ha;)I

    move-result p1

    if-le p2, p1, :cond_b

    :cond_7
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->p:I

    return-void

    :cond_8
    invoke-virtual {p2, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->ox:I

    if-ltz p3, :cond_9

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ha;->d(Lcom/bytedance/sdk/openadsdk/core/r/ha;)I

    move-result v3

    if-le p3, v3, :cond_a

    :cond_9
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->ox:I

    :cond_a
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->p:I

    if-ltz p2, :cond_c

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ha;->d(Lcom/bytedance/sdk/openadsdk/core/r/ha;)I

    move-result p1

    if-le p2, p1, :cond_b

    goto :goto_0

    :cond_b
    return-void

    :cond_c
    :goto_0
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->p:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->d:I

    return v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->dq:I

    return v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->ox:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;->p:I

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "left_margin"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "right_margin"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "top_margin"

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "bottom_margin"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
