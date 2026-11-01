.class public Lcom/bytedance/sdk/component/iw/ox/iw;
.super Ljava/lang/Object;


# instance fields
.field private final d:Lcom/bytedance/sdk/component/iw/mp;

.field private dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/iw/ox/ox;",
            ">;>;"
        }
    .end annotation
.end field

.field private ia:Ljava/util/concurrent/ExecutorService;

.field private iw:Lcom/bytedance/sdk/component/iw/p;

.field private kk:Lcom/bytedance/sdk/component/iw/fw;

.field private mn:Lcom/bytedance/sdk/component/iw/ig;

.field private ox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/iw/cd;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/iw/gh;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/iw/ox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/iw/mp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->dq:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->ox:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->s:Ljava/util/Map;

    invoke-static {p2}, Lcom/bytedance/sdk/component/iw/ox/ia;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/iw/mp;

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->d:Lcom/bytedance/sdk/component/iw/mp;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/iw/mp;->kk()Lcom/bytedance/sdk/component/iw/d;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/iw/d;)V

    return-void
.end method

.method private ig()Lcom/bytedance/sdk/component/iw/fw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->d:Lcom/bytedance/sdk/component/iw/mp;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/mp;->ia()Lcom/bytedance/sdk/component/iw/fw;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/iw/ox/mn;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/iw/ox/mn;-><init>()V

    :cond_0
    return-object v0
.end method

.method private iw(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/ox;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->d:Lcom/bytedance/sdk/component/iw/mp;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/mp;->mn()Lcom/bytedance/sdk/component/iw/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/d;->s()Ljava/io/File;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/d;->dq()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/iw/ox/iw;->iw()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;-><init>(Ljava/io/File;JLjava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private kk()Lcom/bytedance/sdk/component/iw/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->d:Lcom/bytedance/sdk/component/iw/mp;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/mp;->p()Lcom/bytedance/sdk/component/iw/p;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/iw/d/d;->dq()Lcom/bytedance/sdk/component/iw/p;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private no()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->d:Lcom/bytedance/sdk/component/iw/mp;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/mp;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/iw/dq/ox;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private o()Lcom/bytedance/sdk/component/iw/ig;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->d:Lcom/bytedance/sdk/component/iw/mp;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/mp;->dq()Lcom/bytedance/sdk/component/iw/ig;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/iw/dq/d;->dq()Lcom/bytedance/sdk/component/iw/ig;

    move-result-object v0

    return-object v0
.end method

.method private p(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/cd;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->d:Lcom/bytedance/sdk/component/iw/mp;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/mp;->s()Lcom/bytedance/sdk/component/iw/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/dq/d/dq;->dq(Lcom/bytedance/sdk/component/iw/cd;)Lcom/bytedance/sdk/component/iw/cd;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/d;->d()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/dq/d/dq;->dq(I)Lcom/bytedance/sdk/component/iw/cd;

    move-result-object p1

    return-object p1
.end method

.method private s(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/gh;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->d:Lcom/bytedance/sdk/component/iw/mp;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/mp;->iw()Lcom/bytedance/sdk/component/iw/gh;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/d;->d()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/dq/d/s;->dq(I)Lcom/bytedance/sdk/component/iw/gh;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/gh;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->mn()Lcom/bytedance/sdk/component/iw/d;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/d;->s()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->p:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/iw/gh;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/iw/ox/iw;->s(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/gh;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->p:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/iw/gh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/cd;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->mn()Lcom/bytedance/sdk/component/iw/d;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/d;->s()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->ox:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/iw/cd;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/iw/ox/iw;->p(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/cd;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->ox:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;)Lcom/bytedance/sdk/component/iw/ox/d/dq;
    .locals 8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->s()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/iw/ox/d/dq;->dq:Landroid/widget/ImageView$ScaleType;

    :cond_0
    move-object v4, v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->ig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/iw/ox/d/dq;->d:Landroid/graphics/Bitmap$Config;

    :cond_1
    move-object v5, v0

    new-instance v1, Lcom/bytedance/sdk/component/iw/ox/d/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->ox()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->p()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->kk()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->o()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/iw/ox/d/dq;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;II)V

    return-object v1
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/ox;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->dq(Ljava/io/File;)Lcom/bytedance/sdk/component/iw/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/iw/ox/iw;->ox(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/ox;

    move-result-object p1

    return-object p1
.end method

.method public dq()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/iw/cd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->ox:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public ia()Lcom/bytedance/sdk/component/iw/fw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->kk:Lcom/bytedance/sdk/component/iw/fw;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/ox/iw;->ig()Lcom/bytedance/sdk/component/iw/fw;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->kk:Lcom/bytedance/sdk/component/iw/fw;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->kk:Lcom/bytedance/sdk/component/iw/fw;

    return-object v0
.end method

.method public iw()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->d:Lcom/bytedance/sdk/component/iw/mp;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/mp;->ox()Lcom/bytedance/sdk/component/iw/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/i;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->ia:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/ox/iw;->no()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->ia:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->ia:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public mn()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/iw/ox/ox;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->dq:Ljava/util/Map;

    return-object v0
.end method

.method public ox(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/ox;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->mn()Lcom/bytedance/sdk/component/iw/d;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/d;->s()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/iw/ox;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/iw/ox/iw;->iw(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/ox;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->s:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public ox()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/iw/ox;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/component/iw/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->iw:Lcom/bytedance/sdk/component/iw/p;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/ox/iw;->kk()Lcom/bytedance/sdk/component/iw/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->iw:Lcom/bytedance/sdk/component/iw/p;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->iw:Lcom/bytedance/sdk/component/iw/p;

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/component/iw/ig;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->mn:Lcom/bytedance/sdk/component/iw/ig;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/ox/iw;->o()Lcom/bytedance/sdk/component/iw/ig;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->mn:Lcom/bytedance/sdk/component/iw/ig;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/iw;->mn:Lcom/bytedance/sdk/component/iw/ig;

    return-object v0
.end method
