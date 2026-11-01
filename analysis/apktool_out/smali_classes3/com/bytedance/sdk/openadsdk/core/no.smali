.class public Lcom/bytedance/sdk/openadsdk/core/no;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/no$dq;,
        Lcom/bytedance/sdk/openadsdk/core/no$d;
    }
.end annotation


# static fields
.field public static final dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

.field private static volatile wn:Lcom/bytedance/sdk/openadsdk/core/no;


# instance fields
.field private bl:I

.field private volatile c:Ljava/lang/String;

.field private cd:Ljava/lang/String;

.field private ce:Ljava/lang/String;

.field private volatile d:Ljava/lang/String;

.field private e:Z

.field private er:Lcom/bytedance/sdk/openadsdk/jy/ox;

.field private volatile f:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

.field private fw:Ljava/lang/String;

.field private volatile gh:Z

.field private volatile h:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field private volatile i:Z

.field private volatile ia:Lcom/bytedance/sdk/openadsdk/core/e/dq;

.field private volatile ig:Z

.field private ir:Lcom/bytedance/sdk/openadsdk/core/iw;

.field private volatile iw:Ljava/lang/String;

.field private j:Lcom/bytedance/sdk/openadsdk/core/playable/ia;

.field private ji:I

.field private volatile jy:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

.field private volatile k:Lorg/json/JSONObject;

.field private volatile kk:I

.field private kx:Z

.field private volatile le:I

.field private volatile mn:Ljava/lang/String;

.field private mp:Landroid/graphics/Bitmap;

.field private n:I

.field private nh:Ljava/lang/String;

.field private final no:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile o:Z

.field private op:J

.field private volatile ox:Ljava/lang/String;

.field private volatile p:Z

.field private final q:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

.field private volatile r:Z

.field private volatile s:Ljava/lang/String;

.field private u:Z

.field private vf:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field private wp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/no$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/no$dq;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/no;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/dq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/dq;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ia:Lcom/bytedance/sdk/openadsdk/core/e/dq;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->kk:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->o:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/no;->no:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ig:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/no;->mp:Landroid/graphics/Bitmap;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;-><init>()V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/no;->q:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->gh:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->r:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->i:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->le:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->k:Lorg/json/JSONObject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->wp:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->e:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->kx:Z

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/no;->h:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ji:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->bl:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->n:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->op:J

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/no;->nh:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/api/iw/dq;->dq(Landroid/content/Context;)V

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_2
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/jy/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/jy/ox;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->er:Lcom/bytedance/sdk/openadsdk/jy/ox;

    return-void
.end method

.method private static cd(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x4e20

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "data\u8d85\u957f, \u6700\u957f\u4e3a20000"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/f;->dq(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final dq(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/no;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/no;->mp(Ljava/lang/String;)V

    return-void
.end method

.method private static ds()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->d(Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->dq(Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;)Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->ox(Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->p(Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->s(Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->iw(Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->mn(Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/f;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static fw(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "keyword\u8d85\u957f, \u6700\u957f\u4e3a1000"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/f;->dq(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static ia()Lcom/bytedance/sdk/openadsdk/core/no;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no;->wn:Lcom/bytedance/sdk/openadsdk/core/no;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/no;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/no;->wn:Lcom/bytedance/sdk/openadsdk/core/no;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/no;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/no;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/no;->wn:Lcom/bytedance/sdk/openadsdk/core/no;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no;->wn:Lcom/bytedance/sdk/openadsdk/core/no;

    return-object v0
.end method

.method private static jy(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appid\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/f;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mp(Ljava/lang/String;)V
    .locals 9

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "__name__"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "value"

    if-nez v7, :cond_1

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "csj_rit_list"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/no;->kk(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->iw:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->iw:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->iw:Ljava/lang/String;

    :cond_8
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->wp:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method private static final q(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method


# virtual methods
.method public bl()Lcom/bytedance/sdk/openadsdk/core/playable/ia;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->j:Lcom/bytedance/sdk/openadsdk/core/playable/ia;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/playable/ia;

    const/16 v1, 0xa

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/playable/ia;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->j:Lcom/bytedance/sdk/openadsdk/core/playable/ia;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->j:Lcom/bytedance/sdk/openadsdk/core/playable/ia;

    return-object v0
.end method

.method public by()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->q:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->dq()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 2

    const-string v0, "5001121"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.union_test.toutiao"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->iw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->iw:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ce()Z
    .locals 2

    const-string v0, "5001121"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o/o;->dq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->kk:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->nh:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "sdk_activate_init"

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->s()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->bl:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->bl:I

    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->bl:I

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dq(I)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/dq;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/e/dq;-><init>(IZ)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ia:Lcom/bytedance/sdk/openadsdk/core/e/dq;

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->op:J

    return-void
.end method

.method public dq(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/p;->dq(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v2, "pause_icon"

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->mp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public dq(Landroid/os/Bundle;)V
    .locals 6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "app_id"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/no;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "plugin_version"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdk_version"

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->h:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/dq;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->h:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;)V
    .locals 3

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->jy:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p1

    sget-object v0, Lg/hat;->b:Lg/cpo;

    const-class v1, Ljava/lang/Void;

    const/16 v2, 0x14

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ir/dq$d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->h:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ir:Lcom/bytedance/sdk/openadsdk/core/iw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/iw;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/iw;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ir:Lcom/bytedance/sdk/openadsdk/core/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->h:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/iw;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ir:Lcom/bytedance/sdk/openadsdk/core/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/dq$d;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->f:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->c:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "plugin_version"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "JSONObject not found for name "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " when update plugin config."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalInfo"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/no;->d:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "plugin_version"

    invoke-virtual {v0, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "sdk_version"

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/no;->k:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string p3, "addPluginConfig for "

    const-string p4, " failed: "

    invoke-static {p3, p1, p4}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalInfo"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs dq([I)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->no:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/no;->no:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->q:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->d()Z

    move-result v0

    return v0
.end method

.method public dq(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->q:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->dq(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public dq(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->s()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ji:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ji:I

    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ji:I

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dq(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->q:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->dq(Z)Z

    move-result p1

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ce:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ce:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.qq.e.comm.managers.status.SDKStatus"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getIntegrationSDKVersion"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ce:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public er()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->cd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->cd:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "any_door_id"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->cd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->cd:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->cd:Ljava/lang/String;

    return-object v1
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->s:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ia(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fw()Lcom/bytedance/sdk/openadsdk/core/e/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ia:Lcom/bytedance/sdk/openadsdk/core/e/dq;

    return-object v0
.end method

.method public gh()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->wp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->wp:Ljava/util/HashMap;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->wp:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->wp:Ljava/util/HashMap;

    return-object v0
.end method

.method public gx()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->xj()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->s()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->vf:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x157c

    if-lt v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/no;->iw(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->vf:Lcom/bykv/vk/openvk/api/proto/Bridge;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/AdSdkInitializerHolder;->isSdkInitSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    const-class v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/DownloadBridgeFactory;

    const-string v2, "getDownloadBridge"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->vf:Lcom/bykv/vk/openvk/api/proto/Bridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Init download bridge failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTDownload"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->vf:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-object v0
.end method

.method public i()Z
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "allow_show_notify"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->o:Z

    return v0
.end method

.method public ia(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/no;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mn(Ljava/lang/String;)V

    return-void
.end method

.method public ia(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->r:Z

    return-void
.end method

.method public ig(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "toolsBasicInfUrl"

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ig()Z
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "sdk_activate_init"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ir()I
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->no()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->le:I

    :cond_0
    return v0

    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->le:I

    return v0
.end method

.method public iw(I)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->h:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->h:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x1

    invoke-static {v1}, Lg/hat;->g(I)Lg/hat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lg/hat;->o(II)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const-class v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/16 v2, 0xa

    invoke-interface {v0, v2, p1, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-object p1
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->er:Lcom/bytedance/sdk/openadsdk/jy/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/jy/ox;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iw(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->cd(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/no$1;

    const-string v1, "setUserData"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/no$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/no;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public iw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->gh:Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/s;->d()V

    return-void
.end method

.method public j()I
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->s(I)I

    move-result v0

    return v0
.end method

.method public ji()Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->jy:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    return-object v0
.end method

.method public jy()Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->p:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Z)Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->p:Z

    return v0
.end method

.method public k()V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->le:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->p:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mn(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kk(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->wp:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->no(Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "title_bar_theme"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/no;->kk:I

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V

    const-string v1, "allow_show_notify"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/no;->o:Z

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ig:Z

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->s(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->no:Ljava/util/Set;

    const-string v2, "network_state"

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->no:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bl;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/no;->no()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bl;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V

    return-object v0
.end method

.method public kk(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->mn:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->dq(Lcom/bytedance/sdk/openadsdk/core/bl/p;)Lcom/bytedance/sdk/openadsdk/core/bl/s;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->dq(Z)V

    return-void
.end method

.method public kk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->u:Z

    return-void
.end method

.method public kx()V
    .locals 7

    const-string v0, "gdt_version"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/no;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string v2, "com.byted.mixed"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/no;->ox(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_0

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, "1.0.0.0"

    :goto_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    const-string v0, "app_id"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/no;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "plugin_version"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_version"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "plugin_update_network"

    const-string v3, "2"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->n:I

    return v0
.end method

.method public le()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->gh:Z

    return v0
.end method

.method public mn(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->n:I

    return-void
.end method

.method public mn(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/no;->iw(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kk(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->wp:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->no(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public mn(Z)V
    .locals 0

    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/core/op;->mn:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ig:Z

    return-void
.end method

.method public mn()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->er:Lcom/bytedance/sdk/openadsdk/jy/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/jy/ox;->p()Z

    move-result v0

    return v0
.end method

.method public mp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p(Z)Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ig:Z

    return v0
.end method

.method public nh()Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->h:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-object v0
.end method

.method public no()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->f:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/no;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ds()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->f:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->f:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    return-object v0
.end method

.method public no(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "toolsAdPreviewUrl"

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->nh:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "toolsQueryHost"

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o(Z)V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "update_advance_preview_mode"

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Z)V

    const-string p1, "update_advance_preview_mode_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;J)V

    return-void
.end method

.method public ob()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public op()Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "pause_icon"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/p;->dq(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->mp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public ox(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->jy(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->d:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "plugin_version"

    const-string v1, "6.6.0.7"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sdk_version"

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->k:Lorg/json/JSONObject;

    const-string v1, "com.byted.pangle"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->p:Z

    return-void
.end method

.method public ox()Z
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->kx:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->kx:Z

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lg/dkx;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lg/fdj;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/dkx;->q(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lg/cnh;->l(Landroid/content/pm/ShortcutManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->e:Z

    return v0
.end method

.method public ox(I)Z
    .locals 6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "network_state"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->no:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public p()Lcom/bytedance/sdk/openadsdk/core/ir/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->q:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    return-object v0
.end method

.method public p(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :try_start_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->le:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->f(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ox:Ljava/lang/String;

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->o:Z

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ox:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->ox:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()I
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "title_bar_theme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->kk:I

    return v0
.end method

.method public s(I)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p(I)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->fw(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/no;->s:Ljava/lang/String;

    return-void
.end method

.method public s(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/no;->ox(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Z)V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->er:Lcom/bytedance/sdk/openadsdk/jy/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/jy/ox;->ox()Z

    move-result v0

    return v0
.end method

.method public t()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->op:J

    return-wide v0
.end method

.method public u()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v2, "tob_ab_sdk_version"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->fw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->fw:Ljava/lang/String;

    return-object v0
.end method

.method public uh()Z
    .locals 6

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "update_advance_preview_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "update_advance_preview_mode_time"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v3, v4}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/32 v0, 0x36ee80

    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/no;->o(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public v()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "toolsBasicInfUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->u:Z

    return v0
.end method

.method public wn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->r:Z

    return v0
.end method

.method public wp()Lorg/json/JSONObject;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->kx()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/no;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method public xz()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "toolsQueryHost"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public yy()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, "toolsAdPreviewUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
