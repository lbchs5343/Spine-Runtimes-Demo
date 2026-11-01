.class public Lcom/bytedance/msdk/core/kk/mn;
.super Lcom/bytedance/msdk/core/kk/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/kk/mn$dq;
    }
.end annotation


# instance fields
.field private final ia:Ljava/lang/String;

.field private iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/kk/s;",
            ">;"
        }
    .end annotation
.end field

.field private final kk:Ljava/lang/String;

.field private mn:Ljava/lang/String;

.field private o:Lcom/bytedance/msdk/core/kk/mn$dq;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/msdk/core/kk/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object p1, p0

    const-string p3, "count"

    iput-object p3, p1, Lcom/bytedance/msdk/core/kk/mn;->ia:Ljava/lang/String;

    const-string p3, "effective_time"

    iput-object p3, p1, Lcom/bytedance/msdk/core/kk/mn;->kk:Ljava/lang/String;

    iput-object p6, p1, Lcom/bytedance/msdk/core/kk/mn;->mn:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/bytedance/msdk/core/kk/mn$dq;

    const-string p3, "span"

    const-string p4, "rule_id"

    const-string p5, "freq"

    invoke-direct {p2, p5, p3, p4}, Lcom/bytedance/msdk/core/kk/mn$dq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Lcom/bytedance/msdk/core/kk/mn;->o:Lcom/bytedance/msdk/core/kk/mn$dq;

    return-void

    :cond_0
    new-instance p2, Lcom/bytedance/msdk/core/kk/mn$dq;

    const-string p3, "waterfall_show_span"

    const-string p4, "waterfall_show_rule_id"

    const-string p5, "waterfall_show_freq"

    invoke-direct {p2, p5, p3, p4}, Lcom/bytedance/msdk/core/kk/mn$dq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Lcom/bytedance/msdk/core/kk/mn;->o:Lcom/bytedance/msdk/core/kk/mn$dq;

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/kk/mn;->no()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/core/kk/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Lcom/bytedance/msdk/core/kk/s;->d(I)V

    :cond_1
    return-void
.end method

.method public dq(Ljava/lang/String;J)V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/kk/mn;->no()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/core/kk/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2, p3}, Lcom/bytedance/msdk/core/kk/s;->d(J)V

    :cond_1
    return-void
.end method

.method public kk()Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/bytedance/msdk/core/kk/mn;->mn:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "count"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "effective_time"

    iget-object v5, p0, Lcom/bytedance/msdk/core/kk/mn;->o:Lcom/bytedance/msdk/core/kk/mn$dq;

    iget-object v5, v5, Lcom/bytedance/msdk/core/kk/mn$dq;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/bytedance/msdk/core/kk/iw;->dq(J)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->mn:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized no()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/kk/s;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->iw:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->iw:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->iw:Ljava/util/List;

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->mn:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/kk/p;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;->o(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/mn;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/bytedance/msdk/core/kk/mn;->mn:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->mn:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->mn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->iw:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/bytedance/msdk/core/kk/mn;->mn:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/bytedance/msdk/core/kk/s;

    invoke-direct {v3}, Lcom/bytedance/msdk/core/kk/s;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/core/kk/mn;->o:Lcom/bytedance/msdk/core/kk/mn$dq;

    iget-object v4, v4, Lcom/bytedance/msdk/core/kk/mn$dq;->ox:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/bytedance/msdk/core/kk/mn;->o:Lcom/bytedance/msdk/core/kk/mn$dq;

    iget-object v5, v5, Lcom/bytedance/msdk/core/kk/mn$dq;->dq:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/bytedance/msdk/core/kk/s;->dq(I)V

    iget-object v5, p0, Lcom/bytedance/msdk/core/kk/mn;->o:Lcom/bytedance/msdk/core/kk/mn$dq;

    iget-object v5, v5, Lcom/bytedance/msdk/core/kk/mn$dq;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/bytedance/msdk/core/kk/s;->dq(J)V

    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/core/kk/s;->dq(Ljava/lang/String;)V

    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/core/kk/s;->d(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    const-string v4, "effective_time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "effective_time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/msdk/core/kk/s;->d(J)V

    :cond_4
    iget-object v2, p0, Lcom/bytedance/msdk/core/kk/mn;->iw:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->iw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->iw:Ljava/util/List;

    new-instance v1, Lcom/bytedance/msdk/core/kk/mn$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/kk/mn$1;-><init>(Lcom/bytedance/msdk/core/kk/mn;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->iw:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public o()Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/kk/mn;->no()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/kk/s;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/core/kk/mn;->o:Lcom/bytedance/msdk/core/kk/mn$dq;

    iget-object v4, v4, Lcom/bytedance/msdk/core/kk/mn$dq;->dq:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->dq()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/msdk/core/kk/mn;->o:Lcom/bytedance/msdk/core/kk/mn$dq;

    iget-object v4, v4, Lcom/bytedance/msdk/core/kk/mn$dq;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->d()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/msdk/core/kk/mn;->o:Lcom/bytedance/msdk/core/kk/mn$dq;

    iget-object v4, v4, Lcom/bytedance/msdk/core/kk/mn$dq;->ox:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "count"

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->s()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "effective_time"

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->p()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->mn:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/mn;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseIntervalBean{waterfallId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/kk/p;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', showRulesVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/kk/p;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', timingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/kk/p;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}IntervalFreqctlBean{freqctlRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/kk/mn;->iw:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", freqctlRulesJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/kk/mn;->mn:Ljava/lang/String;

    const-string v2, "\'}"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
