.class public Lcom/bytedance/msdk/core/s/d/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field private dq:I

.field private iw:I

.field private mn:I

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/s/d/dq;->dq:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/s/d/dq;->p:Ljava/lang/String;

    return-void
.end method

.method public dq()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "reason"

    iget v2, p0, Lcom/bytedance/msdk/core/s/d/dq;->dq:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fill_error_code"

    iget v2, p0, Lcom/bytedance/msdk/core/s/d/dq;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fill_error_msg"

    iget-object v2, p0, Lcom/bytedance/msdk/core/s/d/dq;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediation_rit"

    iget-object v2, p0, Lcom/bytedance/msdk/core/s/d/dq;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "load_sort"

    iget v2, p0, Lcom/bytedance/msdk/core/s/d/dq;->s:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "show_sort"

    iget v2, p0, Lcom/bytedance/msdk/core/s/d/dq;->iw:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "has_shown"

    iget v2, p0, Lcom/bytedance/msdk/core/s/d/dq;->mn:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "{\"name\": \"json err\"}"

    return-object v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/s/d/dq;->mn:I

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/s/d/dq;->ox:Ljava/lang/String;

    return-void
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/s/d/dq;->d:I

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/s/d/dq;->s:I

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/s/d/dq;->iw:I

    return-void
.end method
