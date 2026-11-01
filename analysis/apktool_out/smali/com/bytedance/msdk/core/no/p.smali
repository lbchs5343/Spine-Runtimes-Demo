.class public Lcom/bytedance/msdk/core/no/p;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private iw:D

.field private mn:D

.field private ox:Ljava/lang/String;

.field private p:I

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/p;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/msdk/core/no/p;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/msdk/core/no/p;->ox:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/msdk/core/no/p;->p:I

    iput-object p5, p0, Lcom/bytedance/msdk/core/no/p;->s:Ljava/lang/String;

    iput-wide p6, p0, Lcom/bytedance/msdk/core/no/p;->iw:D

    iput-wide p8, p0, Lcom/bytedance/msdk/core/no/p;->mn:D

    return-void
.end method

.method public static dq(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/msdk/core/no/p;
    .locals 11

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/bytedance/msdk/core/no/p;

    const-string v0, "label_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "label_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "label_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "upper_bound"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v0, "lower_bound"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/msdk/core/no/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/p;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method public iw()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/p;->mn:D

    return-wide v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/p;->p:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/p;->s:Ljava/lang/String;

    return-object v0
.end method

.method public s()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/p;->iw:D

    return-wide v0
.end method
