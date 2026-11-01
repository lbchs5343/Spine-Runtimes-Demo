.class public Lcom/bytedance/msdk/mn/p/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/mn/ox;


# static fields
.field private static volatile d:Lcom/bytedance/msdk/mn/p/p;

.field public static dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/iw;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile ox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/msdk/ia/bl;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/no/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/mn/p/p;->dq:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/mn/p/p;->ox:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/mn/p/p;->p:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/mn/s;->s()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "rit_config"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/mn/p/p;->d(Lorg/json/JSONArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private declared-synchronized d(Lorg/json/JSONArray;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/p;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/bytedance/msdk/mn/p/p;->dq:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/bytedance/msdk/mn/p/p;->dq:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/bytedance/msdk/core/no/d;->dq(Lorg/json/JSONObject;Ljava/util/Map;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/bytedance/msdk/mn/p/p;->p:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/bytedance/msdk/mn/p/p;->dq:Ljava/util/Map;

    invoke-static {v1}, Lcom/bytedance/msdk/ox/mn/ox;->dq(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/mn/p/p;->dq(Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/mn/p/d;->jy()Lcom/bytedance/msdk/mn/p/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/p/d;->q()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "prime_rit_count"

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_4
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized dq(I)Lcom/bytedance/msdk/ia/bl;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/p;->ox:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/ia/bl;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/mn/s;->dq(I)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/mn/p/p;->ox:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/mn/p/p;I)Lcom/bytedance/msdk/ia/bl;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/mn/p/p;->dq(I)Lcom/bytedance/msdk/ia/bl;

    move-result-object p0

    return-object p0
.end method

.method public static dq()Lcom/bytedance/msdk/mn/p/p;
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/mn/p/p;->d:Lcom/bytedance/msdk/mn/p/p;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/mn/p/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/mn/p/p;->d:Lcom/bytedance/msdk/mn/p/p;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/mn/p/p;

    invoke-direct {v1}, Lcom/bytedance/msdk/mn/p/p;-><init>()V

    sput-object v1, Lcom/bytedance/msdk/mn/p/p;->d:Lcom/bytedance/msdk/mn/p/p;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/msdk/mn/p/p;->d:Lcom/bytedance/msdk/mn/p/p;

    return-object v0
.end method

.method private dq(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/mn/p/p;->dq(I)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/mn/p/p;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/mn/p/p;->p:Ljava/util/Map;

    return-object p0
.end method

.method private declared-synchronized dq(Lcom/bytedance/msdk/core/no/d;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->kk()Lcom/bytedance/msdk/core/kk/kk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;->dq(Lcom/bytedance/msdk/core/kk/kk;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->kk()Lcom/bytedance/msdk/core/kk/kk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;->d(Lcom/bytedance/msdk/core/kk/kk;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->ia()Lcom/bytedance/msdk/core/kk/mn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;->dq(Lcom/bytedance/msdk/core/kk/mn;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->ia()Lcom/bytedance/msdk/core/kk/mn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;->d(Lcom/bytedance/msdk/core/kk/mn;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/kk/mp;->kk(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->p()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->dq()Lcom/bytedance/msdk/core/kk/ig;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->ox()Lcom/bytedance/msdk/core/kk/kk;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/kk/ig;->dq(Lcom/bytedance/msdk/core/kk/kk;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->dq()Lcom/bytedance/msdk/core/kk/ig;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->ox()Lcom/bytedance/msdk/core/kk/kk;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/kk/ig;->d(Lcom/bytedance/msdk/core/kk/kk;)V

    :cond_4
    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->d()Lcom/bytedance/msdk/core/kk/mn;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/kk/no;->dq(Lcom/bytedance/msdk/core/kk/mn;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->d()Lcom/bytedance/msdk/core/kk/mn;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/msdk/core/kk/no;->d(Lcom/bytedance/msdk/core/kk/mn;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->dq()Lcom/bytedance/msdk/core/kk/ig;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/msdk/core/kk/ig;->delete(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/bytedance/msdk/core/kk/no;->delete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    monitor-exit p0

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/mn/p/p;Lcom/bytedance/msdk/core/no/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/mn/p/p;->dq(Lcom/bytedance/msdk/core/no/d;)V

    return-void
.end method

.method private declared-synchronized dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/mn/p/p$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/mn/p/p$1;-><init>(Lcom/bytedance/msdk/mn/p/p;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/p;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/no/d;

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/bytedance/msdk/mn/p/p;->dq(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/msdk/core/no/d;->mn(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/bytedance/msdk/mn/p/p;->p:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/16 p1, 0x66

    if-ne p3, p1, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {v0, p3}, Lcom/bytedance/msdk/core/o/p;->dq(Lcom/bytedance/msdk/core/no/d;I)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    monitor-exit p0

    return-object p1

    :cond_2
    monitor-exit p0

    return-object v0

    :cond_3
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized dq(Lorg/json/JSONArray;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/mn/p/p;->d(Lorg/json/JSONArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized ig()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/p;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized mp()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/mn/p/d;->jy()Lcom/bytedance/msdk/mn/p/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/p/d;->q()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "prime_rit_count"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/msdk/mn/p/p;->d()V

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/p;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
