.class Lcom/bytedance/sdk/component/dq/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/dq/i$d;,
        Lcom/bytedance/sdk/component/dq/i$dq;,
        Lcom/bytedance/sdk/component/dq/i$ox;
    }
.end annotation


# instance fields
.field private final d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/dq/i$ox;",
            ">;"
        }
    .end annotation
.end field

.field private final dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/dq/i$d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ox:Lcom/bytedance/sdk/component/dq/no$dq;

.field private final p:Ljava/lang/String;

.field private volatile s:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/bytedance/sdk/component/dq/no$dq;Ljava/util/concurrent/Executor;Lorg/json/JSONObject;)V
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/i;->dq:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/dq/i;->s:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/i;->p:Ljava/lang/String;

    if-gtz p2, :cond_0

    new-instance p2, Landroid/util/LruCache;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/dq/i;->d:Landroid/util/LruCache;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/i;->d:Landroid/util/LruCache;

    :goto_0
    iput-object p3, p0, Lcom/bytedance/sdk/component/dq/i;->ox:Lcom/bytedance/sdk/component/dq/no$dq;

    if-nez p5, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/i;->p(Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Lcom/bytedance/sdk/component/dq/i$1;

    invoke-direct {p1, p0, p4}, Lcom/bytedance/sdk/component/dq/i$1;-><init>(Lcom/bytedance/sdk/component/dq/i;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/component/dq/i;->update(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/dq/i$d;
    .locals 6
    .annotation build Lcom/bytedance/component/sdk/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/dq/i$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/dq/i$d;-><init>(Lcom/bytedance/sdk/component/dq/i$1;)V

    const-string v1, "pattern"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/component/dq/i$d;->dq:Ljava/util/regex/Pattern;

    const-string v1, "group"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/dq/k;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/k;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/component/dq/i$d;->d:Lcom/bytedance/sdk/component/dq/k;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/bytedance/sdk/component/dq/i$d;->ox:Ljava/util/List;

    const-string v1, "included_methods"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/bytedance/sdk/component/dq/i$d;->ox:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/bytedance/sdk/component/dq/i$d;->p:Ljava/util/List;

    const-string v1, "excluded_methods"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/bytedance/sdk/component/dq/i$d;->p:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "[.]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    return-object v0

    :cond_1
    if-ne v2, v3, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v2, -0x2

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/i$ox;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/component/dq/i$dq;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/dq/i$ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/dq/i$ox;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/dq/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/dq/i;->ox(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/dq/i$d;

    iget-object v3, v2, Lcom/bytedance/sdk/component/dq/i$d;->dq:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/bytedance/sdk/component/dq/i$d;->d:Lcom/bytedance/sdk/component/dq/k;

    iget-object v4, v0, Lcom/bytedance/sdk/component/dq/i$ox;->dq:Lcom/bytedance/sdk/component/dq/k;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_3

    iget-object v3, v2, Lcom/bytedance/sdk/component/dq/i$d;->d:Lcom/bytedance/sdk/component/dq/k;

    iput-object v3, v0, Lcom/bytedance/sdk/component/dq/i$ox;->dq:Lcom/bytedance/sdk/component/dq/k;

    :cond_3
    iget-object v3, v0, Lcom/bytedance/sdk/component/dq/i$ox;->d:Ljava/util/Set;

    iget-object v4, v2, Lcom/bytedance/sdk/component/dq/i$d;->ox:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/bytedance/sdk/component/dq/i$ox;->ox:Ljava/util/Set;

    iget-object v2, v2, Lcom/bytedance/sdk/component/dq/i$d;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/i;->d:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_5
    :goto_1
    sget-object p1, Lcom/bytedance/sdk/component/dq/k;->dq:Lcom/bytedance/sdk/component/dq/k;

    iput-object p1, v0, Lcom/bytedance/sdk/component/dq/i$ox;->dq:Lcom/bytedance/sdk/component/dq/k;

    return-object v0
.end method

.method private dq(Lorg/json/JSONObject;)V
    .locals 6
    .annotation build Lcom/bytedance/component/sdk/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/i;->dq:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v5, p0, Lcom/bytedance/sdk/component/dq/i;->dq:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/component/dq/i;->d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/dq/i$d;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parse configurations failed, response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/dq/kk;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/dq/i;->s:Z

    return-void
.end method

.method private ox(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/dq/i$d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/component/dq/i$dq;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/dq/i;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/i;->dq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/component/dq/i$dq;

    const-string v0, "Permission config is outdated!"

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/component/dq/i$dq;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.bytedance.ies.web.jsbridge2.PermissionConfig."

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dq(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/component/dq/i$ox;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/component/dq/i$ox;"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/component/dq/i$ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/dq/i$ox;-><init>()V

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "."

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    sget-object p1, Lcom/bytedance/sdk/component/dq/k;->ox:Lcom/bytedance/sdk/component/dq/k;

    iput-object p1, v0, Lcom/bytedance/sdk/component/dq/i$ox;->dq:Lcom/bytedance/sdk/component/dq/k;

    return-object v0

    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/component/dq/i;->d:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/component/dq/i$ox;

    if-eqz p2, :cond_4

    return-object p2

    :cond_4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/dq/i;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/i$ox;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    sget-object p1, Lcom/bytedance/sdk/component/dq/k;->dq:Lcom/bytedance/sdk/component/dq/k;

    iput-object p1, v0, Lcom/bytedance/sdk/component/dq/i$ox;->dq:Lcom/bytedance/sdk/component/dq/k;

    return-object v0
.end method

.method public update(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/dq/i;->dq(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/dq/i;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/i;->p(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
