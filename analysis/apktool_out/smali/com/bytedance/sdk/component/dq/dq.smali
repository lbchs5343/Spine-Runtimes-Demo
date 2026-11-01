.class public abstract Lcom/bytedance/sdk/component/dq/dq;
.super Ljava/lang/Object;


# instance fields
.field protected d:Lcom/bytedance/sdk/component/dq/mp;

.field protected dq:Landroid/content/Context;

.field private final ia:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/dq/mn;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile iw:Z

.field mn:Lcom/bytedance/sdk/component/dq/mn;

.field protected ox:Lcom/bytedance/sdk/component/dq/ia;

.field protected p:Landroid/os/Handler;

.field protected s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->p:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/dq/dq;->iw:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->ia:Ljava/util/Map;

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->s:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->ia:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/dq/mn;

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/dq/dq;->mn:Lcom/bytedance/sdk/component/dq/mn;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/dq/dq;Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/dq/f;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/dq/dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/dq/f;

    move-result-object p0

    return-object p0
.end method

.method private dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/dq/f;
    .locals 7

    const-string v0, "params"

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/dq/dq;->iw:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "__callback_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "func"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/dq;->dq()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    :try_start_0
    const-string v2, "__msg_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    instance-of v4, v5, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    instance-of v4, v5, Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    :cond_3
    :goto_0
    move-object v0, v4

    goto :goto_1

    :cond_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v4, "JSSDK"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "namespace"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "__iframe_url"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/component/dq/f;->dq()Lcom/bytedance/sdk/component/dq/f$dq;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/component/dq/f$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/f$dq;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/component/dq/f$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/f$dq;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/dq/f$dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/f$dq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/dq/f$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/f$dq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/dq/f$dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/f$dq;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/component/dq/f$dq;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/f$dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/dq/f$dq;->mn(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/f$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/dq/f$dq;->dq()Lcom/bytedance/sdk/component/dq/f;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Failed to create call."

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/dq/kk;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/dq/f;->dq(Ljava/lang/String;I)Lcom/bytedance/sdk/component/dq/f;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->mn:Lcom/bytedance/sdk/component/dq/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/dq/mn;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->ia:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/dq/mn;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/dq/mn;->dq()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/dq/dq;->iw:Z

    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/f;)V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/dq/dq;->iw:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/bytedance/sdk/component/dq/f;->iw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "By passing js callback due to empty callback: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal callback data: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/RuntimeException;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoking js callback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/bytedance/sdk/component/dq/f;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/dq/jy;->dq()Lcom/bytedance/sdk/component/dq/jy;

    move-result-object p1

    const-string v1, "__msg_type"

    const-string v2, "callback"

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/component/dq/jy;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/component/dq/jy;

    move-result-object p1

    const-string v1, "__callback_id"

    iget-object v2, p2, Lcom/bytedance/sdk/component/dq/f;->iw:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/component/dq/jy;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/component/dq/jy;

    move-result-object p1

    const-string v1, "__params"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/component/dq/jy;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/component/dq/jy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/dq/jy;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/f;)V

    return-void
.end method

.method public abstract dq()Ljava/lang/String;
.end method

.method public final dq(Lcom/bytedance/sdk/component/dq/f;)V
    .locals 4
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/dq/dq;->iw:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/dq;->dq()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p1, Lcom/bytedance/sdk/component/dq/f;->mn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/dq/dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/mn;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "Received call with unknown namespace, "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/kk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->d:Lcom/bytedance/sdk/component/dq/mp;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/dq;->dq()Ljava/lang/String;

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/component/dq/cd;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Namespace "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/bytedance/sdk/component/dq/f;->mn:Ljava/lang/String;

    const-string v3, " unknown."

    invoke-static {v1, v2, v3}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x4

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/component/dq/cd;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/wp;->dq(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/dq/dq;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/f;)V

    return-void

    :cond_3
    new-instance v2, Lcom/bytedance/sdk/component/dq/iw;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/dq/iw;-><init>()V

    iput-object v0, v2, Lcom/bytedance/sdk/component/dq/iw;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->dq:Landroid/content/Context;

    iput-object v0, v2, Lcom/bytedance/sdk/component/dq/iw;->dq:Landroid/content/Context;

    iput-object v1, v2, Lcom/bytedance/sdk/component/dq/iw;->ox:Lcom/bytedance/sdk/component/dq/mn;

    :try_start_0
    invoke-virtual {v1, p1, v2}, Lcom/bytedance/sdk/component/dq/mn;->dq(Lcom/bytedance/sdk/component/dq/f;Lcom/bytedance/sdk/component/dq/iw;)Lcom/bytedance/sdk/component/dq/mn$dq;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "Received call but not registered, "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/kk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->d:Lcom/bytedance/sdk/component/dq/mp;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/dq;->dq()Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/component/dq/cd;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Function "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/bytedance/sdk/component/dq/f;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/component/dq/cd;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/wp;->dq(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/dq/dq;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/f;)V

    return-void

    :cond_5
    iget-boolean v1, v0, Lcom/bytedance/sdk/component/dq/mn$dq;->dq:Z

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/bytedance/sdk/component/dq/mn$dq;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/dq/dq;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/f;)V

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->d:Lcom/bytedance/sdk/component/dq/mp;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/dq;->dq()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    return-void

    :goto_2
    const-string v1, "call finished with error, "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/wp;->dq(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/dq/dq;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/f;)V

    return-void
.end method

.method public abstract dq(Lcom/bytedance/sdk/component/dq/o;)V
.end method

.method public final dq(Lcom/bytedance/sdk/component/dq/o;Lcom/bytedance/sdk/component/dq/i;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/dq/dq;->getContext(Lcom/bytedance/sdk/component/dq/o;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->dq:Landroid/content/Context;

    iget-object v0, p1, Lcom/bytedance/sdk/component/dq/o;->p:Lcom/bytedance/sdk/component/dq/ia;

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->ox:Lcom/bytedance/sdk/component/dq/ia;

    iget-object v0, p1, Lcom/bytedance/sdk/component/dq/o;->kk:Lcom/bytedance/sdk/component/dq/mp;

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->d:Lcom/bytedance/sdk/component/dq/mp;

    new-instance v0, Lcom/bytedance/sdk/component/dq/mn;

    invoke-direct {v0, p1, p0, p2}, Lcom/bytedance/sdk/component/dq/mn;-><init>(Lcom/bytedance/sdk/component/dq/o;Lcom/bytedance/sdk/component/dq/dq;Lcom/bytedance/sdk/component/dq/i;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->mn:Lcom/bytedance/sdk/component/dq/mn;

    iget-object p2, p1, Lcom/bytedance/sdk/component/dq/o;->no:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/dq/dq;->s:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/dq/dq;->dq(Lcom/bytedance/sdk/component/dq/o;)V

    return-void
.end method

.method public abstract dq(Ljava/lang/String;)V
    .annotation build Lcom/bytedance/component/sdk/annotation/AnyThread;
    .end annotation
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/f;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/dq/dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public final dq(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/dq/dq;->iw:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->ox:Lcom/bytedance/sdk/component/dq/ia;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/dq/ia;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Sending js event: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;)V

    const-string v0, "\",\"__params\":"

    const-string v1, "}"

    const-string v2, "{\"__msg_type\":\"event\",\"__event_id\":\""

    invoke-static {v2, p1, v0, p2, v1}, Lg/tn;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/dq/dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public abstract getContext(Lcom/bytedance/sdk/component/dq/o;)Landroid/content/Context;
.end method

.method public invokeMethod(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/dq/dq;->iw:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Received call: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->p:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/component/dq/dq$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/dq/dq$1;-><init>(Lcom/bytedance/sdk/component/dq/dq;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
