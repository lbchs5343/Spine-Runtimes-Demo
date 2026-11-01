.class Lcom/bytedance/sdk/component/dq/le;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/dq/le$dq;
    }
.end annotation


# instance fields
.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/dq/i;",
            ">;"
        }
    .end annotation
.end field

.field private final dq:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ox:Lcom/bytedance/sdk/component/dq/no;

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/component/dq/le$dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private dq(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/dq/i;
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/le;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/dq/i;

    if-nez v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/dq/i;

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/le;->ox:Lcom/bytedance/sdk/component/dq/no;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/dq/no;->ox()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/le;->ox:Lcom/bytedance/sdk/component/dq/no;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/dq/no;->dq()Lcom/bytedance/sdk/component/dq/no$dq;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/le;->ox:Lcom/bytedance/sdk/component/dq/no;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/dq/no;->d()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/dq/i;-><init>(Ljava/lang/String;ILcom/bytedance/sdk/component/dq/no$dq;Ljava/util/concurrent/Executor;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/dq/le;->d:Ljava/util/Map;

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    move-object v6, p2

    if-eqz v6, :cond_1

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/component/dq/i;->update(Lorg/json/JSONObject;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/component/dq/le$dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/le;->p:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/dq/i;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/le;->dq:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "host"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Namespace: "

    const-string v2, " not registered."

    invoke-static {v1, p1, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/dq/le;->dq(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/dq/i;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/dq/le$dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/le;->p:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
