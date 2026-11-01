.class public Lcom/bytedance/sdk/component/no/dq/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private dq:Lorg/json/JSONObject;

.field private ia:Ljava/lang/String;

.field private iw:Lcom/bytedance/sdk/component/no/p/p;

.field private kk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mn:Lcom/bytedance/sdk/component/no/p/p;

.field private no:Lcom/bytedance/sdk/component/no/p/d;

.field private o:I

.field private ox:Lcom/bytedance/sdk/component/no/ox/dq;

.field private p:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/no/ox/dq;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/no/ox/dq;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->o:I

    iput-object p1, p0, Lcom/bytedance/sdk/component/no/dq/dq;->ox:Lcom/bytedance/sdk/component/no/ox/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/no/dq/dq;->dq:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/component/no/dq/dq;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Lcom/bytedance/sdk/component/no/dq/dq;->o:I

    iput-object p2, p0, Lcom/bytedance/sdk/component/no/dq/dq;->dq:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/component/no/dq/dq;->d:Ljava/util/Map;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/bytedance/sdk/component/no/ia/d;->dq(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/no/dq/dq;->kk:Ljava/util/Map;

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/component/no/dq/dq;->dq:Lorg/json/JSONObject;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    :cond_2
    iget-object v3, p0, Lcom/bytedance/sdk/component/no/dq/dq;->kk:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static dq(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg/cgd;

    invoke-direct {v1, v0}, Lg/cgd;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "default_key"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v1, Lg/cgd;->d:Lg/faq;

    invoke-interface {p1, v0}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method private ia()V
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->o:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->ox:Lcom/bytedance/sdk/component/no/ox/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/no/ox/dq;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->ia:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->ia:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->ia:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->p:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->p:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->p:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/component/no/dq/dq;->p:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->p:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->ia:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->kk:Ljava/util/Map;

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->iw:Lcom/bytedance/sdk/component/no/p/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/no/p/p;->d()Lcom/bytedance/sdk/component/no/p/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/no/dq/dq;->d:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Lcom/bytedance/sdk/component/no/p/s;->d(Lcom/bytedance/sdk/component/no/dq/dq;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->mn:Lcom/bytedance/sdk/component/no/p/p;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/no/p/p;->d()Lcom/bytedance/sdk/component/no/p/s;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/component/no/p/s;->d(Lcom/bytedance/sdk/component/no/dq/dq;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public dq()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->d:Ljava/util/Map;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/no/p/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/no/dq/dq;->no:Lcom/bytedance/sdk/component/no/p/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/no/p/p;)V
    .locals 1

    instance-of v0, p1, Lcom/bytedance/sdk/component/no/dq/d;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/component/no/dq/dq;->iw:Lcom/bytedance/sdk/component/no/p/p;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/no/dq/dq;->mn:Lcom/bytedance/sdk/component/no/p/p;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/no/dq/dq;->s:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->iw:Lcom/bytedance/sdk/component/no/p/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/no/p/p;->d()Lcom/bytedance/sdk/component/no/p/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/component/no/p/s;->dq(Lcom/bytedance/sdk/component/no/dq/dq;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->mn:Lcom/bytedance/sdk/component/no/p/p;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/no/p/p;->d()Lcom/bytedance/sdk/component/no/p/s;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/component/no/p/s;->dq(Lcom/bytedance/sdk/component/no/dq/dq;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public iw()V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/no/dq/dq;->ia()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->no:Lcom/bytedance/sdk/component/no/p/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/no/p/d;->dq()V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/no/mn/dq;->dq()Lcom/bytedance/sdk/component/no/mn/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/no/dq/dq;->p:Ljava/lang/String;

    new-instance v2, Lcom/bytedance/sdk/component/no/dq/dq$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/component/no/dq/dq$1;-><init>(Lcom/bytedance/sdk/component/no/dq/dq;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/bytedance/sdk/component/no/mn/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/no/dq/dq;Lcom/bytedance/sdk/component/no/p/dq;)V

    return-void
.end method

.method public mn()Lcom/bytedance/sdk/component/no/ox/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->ox:Lcom/bytedance/sdk/component/no/ox/dq;

    return-object v0
.end method

.method public ox()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->dq:Lorg/json/JSONObject;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->s:Ljava/lang/String;

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/component/no/p/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/dq/dq;->iw:Lcom/bytedance/sdk/component/no/p/p;

    return-object v0
.end method
