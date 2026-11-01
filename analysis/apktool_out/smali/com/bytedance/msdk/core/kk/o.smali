.class public Lcom/bytedance/msdk/core/kk/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/kk/o$dq;
    }
.end annotation


# static fields
.field private static final dq:Ljava/lang/String; = "TTMediationSDK_o"


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/kk/kk;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Lcom/bytedance/msdk/s/dq/ox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/msdk/s/dq/ox<",
            "Lcom/bytedance/msdk/core/kk/kk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/s/dq/p;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/s/dq/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->d:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/msdk/core/kk/o$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/kk/o;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bytedance/msdk/core/kk/o;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/o$dq;->dq()Lcom/bytedance/msdk/core/kk/o;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/kk;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/msdk/core/kk/kk;

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/s/dq/s;->query(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/core/kk/kk;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1

    :cond_3
    return-object v1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/kk;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/msdk/core/kk/kk;

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/s/dq/s;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/core/kk/kk;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/bytedance/msdk/core/kk/o;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->p()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1

    :cond_3
    return-object v1
.end method

.method public dq(Lcom/bytedance/msdk/core/kk/kk;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/kk;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/p;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/s/dq/s;->d(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/s/dq/s;->delete(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dq(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/kk/kk;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/msdk/core/kk/kk;->dq(J)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/msdk/s/dq/ox;->dq(Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->d:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/s/dq/s;->delete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/kk/kk;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p3, p4}, Lcom/bytedance/msdk/core/kk/kk;->dq(J)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/o;->ox:Lcom/bytedance/msdk/s/dq/ox;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/msdk/s/dq/ox;->dq(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    return-void
.end method
