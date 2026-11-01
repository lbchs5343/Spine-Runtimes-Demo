.class public Lcom/bytedance/sdk/component/mn/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/mn/d;


# instance fields
.field private d:Lcom/bytedance/sdk/component/mn/dq/ox;

.field private dq:Lcom/bytedance/sdk/component/mn/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/mn/dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/component/mn/dq/ox;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/component/mn/dq/ox;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :goto_0
    return-object p2
.end method

.method private dq(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/component/mn/dq/ox;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/component/mn/dq/ox;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;F)F
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return p2

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;F)F

    move-result p1

    return p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq/d;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return p2

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq/d;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq/d;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq/d;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/component/mn/dq/ox;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/component/mn/dq/ox;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/mn/dq;->d()V

    return-void
.end method

.method public d(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return p2

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq/d;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public dq()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/mn/dq;->dq()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/component/mn/dq/ox;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/util/Set;

    if-eqz v4, :cond_3

    check-cast v2, Ljava/util/Set;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    invoke-interface {v6, v5}, Lcom/bytedance/sdk/component/mn/dq/ox;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/bytedance/sdk/component/mn/dq/ox;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    return-object v1

    :catchall_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/mn/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/component/mn/dq/ox;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;F)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;F)V

    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq/d;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq/d;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;J)V

    return-void

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq/d;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq/d;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/util/Set;)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/component/mn/dq/ox;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/component/mn/dq/ox;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/mn/dq/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/mn/dq/d;->d:Lcom/bytedance/sdk/component/mn/dq/ox;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq/d;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
