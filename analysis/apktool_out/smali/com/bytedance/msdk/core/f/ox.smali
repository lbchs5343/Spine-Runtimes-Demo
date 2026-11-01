.class public Lcom/bytedance/msdk/core/f/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/f/dq;


# instance fields
.field private bl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/no/p;",
            ">;"
        }
    .end annotation
.end field

.field private by:I

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cd:J

.field private ce:I

.field private cv:Lcom/bytedance/msdk/core/iw/d;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private dq:I

.field private ds:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private er:I

.field private f:Ljava/lang/String;

.field private fw:J

.field private gh:I

.field private gx:I

.field private h:Z

.field private ha:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ia:Ljava/lang/String;

.field private ig:Ljava/lang/String;

.field private final ir:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/no/s;",
            ">;"
        }
    .end annotation
.end field

.field private iw:Ljava/lang/String;

.field private j:I

.field private ji:I

.field private jy:I

.field private k:I

.field private kk:Ljava/lang/String;

.field private kx:D

.field private l:I

.field private final le:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mn:Ljava/lang/String;

.field private mp:I

.field private n:I

.field private nh:I

.field private no:Ljava/lang/String;

.field private o:I

.field private ob:I

.field private final op:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private ox:Ljava/lang/String;

.field private p:J

.field private q:Ljava/lang/String;

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/p/f;",
            ">;"
        }
    .end annotation
.end field

.field private s:J

.field private t:I

.field private final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private uh:Lcom/bytedance/msdk/core/ox/d;

.field private v:I

.field private vf:Lcom/bytedance/msdk/core/d/d;

.field private vw:Z

.field private wn:Ljava/lang/String;

.field private wp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xz:I

.field private yy:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xf731400

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->dq:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->jy:I

    const-string v1, "log-api.pangolin-sdk-toutiao.com/service/2/app_log/"

    iput-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->f:Ljava/lang/String;

    const v1, 0x7fffffff

    iput v1, p0, Lcom/bytedance/msdk/core/f/ox;->gh:I

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->r:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->le:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->k:I

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->wp:Ljava/util/Map;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->e:Ljava/util/Map;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/msdk/core/f/ox;->kx:D

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/f/ox;->h:Z

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->bl:Ljava/util/Map;

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->n:I

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->op:Ljava/util/Map;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->ir:Ljava/util/Map;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->u:Ljava/util/Map;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->c:Ljava/util/Map;

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->ce:I

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->ob:I

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->l:I

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->t:I

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->gx:I

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->xz:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/bytedance/msdk/core/f/ox;->yy:I

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->v:I

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/f/ox;->ds:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/f/ox;->vw:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/f/ox;->ha:Z

    return-void
.end method

.method public static synthetic bl(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/f/ox;->wn:Ljava/lang/String;

    return-object p0
.end method

.method private bu()V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mp/dq;->s()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->bl()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/api/p/f;

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/f;->dq()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static synthetic cd(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->n:I

    return p0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/f/ox;->ox:Ljava/lang/String;

    return-object p0
.end method

.method private d(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_3

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "break_request_error_code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/bytedance/msdk/core/kk/d;

    invoke-direct {v4}, Lcom/bytedance/msdk/core/kk/d;-><init>()V

    const-string v6, "break_request_duration"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/bytedance/msdk/core/kk/d;->dq(J)V

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/kk/d;->dq(Ljava/util/List;)V

    const-string v5, "adn_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/core/kk/ox;->dq()Lcom/bytedance/msdk/core/kk/ox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/core/kk/ox;->dq(Lj$/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/core/kk/ox;->dq()Lcom/bytedance/msdk/core/kk/ox;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/core/kk/ox;->dq(Lj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method private d(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/core/d/d;

    invoke-direct {v0, p1}, Lcom/bytedance/msdk/core/d/d;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->vf:Lcom/bytedance/msdk/core/d/d;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->v:I

    return p0
.end method

.method private dq(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/f/ox;->ir:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/bytedance/msdk/core/no/s;->dq(Lorg/json/JSONObject;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "TTMediationSDK"

    const-string v3, "maybe some rit parse dynamic rules fail ....."

    invoke-static {v2, v3}, Lcom/bytedance/msdk/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic e(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->l:I

    return p0
.end method

.method public static synthetic f(Lcom/bytedance/msdk/core/f/ox;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/f/ox;->cd:J

    return-wide v0
.end method

.method private fd()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    const-string v1, "active_control"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic fw(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->er:I

    return p0
.end method

.method public static synthetic gh(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->dq:I

    return p0
.end method

.method public static synthetic h(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->gx:I

    return p0
.end method

.method public static synthetic i(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->j:I

    return p0
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/f/ox;->kk:Ljava/lang/String;

    return-object p0
.end method

.method private ia(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    const-string v1, "app_ab_params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "mediation_settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "ad_request_optmize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->ce:I

    const-string v0, "use_cypher_v4"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->yy:I

    const-string v0, "reward_cypher"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/msdk/core/f/ox;->ds:Z

    const-string v0, "config_cypher"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/bytedance/msdk/core/f/ox;->vw:Z

    const-string v0, "exchange_cypher"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/msdk/core/f/ox;->ha:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method private ia(Lorg/json/JSONObject;)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/msdk/core/f/ox;->e:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    return-void
.end method

.method public static synthetic ig(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/f/ox;->ig:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ir(Lcom/bytedance/msdk/core/f/ox;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/f/ox;->le:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/f/ox;->mn:Ljava/lang/String;

    return-object p0
.end method

.method private iw(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "fetch_ad_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->mp:I

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic ji(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->xz:I

    return p0
.end method

.method public static synthetic jy(Lcom/bytedance/msdk/core/f/ox;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/f/ox;->fw:J

    return-wide v0
.end method

.method public static synthetic k(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->by:I

    return p0
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->ji:I

    return p0
.end method

.method private kk(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 11

    const-string v0, "type_native_control"

    const-string v1, "type_full_control"

    const-string v2, "type_reward_control"

    const-string v3, "type_feed_control"

    const-string v4, "type_splash_control"

    const-string v5, "type_interactionfull_control"

    const-string v6, "type_interaction_control"

    const-string v7, "type_banner_control"

    const-string v8, "ad_event_control"

    iget-object v9, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_9

    :try_start_0
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method private kk(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    const-string v1, "app_ab_params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "load_settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "load_mode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/bytedance/msdk/mn/ox/dq;->dq()Lcom/bytedance/msdk/mn/ox/dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/mn/ox/dq;->dq(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic kx(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->t:I

    return p0
.end method

.method public static synthetic le(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->nh:I

    return p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/f/ox;->ia:Ljava/lang/String;

    return-object p0
.end method

.method private mn(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private mn(Lorg/json/JSONObject;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->wp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->k:I

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "if_sample"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/core/f/ox;->k:I

    const-string v0, "call_stack_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/bytedance/msdk/core/f/ox;->wp:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic mp(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/f/ox;->q:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic n(Lcom/bytedance/msdk/core/f/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/f/ox;->bu()V

    return-void
.end method

.method public static synthetic no(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/f/ox;->no:Ljava/lang/String;

    return-object p0
.end method

.method private no(Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/f/ox;->c:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic o(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->o:I

    return p0
.end method

.method private o(Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/f/ox;->u:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic op(Lcom/bytedance/msdk/core/f/ox;)Lcom/bytedance/msdk/core/iw/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/f/ox;->cv:Lcom/bytedance/msdk/core/iw/d;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/f/ox;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/f/ox;->p:J

    return-wide v0
.end method

.method private ox(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/core/ox/d;

    invoke-direct {v0, p1}, Lcom/bytedance/msdk/core/ox/d;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->uh:Lcom/bytedance/msdk/core/ox/d;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic p(Lcom/bytedance/msdk/core/f/ox;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/f/ox;->s:J

    return-wide v0
.end method

.method private p(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/bytedance/msdk/core/no/p;->dq(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/msdk/core/no/p;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/bytedance/msdk/core/f/ox;->op:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_3
    const-string p1, ""

    return-object p1
.end method

.method public static synthetic q(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/f/ox;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic r(Lcom/bytedance/msdk/core/f/ox;)D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/f/ox;->kx:D

    return-wide v0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/f/ox;->iw:Ljava/lang/String;

    return-object p0
.end method

.method private s(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/f/ox;->bl:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/bytedance/msdk/core/no/p;->dq(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/msdk/core/no/p;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic wp(Lcom/bytedance/msdk/core/f/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/f/ox;->ob:I

    return p0
.end method


# virtual methods
.method public bl()Z
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->mp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->iw()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public by()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/f/ox;->kx:D

    return-wide v0
.end method

.method public cd()Z
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/f/ox;->fd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    const-string v2, "type_splash_control"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public ce()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cv()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->gx:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->yy:I

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;

    move-result-object p1

    return-object p1
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/f/ox;->gh:I

    return-void
.end method

.method public d(Lcom/bytedance/msdk/api/p/f;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/f/ox;->vw:Z

    return-void
.end method

.method public d(Ljava/lang/String;I)Z
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->ox()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->mp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v0, p1, p2, v2}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public dc()Z
    .locals 3

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->gx:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->v:I

    return v0
.end method

.method public dq(ILjava/lang/String;)J
    .locals 1

    const/16 v0, 0x65

    invoke-virtual {p0, p2, p1, v0}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->nh()J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0xbb8

    return-wide p1
.end method

.method public dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/mn/dq/dq;->mp()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x65

    invoke-virtual {v3, v2, v4, v5}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object v0
.end method

.method public dq(Lcom/bytedance/msdk/api/p/f;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->bl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/f;->dq()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->r:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->r:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->r:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dq(Lcom/bytedance/msdk/core/iw/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/f/ox;->cv:Lcom/bytedance/msdk/core/iw/d;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 6

    if-eqz p1, :cond_1

    const-string v0, "state_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x7534

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/mn/s;->dq()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "max_age"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/msdk/core/f/ox;->p:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/msdk/core/f/ox;->p:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/msdk/core/f/ox;->s:J

    invoke-virtual {v0, v1, v4, v5}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;J)V

    const-string p1, "max_expire_time"

    iget-wide v1, p0, Lcom/bytedance/msdk/core/f/ox;->s:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;Z)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "app_abtest"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/msdk/core/f/ox;->q:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/bytedance/msdk/core/f/ox;->ia(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/bytedance/msdk/core/f/ox;->q:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/bytedance/msdk/core/f/ox;->kk(Ljava/lang/String;)V

    const-string v4, "is_trusteeship_monetize"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->v:I

    const-string v4, "etag"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/msdk/core/f/ox;->ox:Ljava/lang/String;

    const-string v4, "max_age"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bytedance/msdk/core/f/ox;->p:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/bytedance/msdk/core/f/ox;->p:J

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/bytedance/msdk/core/f/ox;->s:J

    const-string v4, "ab_version"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/msdk/core/f/ox;->iw:Ljava/lang/String;

    const-string v4, "ab_params"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/msdk/core/f/ox;->mn:Ljava/lang/String;

    const-string v4, "country"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/msdk/core/f/ox;->ia:Ljava/lang/String;

    const-string v4, "transparent_params"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/msdk/core/f/ox;->kk:Ljava/lang/String;

    const-string v4, "if_test"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->ji:I

    const-string v4, "if_get_detail_return"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->o:I

    const-string v4, "ecpm_precision_level"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/msdk/core/f/ox;->no:Ljava/lang/String;

    const-string v4, "fetch_primerit_level"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/msdk/core/f/ox;->ig:Ljava/lang/String;

    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "innerLog"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->jy:I

    const-string v4, "app_log_url"

    const-string v5, "log-api.pangolin-sdk-toutiao.com/service/2/app_log/"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/msdk/core/f/ox;->f:Ljava/lang/String;

    const-string v4, "break_request_times"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bytedance/msdk/core/f/ox;->fw:J

    const-string v4, "break_request_hold_time"

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bytedance/msdk/core/f/ox;->cd:J

    const-string v4, "ex_info"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->er:I

    const-string v4, "ex_"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/msdk/core/f/ox;->wn:Ljava/lang/String;

    const-string v4, "if_enable_label"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->n:I

    const-string v4, "ecpm_ttl"

    const v5, 0xf731400

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->dq:I

    const-string v4, "support_tnc"

    const v5, 0x7fffffff

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->gh:I

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-eq v4, v5, :cond_1

    iput v5, v1, Lcom/bytedance/msdk/core/f/ox;->gh:I

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_1
    :goto_0
    const-string v4, "custom_adn_sample_ratio"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v1, Lcom/bytedance/msdk/core/f/ox;->kx:D

    const-string v4, "enable_label_return"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->j:I

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_2

    iput v3, v1, Lcom/bytedance/msdk/core/f/ox;->j:I

    :cond_2
    const-string v4, "dynamic_policy_enable"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->nh:I

    const-string v4, "DynamicPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mDynamicPolicyEnable="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/bytedance/msdk/core/f/ox;->nh:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v1, Lcom/bytedance/msdk/core/f/ox;->nh:I

    if-eqz v4, :cond_3

    if-eq v4, v5, :cond_3

    iput v3, v1, Lcom/bytedance/msdk/core/f/ox;->nh:I

    :cond_3
    iget v4, v1, Lcom/bytedance/msdk/core/f/ox;->ob:I

    iget v6, v1, Lcom/bytedance/msdk/core/f/ox;->l:I

    const-string v7, "p_c"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v9, "l_p_a"

    invoke-virtual {v7, v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v1, Lcom/bytedance/msdk/core/f/ox;->ob:I

    const-string v9, "l_p_r"

    invoke-virtual {v7, v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/bytedance/msdk/core/f/ox;->l:I

    goto :goto_1

    :cond_4
    iput v3, v1, Lcom/bytedance/msdk/core/f/ox;->ob:I

    iput v3, v1, Lcom/bytedance/msdk/core/f/ox;->l:I

    :goto_1
    iget v7, v1, Lcom/bytedance/msdk/core/f/ox;->ob:I

    if-ne v4, v7, :cond_5

    iget v4, v1, Lcom/bytedance/msdk/core/f/ox;->l:I

    if-eq v6, v4, :cond_6

    :cond_5
    invoke-static {}, Lcom/bytedance/msdk/iw/d/s;->dq()V

    :cond_6
    invoke-static {}, Lcom/bytedance/msdk/core/mn/dq;->dq()Lcom/bytedance/msdk/core/mn/dq;

    move-result-object v4

    iget-wide v6, v1, Lcom/bytedance/msdk/core/f/ox;->fw:J

    iget-wide v9, v1, Lcom/bytedance/msdk/core/f/ox;->cd:J

    invoke-virtual {v4, v6, v7, v9, v10}, Lcom/bytedance/msdk/core/mn/dq;->dq(JJ)V

    const-string v4, "enable_bid_result_return"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->t:I

    const-string v4, "enable_bid_result_return_for_baidu"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->gx:I

    const-string v4, "enable_bid_result_return_for_ks"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/msdk/core/f/ox;->xz:I

    const-string v4, "supervisor_feature"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {v5}, Lcom/bytedance/msdk/ia/fw;->dq(Z)V

    invoke-static {v4}, Lcom/bytedance/msdk/ia/fw;->dq(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_7
    invoke-static {v3}, Lcom/bytedance/msdk/ia/fw;->dq(Z)V

    :goto_2
    const-string v5, "ra_info"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-static {v14}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lorg/json/JSONArray;)V

    :cond_8
    const-string v5, "app_common_config"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/msdk/mn/dq/dq;->k()Lcom/bytedance/msdk/mn/dq/d;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/bytedance/msdk/mn/d;->d(Lorg/json/JSONObject;)V

    const-string v5, "adn_init_conf"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/bytedance/msdk/mn/dq/dq;->ox(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/msdk/mn/dq/dq;->k()Lcom/bytedance/msdk/mn/dq/d;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/bytedance/msdk/mn/dq;->dq(Lorg/json/JSONObject;)V

    const-string v5, "adn_control_conf"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/bytedance/msdk/core/f/ox;->d(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "poor_network_config"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/bytedance/msdk/core/f/ox;->iw(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "rit_conf"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/bytedance/msdk/mn/dq/dq;->d(Lorg/json/JSONArray;)V

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/msdk/mn/dq/dq;->k()Lcom/bytedance/msdk/mn/dq/d;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/bytedance/msdk/mn/ox;->dq(Lorg/json/JSONArray;)V

    const-string v5, "module_disable_control"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/bytedance/msdk/core/f/ox;->kk(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "call_stack_conf"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/bytedance/msdk/core/f/ox;->mn(Lorg/json/JSONObject;)V

    const-string v7, "custom_adn_feature"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/bytedance/msdk/core/f/ox;->ia(Lorg/json/JSONObject;)V

    const-string v11, "timeout_req"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/bytedance/msdk/core/f/ox;->o(Lorg/json/JSONObject;)V

    const-string v12, "is_callback"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/bytedance/msdk/core/f/ox;->no(Lorg/json/JSONObject;)V

    const-string v13, "label_outputs"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/bytedance/msdk/core/f/ox;->s(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "label_group_infos"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/bytedance/msdk/core/f/ox;->p(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "dynamic_rules"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "dynamic_policy"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/bytedance/msdk/core/f/ox;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v2

    const-string v2, "behavior_policy_enable"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v19, v3

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/bytedance/msdk/core/f/ox;->by:I

    const-string v2, "BehaviorPolicy"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v20, v4

    const-string v4, "mBehaviorPolicyConfigEnable="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/bytedance/msdk/core/f/ox;->by:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "behavior_policy"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/msdk/core/f/ox;->ox(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "inter_full_refresh_cfg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/iw;->dq(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/mn/dq/dq;->k()Lcom/bytedance/msdk/mn/dq/d;

    move-result-object v3

    move-object/from16 v17, v0

    const/4 v4, 0x0

    new-instance v0, Lcom/bytedance/msdk/core/f/ox$1;

    move-object/from16 v16, v2

    move-object/from16 v21, v3

    move-object v2, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v11

    move-object v7, v12

    move-object v11, v13

    move-object v12, v15

    move-object/from16 v13, v18

    move-object/from16 v15, v19

    move-object/from16 v3, v20

    move/from16 v18, p2

    invoke-direct/range {v0 .. v18}, Lcom/bytedance/msdk/core/f/ox$1;-><init>(Lcom/bytedance/msdk/core/f/ox;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v2, v21

    invoke-interface {v2, v0}, Lcom/bytedance/msdk/mn/p;->dq(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(ZLorg/json/JSONObject;Lcom/bytedance/msdk/core/iw/d;)V

    return-void

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v1, v3, v2, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(ZLorg/json/JSONObject;Lcom/bytedance/msdk/core/iw/d;)V

    return-void

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v3, v2, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(ZLorg/json/JSONObject;Lcom/bytedance/msdk/core/iw/d;)V

    throw v0
.end method

.method public dq(Z)V
    .locals 12

    const-string v0, "app_abtest"

    const-string v1, "\u672c\u5730\u6ca1\u6709\u914d\u7f6e/\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528"

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/mn/s;->dq()Lcom/bytedance/msdk/ia/bl;

    move-result-object v5

    const-string v6, "has_config_in_sp"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->s(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/d;->er()Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v7, "cypher"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x2

    const-string v9, "message"

    const-string v10, "TTMediationSDK"

    if-ne v7, v8, :cond_0

    :try_start_1
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/msdk/ia/c;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v8, :cond_2

    :try_start_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    move-object v6, v8

    goto :goto_1

    :catchall_0
    move-exception v7

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, ">>>>> setting data error: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    nop

    goto/16 :goto_5

    :cond_0
    if-ne v7, v3, :cond_1

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v8, :cond_2

    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "setting data : "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v7

    :try_start_5
    const-string v8, "setting data error: "

    invoke-static {v10, v8, v7}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-nez v7, :cond_2

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :cond_2
    :goto_1
    const-string v7, "state_code"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x4e20

    if-ne v7, v9, :cond_5

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v7, "adn_init_conf"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v7, "app_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v0, "\u672c\u5730\u914d\u7f6e\u89e3\u6790\u6210\u529f"

    invoke-static {v10, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v3}, Lcom/bytedance/msdk/core/f/ox;->dq(Lorg/json/JSONObject;Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mp/dq;->iw()V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bytedance/msdk/core/d;->dq(Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p1, :cond_3

    invoke-virtual {p0, v3, v4, v4}, Lcom/bytedance/msdk/core/f/ox;->dq(ZLorg/json/JSONObject;Lcom/bytedance/msdk/core/iw/d;)V

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/mn/dq/dq;->mp()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/e;->dq(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_21

    :goto_2
    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/bytedance/msdk/core/mp/dq;->dq(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    :try_start_6
    const-string v6, "\u672c\u5730\u914d\u7f6eappid\u6216appkey\u975e\u6cd5"

    invoke-static {v10, v6}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, " \u89e3\u5bc6\u9519\u8bef\u6216\u8005\u89e3\u6790\u9519\u8bef\uff1astateCode="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\uff0cmsg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/bytedance/msdk/core/d;->dq(Lorg/json/JSONObject;)V

    const-string v6, "is_trusteeship_monetize"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->ox(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->v:I

    const-string v6, "etag"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/msdk/core/f/ox;->ox:Ljava/lang/String;

    const-string v6, "max_age"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->p(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bytedance/msdk/core/f/ox;->p:J

    const-string v6, "max_expire_time"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->p(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bytedance/msdk/core/f/ox;->s:J

    const-string v6, "ab_version"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/msdk/core/f/ox;->iw:Ljava/lang/String;

    const-string v6, "ab_params"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/msdk/core/f/ox;->mn:Ljava/lang/String;

    const-string v6, "country"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/msdk/core/f/ox;->ia:Ljava/lang/String;

    const-string v6, "transparent_params"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/msdk/core/f/ox;->kk:Ljava/lang/String;

    const-string v6, "if_test"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->ox(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->ji:I

    const-string v6, "network_permission"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->ox(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->o:I

    const-string v6, "ecpm_precision_level"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/msdk/core/f/ox;->no:Ljava/lang/String;

    const-string v6, "fetch_primerit_level"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/msdk/core/f/ox;->ig:Ljava/lang/String;

    const-string v6, "tt_app_log_url"

    const-string v7, "log-api.pangolin-sdk-toutiao.com/service/2/app_log/"

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/msdk/core/f/ox;->f:Ljava/lang/String;

    const-string v6, "break_request_times"

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bytedance/msdk/core/f/ox;->fw:J

    const-string v6, "break_request_hold_time"

    const-wide/16 v7, 0x2710

    invoke-virtual {v5, v6, v7, v8}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bytedance/msdk/core/f/ox;->cd:J

    const-string v6, "ex_info"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->er:I

    const-string v6, "if_enable_label"

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->n:I

    const-string v6, "cpm_expire_time"

    const v8, 0xf731400

    invoke-virtual {v5, v6, v8}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->dq:I

    const-string v6, "custom_adn_sample_ratio"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;F)F

    move-result v6

    float-to-double v8, v6

    iput-wide v8, p0, Lcom/bytedance/msdk/core/f/ox;->kx:D

    const-string v6, "enable_label_return"

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->j:I

    const-string v6, "dynamic_policy_enable"

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->nh:I

    const-string v6, "behavior_policy_enable"

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->by:I

    const-string v6, "limit_p_a"

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->ob:I

    const-string v6, "limit_p_r"

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->l:I

    const-string v6, "enable_bid_result_return"

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->t:I

    const-string v6, "enable_bid_result_return_for_baidu"

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->gx:I

    const-string v6, "enable_bid_result_return_for_ks"

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/msdk/core/f/ox;->xz:I

    invoke-static {}, Lcom/bytedance/msdk/core/mn/dq;->dq()Lcom/bytedance/msdk/core/mn/dq;

    move-result-object v6

    iget-wide v8, p0, Lcom/bytedance/msdk/core/f/ox;->fw:J

    iget-wide v10, p0, Lcom/bytedance/msdk/core/f/ox;->cd:J

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/bytedance/msdk/core/mn/dq;->dq(JJ)V

    const-string v6, "network_conf"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/bytedance/msdk/core/f/ox;->iw(Lorg/json/JSONObject;)Ljava/lang/String;

    :cond_7
    const-string v6, "reward_again_styles"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/bytedance/msdk/core/f/ox;->mn(Ljava/lang/String;)V

    :cond_8
    const-string v6, "adn_control_conf"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v9, "{"

    const-string v10, "["

    if-nez v8, :cond_a

    :try_start_7
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_9
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/bytedance/msdk/core/f/ox;->d(Lorg/json/JSONArray;)Ljava/lang/String;

    :cond_a
    const-string v6, "module_control"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/bytedance/msdk/core/f/ox;->kk(Lorg/json/JSONObject;)Ljava/lang/String;

    :cond_b
    const-string v6, "all_active_control"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->s(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v8, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    const-string v11, "active_control"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v8, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v6, "call_stack"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/bytedance/msdk/core/f/ox;->mn(Lorg/json/JSONObject;)V

    :cond_d
    const-string v6, "custom_adn_feature"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/bytedance/msdk/core/f/ox;->ia(Lorg/json/JSONObject;)V

    :cond_e
    const-string v6, "timeout_req"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/bytedance/msdk/core/f/ox;->o(Lorg/json/JSONObject;)V

    :cond_f
    const-string v6, "is_callback"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/bytedance/msdk/core/f/ox;->no(Lorg/json/JSONObject;)V

    :cond_10
    const-string v6, "key_supervisor_feature"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-static {v3}, Lcom/bytedance/msdk/ia/fw;->dq(Z)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/bytedance/msdk/ia/fw;->dq(Lorg/json/JSONObject;)V

    goto :goto_4

    :cond_11
    invoke-static {v7}, Lcom/bytedance/msdk/ia/fw;->dq(Z)V

    :goto_4
    const-string v6, "label_outputs"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_12
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/bytedance/msdk/core/f/ox;->s(Lorg/json/JSONObject;)Ljava/lang/String;

    :cond_13
    const-string v6, "label_group_infos"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_14
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/bytedance/msdk/core/f/ox;->p(Lorg/json/JSONObject;)Ljava/lang/String;

    :cond_15
    const-string v6, "dynamic_rules"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_16

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_16
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/bytedance/msdk/core/f/ox;->dq(Lorg/json/JSONArray;)Ljava/lang/String;

    :cond_17
    const-string v6, "dynamic_policy"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_18
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/bytedance/msdk/core/f/ox;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    :cond_19
    const-string v6, "behavior_policy"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1b

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1b

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/bytedance/msdk/core/f/ox;->ox(Lorg/json/JSONObject;)Ljava/lang/String;

    :cond_1b
    const-string v6, "inter_full_refresh_cfg"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-static {v6}, Lcom/bytedance/msdk/core/admanager/iw;->dq(Ljava/lang/String;)V

    :cond_1c
    const-string v6, "ex_"

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/msdk/core/f/ox;->wn:Ljava/lang/String;

    :cond_1d
    invoke-virtual {v5, v0}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-virtual {v5, v0}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/core/f/ox;->ia(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_1e
    if-nez p1, :cond_1f

    invoke-virtual {p0, v3, v4, v4}, Lcom/bytedance/msdk/core/f/ox;->dq(ZLorg/json/JSONObject;Lcom/bytedance/msdk/core/iw/d;)V

    :cond_1f
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/mn/dq/dq;->mp()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/e;->dq(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_2

    :goto_5
    if-nez p1, :cond_20

    invoke-virtual {p0, v3, v4, v4}, Lcom/bytedance/msdk/core/f/ox;->dq(ZLorg/json/JSONObject;Lcom/bytedance/msdk/core/iw/d;)V

    :cond_20
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/mn/dq/dq;->mp()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/e;->dq(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_2

    :cond_21
    :goto_6
    return-void
.end method

.method public dq(ZLorg/json/JSONObject;Lcom/bytedance/msdk/core/iw/d;)V
    .locals 8

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/bytedance/msdk/core/f/ox;->cv:Lcom/bytedance/msdk/core/iw/d;

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->ji()Z

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Lcom/bytedance/msdk/iw/d/dq;->d()Lcom/bytedance/msdk/iw/d/dq;

    move-result-object p3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v0, Lcom/bytedance/msdk/core/f/ox$2;

    move-object v1, p0

    move v6, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/msdk/core/f/ox$2;-><init>(Lcom/bytedance/msdk/core/f/ox;ZJLorg/json/JSONObject;Z)V

    invoke-virtual {p3, v7, v6, v2, v0}, Lcom/bytedance/msdk/iw/d/dq;->dq(Landroid/content/Context;ZZLcom/bytedance/msdk/core/iw/d;)V

    return-void
.end method

.method public dq(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/f/ox;->fd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x5

    if-eq p1, v2, :cond_4

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->i()Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->r()Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->fw()Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->gh()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->le()Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->cd()Z

    move-result p1

    return p1

    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->f()Z

    move-result p1

    return p1

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->jy()Z

    move-result p1

    return p1
.end method

.method public dq(J)Z
    .locals 3

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->dq:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dq(Ljava/lang/String;I)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->mp()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    const/16 v3, 0x65

    invoke-virtual {v0, p1, p2, v3}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->ce()I

    move-result p1

    if-eq p1, p2, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, p1, p3, v1}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/msdk/core/no/no;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/bytedance/msdk/core/no/no;->wn()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public ds()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->ob:I

    return v0
.end method

.method public e()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->no:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    return v2

    :catch_0
    :cond_0
    return v0
.end method

.method public er()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->nh:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/f/ox;->fd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    const-string v2, "type_interaction_control"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public fw()Z
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/f/ox;->fd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    const-string v2, "type_interactionfull_control"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public gh()Z
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/f/ox;->fd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    const-string v2, "type_feed_control"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public gx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->wn:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public ha()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enable_bid_result_return = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/msdk/core/f/ox;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "enable_bid_result_return_for_baidu = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/f/ox;->gx:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->cv()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->dc()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/f/ox;->fd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    const-string v2, "type_full_control"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public ia()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public ig()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->mp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ir()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->wp:Ljava/util/Map;

    return-object v0
.end method

.method public iw(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->op:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public iw()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->le:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public j()Lcom/bytedance/msdk/core/d/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->vf:Lcom/bytedance/msdk/core/d/d;

    return-object v0
.end method

.method public ji()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->mp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->ox()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jw()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enable_bid_result_return = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/msdk/core/f/ox;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "enable_bid_result_return_for_ks = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/f/ox;->xz:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->xz:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jy()Z
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/f/ox;->fd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    const-string v2, "type_banner_control"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->o:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->kk:Ljava/lang/String;

    return-object v0
.end method

.method public kx()I
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->p()I

    move-result v0

    return v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/no/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->bl:Ljava/util/Map;

    return-object v0
.end method

.method public le()Z
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/f/ox;->fd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    const-string v2, "type_native_control"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mn()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->ce:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->q:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 3

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->gh:I

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/bytedance/msdk/core/f/ox;->gh:I

    :cond_0
    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->gh:I

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public nh()Lcom/bytedance/msdk/core/ox/d;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->wn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->uh:Lcom/bytedance/msdk/core/ox/d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public no()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->f:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->ox:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/mn/s;->dq()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "etag"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->ox:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public ob()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->ji:I

    return v0
.end method

.method public op()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/f/ox;->ji:I

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/f/ox;->ds:Z

    return v0
.end method

.method public ox(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/mn/dq/dq;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ox(Ljava/lang/String;I)Z
    .locals 4

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->mp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    const/16 v3, 0x65

    invoke-virtual {v0, p1, p2, v3}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->kx()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public p(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/mn/s;->dq()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "all_active_control"

    const-string v2, "active_control"

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/f/ox;->vw:Z

    return v0
.end method

.method public q()Z
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/f/ox;->fd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    const-string v2, "ad_event_control"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public r()Z
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/msdk/core/f/ox;->fd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->i:Ljava/util/Map;

    const-string v2, "type_reward_control"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public s(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->ir:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/core/no/s;

    return-object p1
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/f/ox;->ha:Z

    return v0
.end method

.method public t()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->er:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public u()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->e:Ljava/util/Map;

    return-object v0
.end method

.method public uh()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->dq:I

    return v0
.end method

.method public v()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->c:Ljava/util/Map;

    return-object v0
.end method

.method public vf()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->ji:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public vw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->l:I

    return v0
.end method

.method public wn()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/f/ox;->by:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public wp()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox;->no:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public xz()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->vf:Lcom/bytedance/msdk/core/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d/d;->dq()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public yy()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox;->u:Ljava/util/Map;

    return-object v0
.end method
