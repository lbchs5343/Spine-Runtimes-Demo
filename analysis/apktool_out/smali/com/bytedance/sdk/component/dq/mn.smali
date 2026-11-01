.class Lcom/bytedance/sdk/component/dq/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/dq/le$dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/dq/mn$dq;
    }
.end annotation


# instance fields
.field private final d:Lcom/bytedance/sdk/component/dq/r;

.field private final dq:Lcom/bytedance/sdk/component/dq/ia;

.field private final ia:Z

.field private final iw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/component/dq/p;",
            ">;"
        }
    .end annotation
.end field

.field private final kk:Z

.field private final mn:Lcom/bytedance/sdk/component/dq/mp;

.field private final o:Lcom/bytedance/sdk/component/dq/dq;

.field private final ox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/dq/d;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/dq/p$d;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/dq/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/dq/o;Lcom/bytedance/sdk/component/dq/dq;Lcom/bytedance/sdk/component/dq/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->ox:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->s:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->iw:Ljava/util/Set;

    iput-object p2, p0, Lcom/bytedance/sdk/component/dq/mn;->o:Lcom/bytedance/sdk/component/dq/dq;

    iget-object p2, p1, Lcom/bytedance/sdk/component/dq/o;->p:Lcom/bytedance/sdk/component/dq/ia;

    iput-object p2, p0, Lcom/bytedance/sdk/component/dq/mn;->dq:Lcom/bytedance/sdk/component/dq/ia;

    new-instance p2, Lcom/bytedance/sdk/component/dq/r;

    iget-object v0, p1, Lcom/bytedance/sdk/component/dq/o;->ig:Ljava/util/Set;

    iget-object v1, p1, Lcom/bytedance/sdk/component/dq/o;->mp:Ljava/util/Set;

    invoke-direct {p2, p3, v0, v1}, Lcom/bytedance/sdk/component/dq/r;-><init>(Lcom/bytedance/sdk/component/dq/i;Ljava/util/Set;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/dq/mn;->d:Lcom/bytedance/sdk/component/dq/r;

    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/component/dq/r;->dq(Lcom/bytedance/sdk/component/dq/le$dq;)V

    iget-object p3, p1, Lcom/bytedance/sdk/component/dq/o;->f:Lcom/bytedance/sdk/component/dq/no$d;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/dq/r;->dq(Lcom/bytedance/sdk/component/dq/no$d;)V

    iget-object p2, p1, Lcom/bytedance/sdk/component/dq/o;->kk:Lcom/bytedance/sdk/component/dq/mp;

    iput-object p2, p0, Lcom/bytedance/sdk/component/dq/mn;->mn:Lcom/bytedance/sdk/component/dq/mp;

    iget-boolean p2, p1, Lcom/bytedance/sdk/component/dq/o;->ia:Z

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/dq/mn;->ia:Z

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/dq/o;->jy:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/dq/mn;->kk:Z

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/dq/mn;)Lcom/bytedance/sdk/component/dq/ia;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/dq/mn;->dq:Lcom/bytedance/sdk/component/dq/ia;

    return-object p0
.end method

.method private d(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;)Lcom/bytedance/sdk/component/dq/k;
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/dq/mn;->kk:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/bytedance/sdk/component/dq/k;->ox:Lcom/bytedance/sdk/component/dq/k;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->d:Lcom/bytedance/sdk/component/dq/r;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/dq/mn;->ia:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/sdk/component/dq/r;->dq(ZLjava/lang/String;Lcom/bytedance/sdk/component/dq/d;)Lcom/bytedance/sdk/component/dq/k;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/dq/mn;)Lcom/bytedance/sdk/component/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/dq/mn;->o:Lcom/bytedance/sdk/component/dq/dq;

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/component/dq/f;Lcom/bytedance/sdk/component/dq/ox;Lcom/bytedance/sdk/component/dq/k;)Lcom/bytedance/sdk/component/dq/mn$dq;
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p2, Lcom/bytedance/sdk/component/dq/gh;

    iget-object v0, p1, Lcom/bytedance/sdk/component/dq/f;->p:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/sdk/component/dq/mn$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/dq/mn$2;-><init>(Lcom/bytedance/sdk/component/dq/mn;Lcom/bytedance/sdk/component/dq/f;)V

    invoke-direct {p2, v0, p3, v1}, Lcom/bytedance/sdk/component/dq/gh;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/k;Lcom/bytedance/sdk/component/dq/gh$dq;)V

    new-instance p1, Lcom/bytedance/sdk/component/dq/mn$dq;

    invoke-static {}, Lcom/bytedance/sdk/component/dq/wp;->dq()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/bytedance/sdk/component/dq/mn$dq;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/dq/mn$1;)V

    return-object p1
.end method

.method private dq(Lcom/bytedance/sdk/component/dq/f;Lcom/bytedance/sdk/component/dq/p;Lcom/bytedance/sdk/component/dq/iw;)Lcom/bytedance/sdk/component/dq/mn$dq;
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->iw:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/bytedance/sdk/component/dq/f;->s:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/component/dq/mn;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/dq/mn$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/component/dq/mn$1;-><init>(Lcom/bytedance/sdk/component/dq/mn;Lcom/bytedance/sdk/component/dq/f;Lcom/bytedance/sdk/component/dq/p;)V

    invoke-virtual {p2, v0, p3, v1}, Lcom/bytedance/sdk/component/dq/p;->dq(Ljava/lang/Object;Lcom/bytedance/sdk/component/dq/iw;Lcom/bytedance/sdk/component/dq/p$dq;)V

    new-instance p1, Lcom/bytedance/sdk/component/dq/mn$dq;

    invoke-static {}, Lcom/bytedance/sdk/component/dq/wp;->dq()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/bytedance/sdk/component/dq/mn$dq;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/dq/mn$1;)V

    return-object p1
.end method

.method private dq(Lcom/bytedance/sdk/component/dq/f;Lcom/bytedance/sdk/component/dq/s;Lcom/bytedance/sdk/component/dq/iw;)Lcom/bytedance/sdk/component/dq/mn$dq;
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p1, Lcom/bytedance/sdk/component/dq/f;->s:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/dq/mn;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/dq/s;->dq(Ljava/lang/Object;Lcom/bytedance/sdk/component/dq/iw;)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/component/dq/mn$dq;

    iget-object p3, p0, Lcom/bytedance/sdk/component/dq/mn;->dq:Lcom/bytedance/sdk/component/dq/ia;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/dq/ia;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/wp;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1, p3}, Lcom/bytedance/sdk/component/dq/mn$dq;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/dq/mn$1;)V

    return-object p2
.end method

.method private dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->dq:Lcom/bytedance/sdk/component/dq/ia;

    invoke-static {p2}, Lcom/bytedance/sdk/component/dq/mn;->dq(Ljava/lang/Object;)[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/dq/ia;->dq(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static dq(Ljava/lang/Object;)[Ljava/lang/reflect/Type;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Method is not parameterized?!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/dq/mn;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/dq/mn;->iw:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/dq/f;Lcom/bytedance/sdk/component/dq/iw;)Lcom/bytedance/sdk/component/dq/mn$dq;
    .locals 6
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->ox:Ljava/util/Map;

    iget-object v1, p1, Lcom/bytedance/sdk/component/dq/f;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/dq/d;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "Permission denied, call: "

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v4, p2, Lcom/bytedance/sdk/component/dq/iw;->d:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/bytedance/sdk/component/dq/mn;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;)Lcom/bytedance/sdk/component/dq/k;

    move-result-object v4

    iput-object v4, p2, Lcom/bytedance/sdk/component/dq/iw;->p:Lcom/bytedance/sdk/component/dq/k;

    if-eqz v4, :cond_1

    instance-of v5, v0, Lcom/bytedance/sdk/component/dq/s;

    if-eqz v5, :cond_0

    const-string v2, "Processing stateless call: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;)V

    check-cast v0, Lcom/bytedance/sdk/component/dq/s;

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/dq/mn;->dq(Lcom/bytedance/sdk/component/dq/f;Lcom/bytedance/sdk/component/dq/s;Lcom/bytedance/sdk/component/dq/iw;)Lcom/bytedance/sdk/component/dq/mn$dq;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    goto/16 :goto_0

    :cond_0
    instance-of v5, v0, Lcom/bytedance/sdk/component/dq/ox;

    if-eqz v5, :cond_2

    const-string p2, "Processing raw call: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;)V

    check-cast v0, Lcom/bytedance/sdk/component/dq/ox;

    invoke-direct {p0, p1, v0, v4}, Lcom/bytedance/sdk/component/dq/mn;->dq(Lcom/bytedance/sdk/component/dq/f;Lcom/bytedance/sdk/component/dq/ox;Lcom/bytedance/sdk/component/dq/k;)Lcom/bytedance/sdk/component/dq/mn$dq;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;)V

    new-instance p2, Lcom/bytedance/sdk/component/dq/cd;

    invoke-direct {p2, v2}, Lcom/bytedance/sdk/component/dq/cd;-><init>(I)V

    throw p2

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->p:Ljava/util/Map;

    iget-object v4, p1, Lcom/bytedance/sdk/component/dq/f;->p:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/dq/p$d;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/bytedance/sdk/component/dq/p$d;->dq()Lcom/bytedance/sdk/component/dq/p;

    move-result-object v0

    iget-object v4, p1, Lcom/bytedance/sdk/component/dq/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/dq/d;->dq(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/bytedance/sdk/component/dq/iw;->d:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/bytedance/sdk/component/dq/mn;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/d;)Lcom/bytedance/sdk/component/dq/k;

    move-result-object v4

    iput-object v4, p2, Lcom/bytedance/sdk/component/dq/iw;->p:Lcom/bytedance/sdk/component/dq/k;

    if-eqz v4, :cond_3

    const-string v2, "Processing stateful call: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/dq/mn;->dq(Lcom/bytedance/sdk/component/dq/f;Lcom/bytedance/sdk/component/dq/p;Lcom/bytedance/sdk/component/dq/iw;)Lcom/bytedance/sdk/component/dq/mn$dq;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/dq/p;->s()V

    new-instance p2, Lcom/bytedance/sdk/component/dq/cd;

    invoke-direct {p2, v2}, Lcom/bytedance/sdk/component/dq/cd;-><init>(I)V

    throw p2
    :try_end_0
    .catch Lcom/bytedance/sdk/component/dq/i$dq; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Received call: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but not registered."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/kk;->d(Ljava/lang/String;)V

    return-object v1

    :goto_0
    const-string v0, "No remote permission config fetched, call pending: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/dq/mn;->s:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/bytedance/sdk/component/dq/mn$dq;

    const/4 p2, 0x0

    invoke-static {}, Lcom/bytedance/sdk/component/dq/wp;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, v1}, Lcom/bytedance/sdk/component/dq/mn$dq;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/dq/mn$1;)V

    return-object p1
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->iw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/dq/p;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/dq/p;->iw()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->iw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->ox:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->d:Lcom/bytedance/sdk/component/dq/r;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/dq/r;->d(Lcom/bytedance/sdk/component/dq/le$dq;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/p$d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->p:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "JsBridge stateful method registered: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/dq/s<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/dq/d;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/mn;->ox:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "JsBridge stateless method registered: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/kk;->dq(Ljava/lang/String;)V

    return-void
.end method
