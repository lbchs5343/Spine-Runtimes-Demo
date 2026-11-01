.class public Lcom/bytedance/embedapplog/c;
.super Ljava/lang/Object;


# static fields
.field private static final iw:[Ljava/lang/String;


# instance fields
.field private final d:Landroid/content/Context;

.field private dq:Z

.field private ia:I

.field private final mn:Landroid/content/SharedPreferences;

.field private final ox:Lcom/bytedance/embedapplog/u;

.field private p:Lorg/json/JSONObject;

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/ji;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "package"

    const-string v1, "app_version"

    const-string v2, "channel"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/c;->iw:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/embedapplog/c;->ia:I

    iput-object p1, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-virtual {p2}, Lcom/bytedance/embedapplog/u;->p()Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/embedapplog/c;->mn:Landroid/content/SharedPreferences;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/bytedance/embedapplog/c;->p:Lorg/json/JSONObject;

    sget-boolean p2, Lcom/bytedance/embedapplog/dq;->d:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/embedapplog/bx;->dq(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized d(Lorg/json/JSONObject;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "null abconfig"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    :try_start_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "vid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-static {v3}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const-string p1, "ab_version"

    invoke-direct {p0, v1}, Lcom/bytedance/embedapplog/c;->dq(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/embedapplog/c;->d(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "unknown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private d(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->p:Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2, v1}, Lcom/bytedance/embedapplog/yo;->d(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/bytedance/embedapplog/c;->p:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit p0

    const/4 v1, 0x1

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateHeader, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private dq(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private dq(Lcom/bytedance/embedapplog/ji;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->fw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/bytedance/embedapplog/ji;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lcom/bytedance/embedapplog/jo;->d:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "needSyncFromSub "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public static dq(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xd

    if-lt v1, v2, :cond_7

    const/16 v2, 0x80

    if-le v1, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_5

    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-le v3, v4, :cond_5

    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-le v3, v4, :cond_5

    :cond_4
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_5

    return v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    return v0
.end method

.method private q()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/c;->p:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 5

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/c;->dq:Z

    const-string v1, "version_code"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/c;->iw()Z

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/c;->dq:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public dq(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    return-object p1
.end method

.method public dq()Lorg/json/JSONObject;
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/c;->dq:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "custom"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/c;->d(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-virtual {p1, v1}, Lcom/bytedance/embedapplog/u;->d(Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/u;->ox(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/c;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    const-string v2, "register_time"

    const-string v3, "ssid"

    const-string v4, "install_id"

    const-string v6, ""

    const-string v8, "device_id"

    const-string v10, "version_code"

    sget-boolean v11, Lcom/bytedance/embedapplog/jo;->d:Z

    if-eqz v11, :cond_0

    const-string v11, "saveRegisterInfo, "

    const-string v12, ", "

    invoke-static {v11, v5, v12, v7, v12}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {v5}, Lcom/bytedance/embedapplog/c;->d(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v7}, Lcom/bytedance/embedapplog/c;->d(Ljava/lang/String;)Z

    move-result v12

    const/4 v14, 0x0

    :try_start_0
    invoke-static {v9}, Lcom/bytedance/embedapplog/c;->d(Ljava/lang/String;)Z

    move-result v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v16, 0x1

    :try_start_1
    iget-object v13, v1, Lcom/bytedance/embedapplog/c;->mn:Landroid/content/SharedPreferences;

    invoke-interface {v13, v10, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v17, v11

    :try_start_2
    invoke-direct {v1}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v10, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v18, 0x0

    :try_start_3
    iget-object v14, v1, Lcom/bytedance/embedapplog/c;->mn:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    if-eq v13, v11, :cond_1

    invoke-interface {v14, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    :goto_0
    if-eqz v17, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v14, v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/bytedance/embedapplog/c;->d(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-nez v17, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "response"

    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tt_fetch_did_error"

    invoke-static {v0, v2}, Lcom/bytedance/embedapplog/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    :goto_1
    invoke-direct {v1}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v17, :cond_4

    invoke-direct {v1, v8, v5}, Lcom/bytedance/embedapplog/c;->d(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-direct {v1}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v12, :cond_5

    invoke-direct {v1, v4, v7}, Lcom/bytedance/embedapplog/c;->d(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v14, v4, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    :cond_5
    invoke-direct {v1}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v15, :cond_6

    invoke-direct {v1, v3, v9}, Lcom/bytedance/embedapplog/c;->d(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v14, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    invoke-static {}, Lcom/bytedance/embedapplog/dq;->no()Lcom/bytedance/embedapplog/ox;

    move-result-object v2

    move-object v6, v8

    move-object v8, v4

    move-object v4, v0

    invoke-interface/range {v2 .. v9}, Lcom/bytedance/embedapplog/ox;->dq(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_4
    const/16 v18, 0x0

    goto :goto_5

    :catch_2
    move-exception v0

    move/from16 v17, v11

    goto :goto_4

    :catch_3
    move-exception v0

    move/from16 v17, v11

    const/16 v16, 0x1

    goto :goto_4

    :goto_5
    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :goto_6
    if-eqz v17, :cond_7

    if-eqz v12, :cond_7

    return v16

    :cond_7
    return v18
.end method

.method public ia()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "install_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ig()J
    .locals 4

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "register_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public iw()Z
    .locals 12

    iget-object v0, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/bl;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/bl;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/op;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/op;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/ir;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/ir;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/ce;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/ce;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/wn;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/wn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/j;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/j;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/nh;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/nh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/ob;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/ob;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/l;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/l;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/t;

    invoke-direct {v2}, Lcom/bytedance/embedapplog/t;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/gx;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/gx;-><init>(Lcom/bytedance/embedapplog/u;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/by;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/by;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/uh;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/uh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/xz;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/xz;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/kx;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/kx;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/vf;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/vf;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/n;

    iget-object v3, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/n;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_a

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/yo;->d(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/embedapplog/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, 0xa

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/embedapplog/ji;

    iget-boolean v9, v7, Lcom/bytedance/embedapplog/ji;->dq:Z

    if-eqz v9, :cond_1

    iget-boolean v9, v7, Lcom/bytedance/embedapplog/ji;->ox:Z

    if-nez v9, :cond_1

    invoke-direct {p0, v7}, Lcom/bytedance/embedapplog/c;->dq(Lcom/bytedance/embedapplog/ji;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_1
    :try_start_1
    invoke-virtual {v7, v1}, Lcom/bytedance/embedapplog/ji;->dq(Lorg/json/JSONObject;)Z

    move-result v9

    iput-boolean v9, v7, Lcom/bytedance/embedapplog/ji;->dq:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v9

    goto :goto_2

    :catch_1
    move-exception v8

    goto :goto_3

    :goto_2
    iget-boolean v10, v7, Lcom/bytedance/embedapplog/ji;->d:Z

    if-nez v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "loadHeader, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/bytedance/embedapplog/c;->ia:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v9, v7, Lcom/bytedance/embedapplog/ji;->dq:Z

    if-nez v9, :cond_2

    iget v9, p0, Lcom/bytedance/embedapplog/c;->ia:I

    if-le v9, v8, :cond_2

    iput-boolean v3, v7, Lcom/bytedance/embedapplog/ji;->dq:Z

    goto :goto_4

    :goto_3
    invoke-static {v8}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    iget-boolean v8, v7, Lcom/bytedance/embedapplog/ji;->dq:Z

    if-nez v8, :cond_3

    iget-boolean v8, v7, Lcom/bytedance/embedapplog/ji;->d:Z

    if-nez v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    iget-boolean v8, v7, Lcom/bytedance/embedapplog/ji;->dq:Z

    if-nez v8, :cond_5

    iget-boolean v7, v7, Lcom/bytedance/embedapplog/ji;->d:Z

    if-eqz v7, :cond_4

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v7, 0x1

    :goto_6
    and-int/2addr v4, v7

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    if-eqz v4, :cond_8

    sget-object v7, Lcom/bytedance/embedapplog/c;->iw:[Ljava/lang/String;

    array-length v9, v7

    :goto_7
    if-ge v2, v9, :cond_7

    aget-object v10, v7, v2

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v3

    and-int/2addr v4, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    const-string v2, "user_unique_id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    :try_start_2
    const-string v7, "user_unique_id"

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    nop

    :cond_8
    :goto_8
    iput-object v1, p0, Lcom/bytedance/embedapplog/c;->p:Lorg/json/JSONObject;

    iput-boolean v4, p0, Lcom/bytedance/embedapplog/c;->dq:Z

    sget-boolean v1, Lcom/bytedance/embedapplog/jo;->d:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadHeader, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/bytedance/embedapplog/c;->dq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/embedapplog/c;->ia:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/embedapplog/c;->p:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadHeader, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/bytedance/embedapplog/c;->dq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/embedapplog/c;->ia:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/jo;->p(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    if-lez v5, :cond_a

    if-ne v5, v6, :cond_a

    iget v0, p0, Lcom/bytedance/embedapplog/c;->ia:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/bytedance/embedapplog/c;->ia:I

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/c;->no()I

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/bytedance/embedapplog/c;->ia:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/bytedance/embedapplog/c;->ia:I

    :cond_a
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/c;->dq:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->no()Lcom/bytedance/embedapplog/ox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/c;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/c;->ia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/c;->kk()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/embedapplog/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/c;->dq:Z

    return v0

    :goto_a
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public kk()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ssid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mn()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mp()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_sdk_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public no()I
    .locals 4

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "install_id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/embedapplog/c;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/embedapplog/c;->mn:Landroid/content/SharedPreferences;

    const-string v2, "version_code"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    return v1
.end method

.method public o()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user_unique_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/c;->dq:Z

    const-string v1, "app_version"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/c;->iw()Z

    iget-boolean v0, p0, Lcom/bytedance/embedapplog/c;->dq:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/embedapplog/c;->q()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public p()V
    .locals 1

    invoke-static {}, Lcom/bytedance/embedapplog/le;->iw()Lcom/bytedance/embedapplog/le;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/le;->kk()V

    return-void
.end method

.method public s()V
    .locals 3

    new-instance v0, Lcom/bytedance/embedapplog/vf;

    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/embedapplog/c;->ox:Lcom/bytedance/embedapplog/u;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/embedapplog/vf;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/embedapplog/c;->p:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/vf;->dq(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xgc_od"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
