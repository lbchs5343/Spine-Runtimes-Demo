.class public Lcom/bytedance/msdk/s/kk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/no;


# static fields
.field private static final d:Landroid/os/Handler;

.field private static final ox:Ljava/lang/Runnable;


# instance fields
.field public dq:Lcom/bytedance/msdk/s/d/dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/msdk/s/d/dq<",
            "Lcom/bytedance/msdk/s/dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/bytedance/msdk/dq/s/iw;->d()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bytedance/msdk/s/kk;->d:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/msdk/s/kk$2;

    invoke-direct {v0}, Lcom/bytedance/msdk/s/kk$2;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/s/kk;->ox:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d()V
    .locals 4

    sget-object v0, Lcom/bytedance/msdk/s/kk;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v1, Lcom/bytedance/msdk/s/kk;->ox:Ljava/lang/Runnable;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/f/ox;->h()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private d(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V
    .locals 8

    const-string v0, "params"

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p6, :cond_0

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    move-object v1, p0

    move-object v7, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v1 .. v7}, Lcom/bytedance/msdk/s/kk;->dq(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/s/kk;Ljava/util/List;)Lcom/bytedance/msdk/s/s;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/s/kk;->dq(Ljava/util/List;)Lcom/bytedance/msdk/s/s;

    move-result-object p0

    return-object p0
.end method

.method private dq(Ljava/util/List;)Lcom/bytedance/msdk/s/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/s/dq;",
            ">;)",
            "Lcom/bytedance/msdk/s/s;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/s/kk;->dq:Lcom/bytedance/msdk/s/d/dq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->dq()Lcom/bytedance/msdk/s/d/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/s/kk;->dq:Lcom/bytedance/msdk/s/d/dq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/s/kk;->dq:Lcom/bytedance/msdk/s/d/dq;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0, p1}, Lcom/bytedance/msdk/s/d/dq;->dq(Ljava/util/List;)Lcom/bytedance/msdk/s/s;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic dq()V
    .locals 0

    invoke-static {}, Lcom/bytedance/msdk/s/kk;->d()V

    return-void
.end method

.method private dq(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "event_extra"

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "batchId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "batchIndex"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "preEventId"

    if-eqz p6, :cond_0

    const-string p3, "event_id"

    invoke-virtual {p6, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "-1"

    :goto_0
    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method


# virtual methods
.method public dq(Ljava/util/List;Lcom/bytedance/sdk/component/ia/dq/o;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;",
            "Lcom/bytedance/sdk/component/ia/dq/o;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v7, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/bytedance/sdk/component/ia/dq/d;

    invoke-interface {v9}, Lcom/bytedance/sdk/component/ia/dq/d;->mn()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v9}, Lcom/bytedance/sdk/component/ia/dq/d;->s()B

    move-result v1

    invoke-interface {v9}, Lcom/bytedance/sdk/component/ia/dq/d;->p()B

    move-result v3

    const/4 v10, 0x2

    if-ne v1, v10, :cond_0

    const/4 v1, 0x3

    if-ne v3, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/msdk/s/kk;->d(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V

    new-instance v3, Lcom/bytedance/msdk/s/mn;

    invoke-interface {v9}, Lcom/bytedance/sdk/component/ia/dq/d;->ox()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v2}, Lcom/bytedance/msdk/s/mn;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object v1, p0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "not_v3"

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "batchId"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "batchIndex"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/bytedance/msdk/ia/bl;->dq(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v1, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/dq/s/iw;->mn()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/bytedance/msdk/s/kk$1;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/bytedance/msdk/s/kk$1;-><init>(Lcom/bytedance/msdk/s/kk;Ljava/util/List;Lcom/bytedance/sdk/component/ia/dq/o;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    move-object v1, p0

    :cond_3
    :goto_2
    return-void
.end method
