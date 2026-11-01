.class public Lcom/bytedance/sdk/component/d/dq/dq/dq/ox;
.super Lcom/bytedance/sdk/component/d/dq/ig;


# instance fields
.field mp:Lcom/bytedance/sdk/component/ox/d/k;

.field q:Lcom/bytedance/sdk/component/d/dq/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/k$dq;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/dq/ig;-><init>(Lcom/bytedance/sdk/component/ox/d/k$dq;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/k$dq;->dq()Lcom/bytedance/sdk/component/ox/d/k;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/ox;->mp:Lcom/bytedance/sdk/component/ox/d/k;

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/dq/dq/p;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/p;-><init>(Lcom/bytedance/sdk/component/ox/d/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/ox;->q:Lcom/bytedance/sdk/component/d/dq/p;

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/d/dq/jy;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/bytedance/sdk/component/d/dq/jy;->iw:Lcom/bytedance/sdk/component/d/dq/jy$dq;

    sget-object v2, Lcom/bytedance/sdk/component/d/dq/jy$dq;->d:Lcom/bytedance/sdk/component/d/dq/jy$dq;

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget-object p1, p1, Lcom/bytedance/sdk/component/d/dq/jy;->s:[B

    if-eqz p1, :cond_3

    array-length p1, p1

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private dq(Lcom/bytedance/sdk/component/d/dq/jy;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/bytedance/sdk/component/d/dq/jy;->iw:Lcom/bytedance/sdk/component/d/dq/jy$dq;

    sget-object v2, Lcom/bytedance/sdk/component/d/dq/jy$dq;->ox:Lcom/bytedance/sdk/component/d/dq/jy$dq;

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget-object p1, p1, Lcom/bytedance/sdk/component/d/dq/jy;->s:[B

    if-eqz p1, :cond_3

    array-length p1, p1

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private ox(Lcom/bytedance/sdk/component/d/dq/jy;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/bytedance/sdk/component/d/dq/jy;->iw:Lcom/bytedance/sdk/component/d/dq/jy$dq;

    sget-object v2, Lcom/bytedance/sdk/component/d/dq/jy$dq;->dq:Lcom/bytedance/sdk/component/d/dq/jy$dq;

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget-object p1, p1, Lcom/bytedance/sdk/component/d/dq/jy;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/ox/d/kx$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/kx$dq;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->dq()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/Object;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->d()Lcom/bytedance/sdk/component/d/dq/mn;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->d()Lcom/bytedance/sdk/component/d/dq/mn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/mn;->dq()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/net/URL;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->iw()Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->iw()Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/ox;->ox(Lcom/bytedance/sdk/component/d/dq/jy;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->iw()Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v2

    iget-object v2, v2, Lcom/bytedance/sdk/component/d/dq/jy;->ox:Lcom/bytedance/sdk/component/d/dq/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/d/i;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->iw()Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/component/d/dq/jy;->p:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/ox/d/h;->dq(Lcom/bytedance/sdk/component/ox/d/i;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->iw()Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/component/d/dq/jy;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "multipart/form-data"

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/i;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->iw()Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v2

    iget-object v2, v2, Lcom/bytedance/sdk/component/d/dq/jy;->s:[B

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ox/d/h;->dq(Lcom/bytedance/sdk/component/ox/d/i;[B)Lcom/bytedance/sdk/component/ox/d/h;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/ox/d/le$dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/ox/d/le$dq;-><init>()V

    sget-object v3, Lcom/bytedance/sdk/component/ox/d/le;->s:Lcom/bytedance/sdk/component/ox/d/i;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/ox/d/le$dq;->dq(Lcom/bytedance/sdk/component/ox/d/i;)Lcom/bytedance/sdk/component/ox/d/le$dq;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->iw()Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/d/dq/jy;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->iw()Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/d/dq/jy;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/bytedance/sdk/component/ox/d/le$dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/le$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/le$dq;->dq()Lcom/bytedance/sdk/component/ox/d/le;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->iw()Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/ox;->d(Lcom/bytedance/sdk/component/d/dq/jy;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->iw()Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v2

    iget-object v2, v2, Lcom/bytedance/sdk/component/d/dq/jy;->ox:Lcom/bytedance/sdk/component/d/dq/o;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/d/i;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->iw()Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/component/d/dq/jy;->s:[B

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/ox/d/h;->dq(Lcom/bytedance/sdk/component/ox/d/i;[B)Lcom/bytedance/sdk/component/ox/d/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ox/d/h;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->s()Lcom/bytedance/sdk/component/d/dq/dq;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->s()Lcom/bytedance/sdk/component/d/dq/dq;

    move-result-object v1

    iget-boolean v1, v1, Lcom/bytedance/sdk/component/d/dq/dq;->dq:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/p$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ox/d/p$dq;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/p$dq;->dq()Lcom/bytedance/sdk/component/ox/d/p$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/p$dq;->ox()Lcom/bytedance/sdk/component/ox/d/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Lcom/bytedance/sdk/component/ox/d/p;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->p()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->p()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->p()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/kx$dq;

    goto :goto_1

    :cond_7
    new-instance p1, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/ox;->mp:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx$dq;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ox/d/k;->dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/s;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;-><init>(Lcom/bytedance/sdk/component/ox/d/s;)V

    return-object p1
.end method

.method public dq()Lcom/bytedance/sdk/component/d/dq/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/ox;->q:Lcom/bytedance/sdk/component/d/dq/p;

    return-object v0
.end method
