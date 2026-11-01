.class public final Lg/akg;
.super Lg/fzx;


# direct methods
.method public static a(Lg/akg;Ljava/util/HashMap;I)V
    .locals 4

    const-string v0, "duration"

    new-instance v1, Lg/fzc;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput p2, v1, Lg/fzc;->c:I

    iput-object p0, v1, Lg/fzc;->b:Lg/dlv;

    if-eqz p1, :cond_0

    const-string p2, "lel"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {p0, v1, p2}, Lg/akg;->g(Lg/fzc;Lorg/json/JSONArray;)V

    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "lottieEvent"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uttieUrl"

    iget-object v0, p0, Lg/fzx;->af:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iput-object p2, v1, Lg/fzc;->d:Lorg/json/JSONObject;

    iget-object p1, p0, Lg/dlv;->tl:Lg/cyx;

    invoke-interface {p1, v1, p0, p0}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lg/gkb;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    new-instance v1, Lg/fnq;

    const/16 v2, 0x15

    invoke-direct {v1, v2, p0}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lg/gkb;->setImageAssetDelegate(Lg/fsj;)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/gkb;

    invoke-virtual {v0}, Lg/gkb;->dq()V

    invoke-virtual {p0}, Lg/akg;->w()V

    :cond_0
    return-void
.end method

.method public final g(Lg/fzc;Lorg/json/JSONArray;)V
    .locals 6

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "vid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "hd"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p1, Lg/fzc;->b:Lg/dlv;

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {v4}, Lg/dlv;->bl()Lg/eyh;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lg/dlv;->bl()Lg/eyh;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v3}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_4

    if-nez v2, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v3, v4}, Lg/dlv;->d(I)V

    invoke-virtual {v3}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lg/gkb;

    if-eqz v4, :cond_4

    check-cast v3, Lg/gkb;

    if-nez v2, :cond_3

    invoke-virtual {v3}, Lg/gkb;->dq()V

    invoke-virtual {p0}, Lg/akg;->w()V

    goto :goto_4

    :cond_3
    invoke-virtual {v3}, Lg/gkb;->iw()V

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final synthetic ox()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lg/akg;->y()Lg/gkb;

    move-result-object v0

    return-object v0
.end method

.method public final w()V
    .locals 4

    new-instance v0, Lg/fzc;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x15

    iput v1, v0, Lg/fzc;->c:I

    iput-object p0, v0, Lg/fzc;->b:Lg/dlv;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "lottieEvent"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "uttieUrl"

    iget-object v3, p0, Lg/fzx;->af:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v1, v0, Lg/fzc;->d:Lorg/json/JSONObject;

    iget-object v1, p0, Lg/dlv;->tl:Lg/cyx;

    invoke-interface {v1, v0, p0, p0}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final y()Lg/gkb;
    .locals 3

    invoke-super {p0}, Lg/fzx;->y()Lg/gkb;

    move-result-object v0

    new-instance v1, Lg/bnb;

    invoke-direct {v1, p0, v0}, Lg/bnb;-><init>(Lg/akg;Lg/gkb;)V

    invoke-virtual {v0, v1}, Lg/gkb;->setTextDelegate(Lg/dpc;)V

    new-instance v1, Lg/eie;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p0}, Lg/eie;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lg/gkb;->setLottieClicklistener(Lg/bdg;)V

    new-instance v1, Lg/emr;

    const/16 v2, 0x15

    invoke-direct {v1, v2, p0}, Lg/emr;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lg/gkb;->setLottieAnimListener(Lg/cra;)V

    return-object v0
.end method
