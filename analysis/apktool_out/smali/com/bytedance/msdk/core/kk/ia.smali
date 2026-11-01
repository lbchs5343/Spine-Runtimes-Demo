.class public Lcom/bytedance/msdk/core/kk/ia;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/kk/ia$dq;
    }
.end annotation


# static fields
.field private static final dq:Ljava/lang/String; = "TTMediationSDK_ia"


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/kk/mn;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Lcom/bytedance/msdk/s/dq/dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/msdk/s/dq/dq<",
            "Lcom/bytedance/msdk/core/kk/mn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/s/dq/d;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/s/dq/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->d:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/msdk/core/kk/ia$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/kk/ia;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bytedance/msdk/core/kk/ia;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ia$dq;->dq()Lcom/bytedance/msdk/core/kk/ia;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/mn;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/kk/mn;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/s/dq/s;->query(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/core/kk/mn;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->d:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1

    :cond_3
    return-object v1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/mn;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/kk/mn;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/s/dq/s;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/core/kk/mn;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/bytedance/msdk/core/kk/ia;->d:Ljava/util/Map;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->p()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1

    :cond_3
    return-object v1
.end method

.method public d(Lcom/bytedance/msdk/core/kk/mn;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/s/dq/dq;->dq(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/kk/mn;)V
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/core/kk/ia;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/mn;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/core/kk/ia;->d(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/mn;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/s/dq/s;->d(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/mn;->no()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/kk/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/mn;->no()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/kk/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/core/kk/s;

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/kk/s;->dq(Lcom/bytedance/msdk/core/kk/s;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->d:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/kk/ia;->d(Lcom/bytedance/msdk/core/kk/mn;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/kk/mn;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/msdk/core/kk/mn;->dq(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/kk/ia;->d:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->p()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/s/dq/dq;->dq(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/kk/mn;Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p3, p4}, Lcom/bytedance/msdk/core/kk/mn;->dq(Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/kk/ia;->d:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->p()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/s/dq/dq;->dq(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/s/dq/s;->delete(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ia;->ox:Lcom/bytedance/msdk/s/dq/dq;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/s/dq/s;->delete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
