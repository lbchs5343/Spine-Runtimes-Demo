.class public Lcom/bytedance/msdk/ox/s/dq/d;
.super Ljava/lang/Object;


# instance fields
.field private bl:J

.field private final cd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation
.end field

.field protected dq:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/bytedance/msdk/ox/d/dq/dq;

.field private final fw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final gh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/bytedance/msdk/core/s/d/p$ox;

.field private i:Landroid/os/Handler;

.field protected ia:J

.field private ig:Lcom/bytedance/msdk/api/p/no;

.field protected iw:Lcom/bytedance/msdk/d/s;

.field private final ji:Ljava/util/concurrent/atomic/AtomicInteger;

.field private jy:Ljava/lang/String;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected kk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private kx:Z

.field private le:J

.field protected mn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/dq/dq;",
            ">;"
        }
    .end annotation
.end field

.field private mp:Lcom/bytedance/msdk/core/no/d;

.field private n:I

.field private no:Lcom/bytedance/msdk/api/dq/d;

.field protected o:Lcom/bytedance/msdk/core/no/o;

.field private op:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/d;",
            ">;"
        }
    .end annotation
.end field

.field protected ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/bytedance/msdk/ox/s/dq/dq;

.field private volatile r:Z

.field protected s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation
.end field

.field private wp:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->d:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->ox:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->p:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->s:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->fw:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->cd:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->gh:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->r:Z

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mn:Ljava/util/Map;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/msdk/ox/s/dq/d;->ia:J

    iput-wide v2, p0, Lcom/bytedance/msdk/ox/s/dq/d;->le:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->wp:Z

    iput-boolean v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->e:Z

    iput-boolean v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->kx:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->ji:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->kk:Ljava/util/Map;

    new-instance v0, Lcom/bytedance/msdk/core/no/o;

    invoke-direct {v0}, Lcom/bytedance/msdk/core/no/o;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->o:Lcom/bytedance/msdk/core/no/o;

    iput v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->n:I

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->op:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/ox/s/dq/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->i:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/api/p/no;)Lcom/bytedance/msdk/api/p/no;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->ig:Lcom/bytedance/msdk/api/p/no;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/ox/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->f:Lcom/bytedance/msdk/ox/d/dq/dq;

    return-object p0
.end method

.method public static dq(Ljava/lang/ref/SoftReference;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/ox/d/dq/dq;)Lcom/bytedance/msdk/ox/s/dq/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Lcom/bytedance/msdk/ox/d/dq/dq;",
            ")",
            "Lcom/bytedance/msdk/ox/s/dq/d;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-direct {v0}, Lcom/bytedance/msdk/ox/s/dq/d;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/api/dq/d;->dq(Lcom/bytedance/msdk/core/no/d;)V

    iput-object p1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    iput-object v1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->kk:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->dq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "render_control"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/f/ox;->ob()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/api/dq/d;->p(I)V

    iget-object p1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/f/ox;->kk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/api/dq/d;->d(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {}, Lcom/bytedance/msdk/core/mn/mn;->p()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/api/dq/d;->dq(I)V

    iget-object p1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {}, Lcom/bytedance/msdk/core/mn/mn;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/api/dq/d;->dq(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/f/ox;->ob()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/msdk/core/s/d/p;->d(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/api/dq/d;->ox(I)V

    iget-object p1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->o:Lcom/bytedance/msdk/core/no/o;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/f/ox;->kk()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/bytedance/msdk/core/no/o;->ox:Ljava/lang/String;

    iput-object p0, v0, Lcom/bytedance/msdk/ox/s/dq/d;->dq:Ljava/lang/ref/SoftReference;

    iput-object p2, v0, Lcom/bytedance/msdk/ox/s/dq/d;->f:Lcom/bytedance/msdk/ox/d/dq/dq;

    new-instance p0, Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/s/dq/dq;-><init>()V

    iput-object p0, v0, Lcom/bytedance/msdk/ox/s/dq/d;->q:Lcom/bytedance/msdk/ox/s/dq/dq;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/s/dq/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->r:Z

    return p1
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/core/no/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    return-object p0
.end method

.method private j()I
    .locals 6

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->kx()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/s/dq/d;->q:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/ox/s/dq/dq;->ox(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    move v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/core/s/d/p$ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->h:Lcom/bytedance/msdk/core/s/d/p$ox;

    return-object p0
.end method

.method private nh()V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->ox()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->vf()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->s()V

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(ILjava/lang/String;)J

    move-result-wide v0

    new-instance v2, Lcom/bytedance/msdk/ox/s/dq/d$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/bytedance/msdk/ox/s/dq/d$7;-><init>(Lcom/bytedance/msdk/ox/s/dq/d;J)V

    invoke-static {v2, v0, v1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/ox/s/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->q:Lcom/bytedance/msdk/ox/s/dq/dq;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/ox/s/dq/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->cd:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/ox/s/dq/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->fw:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private s(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/s/dq/d$8;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/ox/s/dq/d$8;-><init>(Lcom/bytedance/msdk/ox/s/dq/d;Z)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method private vf()Z
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->fx()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->fx()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->fx()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private wn()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->q:Lcom/bytedance/msdk/ox/s/dq/dq;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/ox/s/dq/dq;->s(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->q:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/dq;->mn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public bl()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->kk:Ljava/util/Map;

    return-object v0
.end method

.method public c()Lcom/bytedance/msdk/core/no/o;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->o:Lcom/bytedance/msdk/core/no/o;

    return-object v0
.end method

.method public cd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->fw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->wn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->jy:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->q:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->q:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->ia:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->jy:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->wp:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->cd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->n:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->bl:J

    return-void
.end method

.method public dq(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->i:Landroid/os/Handler;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const/16 v0, 0x4e25

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ia/d/dq;->dq(Lcom/bytedance/msdk/core/no/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    const/16 v1, 0x2713

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->cd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v0

    iput-boolean v1, v0, Lcom/bytedance/msdk/core/no/o;->s:Z

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->le()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    if-nez v1, :cond_4

    const-string v1, ""

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/bytedance/msdk/ox/s/dq/d;->o:Lcom/bytedance/msdk/core/no/o;

    iget-object v2, v2, Lcom/bytedance/msdk/core/no/o;->dq:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->s(Z)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\uff01\u7ed9\u5916\u90e8\u56de\u8c03\uff1ainvokeAdLoadFailCallbackOnMainUI...... error Code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/util/List;)Lcom/bytedance/msdk/api/dq;

    move-result-object p1

    new-instance v0, Lcom/bytedance/msdk/ox/s/dq/d$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/ox/s/dq/d$3;-><init>(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/api/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/no;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->ig:Lcom/bytedance/msdk/api/p/no;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/no/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/no/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->o:Lcom/bytedance/msdk/core/no/o;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/s/d/p$ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->h:Lcom/bytedance/msdk/core/s/d/p$ox;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->iw:Lcom/bytedance/msdk/d/s;

    return-void
.end method

.method public dq(Lj$/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->op:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/s/dq/d$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/ox/s/dq/d$1;-><init>(Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->jn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ip()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->xx()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->jv()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/api/dq;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->ig()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->iw()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Lcom/bytedance/msdk/api/dq;

    const p1, 0xa054

    invoke-static {p1}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5355\u4e2a\u5e7f\u544a\u52a0\u8f7d\u5b8c\u6210\uff01\u7ed9\u5916\u90e8\u56de\u8c03\uff1ainvokeSingleAdLoadCallbackUI......"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fill"

    invoke-static {v4, v5}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "AdNetWorkName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] AdUnitId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]  \u8bf7\u6c42\u6210\u529f (loadSort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",showSort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5355\u4e2a\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\uff01\u7ed9\u5916\u90e8\u56de\u8c03\uff1ainvokeSingleAdLoadCallbackUI...... errorCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/bytedance/msdk/api/dq;->dq:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  errorMsg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/bytedance/msdk/ox/s/dq/d$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/msdk/ox/s/dq/d$5;-><init>(Lcom/bytedance/msdk/ox/s/dq/d;Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->kx:Z

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->fw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->wp()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/api/d;

    if-eqz v2, :cond_0

    const-string v3, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/d;->iw()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\u5e7f\u544a\u8bf7\u6c42\u4e2d"

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/d;->iw()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public er()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/ox/s/dq/d$6;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/s/dq/d$6;-><init>(Lcom/bytedance/msdk/ox/s/dq/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-lt v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public fw()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->op()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->q:Lcom/bytedance/msdk/ox/s/dq/dq;

    const/16 v2, -0x64

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/ox/s/dq/dq;->s(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->q:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/dq;->iw()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->dq:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public gh()Lcom/bytedance/msdk/api/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->ji:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/dq/dq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mn:Ljava/util/Map;

    return-object v0
.end method

.method public ia()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public ig()Lcom/bytedance/msdk/core/no/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    return-object v0
.end method

.method public ir()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->le:J

    return-wide v0
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->r:Z

    return v0
.end method

.method public ji()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->bl:J

    return-wide v0
.end method

.method public jy()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-lt v1, v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->wp:Z

    return v0
.end method

.method public kk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->ox:Ljava/util/List;

    return-object v0
.end method

.method public kx()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->ji:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public le()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->kx:Z

    return v0
.end method

.method public mn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->s:Ljava/util/List;

    return-object v0
.end method

.method public mp()Lcom/bytedance/msdk/ox/s/dq/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->q:Lcom/bytedance/msdk/ox/s/dq/dq;

    return-object v0
.end method

.method public n()Lcom/bytedance/msdk/api/p/no;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->ig:Lcom/bytedance/msdk/api/p/no;

    return-object v0
.end method

.method public no()Lcom/bytedance/msdk/d/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->iw:Lcom/bytedance/msdk/d/s;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->p:Ljava/util/List;

    return-object v0
.end method

.method public op()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->ia:J

    return-wide v0
.end method

.method public ox(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->le:J

    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->e:Z

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->gh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " v2 load done..........s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "     p.size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   bidding.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   normal.size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   underNormal.size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->kk()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "TTMediationSDK"

    invoke-static {v4, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->fw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->i:Landroid/os/Handler;

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->r()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v7

    if-nez v7, :cond_b

    iget-boolean v7, v0, Lcom/bytedance/msdk/ox/s/dq/d;->e:Z

    if-nez v7, :cond_b

    :cond_2
    iget-object v7, v0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v7}, Lcom/bytedance/msdk/core/no/d;->n()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v7}, Lcom/bytedance/msdk/core/no/d;->op()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/msdk/d/s;

    goto :goto_0

    :cond_4
    move-object v7, v6

    :goto_0
    iget-object v9, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v9}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v9

    if-le v9, v5, :cond_9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x1

    :goto_1
    if-ge v11, v9, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_a

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bytedance/msdk/d/s;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/bytedance/msdk/d/s;->ip()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    move-object v11, v6

    goto :goto_3

    :cond_9
    move-object v10, v6

    move-object v11, v10

    :cond_a
    :goto_3
    iget-object v9, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v7, v9, v10, v11}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Ljava/util/List;)V

    :cond_b
    iget-boolean v7, v0, Lcom/bytedance/msdk/ox/s/dq/d;->e:Z

    if-nez v7, :cond_d

    iget-object v7, v0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v1}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v8}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v8

    goto :goto_4

    :cond_c
    const-wide/16 v8, 0x0

    :goto_4
    iget-object v10, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v10}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v11}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/bytedance/msdk/core/o/p;->dq(Lcom/bytedance/msdk/core/no/d;DLjava/lang/String;I)V

    :cond_d
    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {v0, v5}, Lcom/bytedance/msdk/ox/s/dq/d;->s(Z)V

    return-void

    :cond_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    iget-object v7, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v7}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v7

    if-le v5, v7, :cond_f

    iget-object v1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v1

    :goto_5
    move/from16 v16, v1

    goto :goto_6

    :cond_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_5

    :goto_6
    iget-object v1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v1

    iget-object v5, v0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v5}, Lcom/bytedance/msdk/core/no/d;->n()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "has_serverBidding"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v1

    goto :goto_7

    :cond_10
    move-object v7, v6

    :goto_7
    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->le()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v8, v0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v9, v0, Lcom/bytedance/msdk/ox/s/dq/d;->iw:Lcom/bytedance/msdk/d/s;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/bytedance/msdk/ox/s/dq/d;->ia:J

    sub-long/2addr v10, v12

    invoke-direct {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->j()I

    move-result v12

    iget-object v1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->q:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/dq;->no()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/s/dq/d;->d(I)I

    move-result v13

    iget-object v1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v6

    :cond_11
    move-object v15, v6

    iget v1, v0, Lcom/bytedance/msdk/ox/s/dq/d;->n:I

    iget-object v5, v0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    const/4 v14, 0x0

    move/from16 v17, v1

    move-object/from16 v18, v5

    invoke-static/range {v7 .. v18}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/util/Map;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JIIILjava/lang/String;IILcom/bytedance/msdk/core/no/d;)V

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v5}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f\uff01\u7ed9\u5916\u90e8\u56de\u8c03\uff1ainvokeAdLoadSuccessOnMainUI........P.size:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/msdk/ox/s/dq/d$2;

    invoke-direct {v1, v0}, Lcom/bytedance/msdk/ox/s/dq/d$2;-><init>(Lcom/bytedance/msdk/ox/s/dq/d;)V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    invoke-direct {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->nh()V

    :cond_13
    :goto_8
    return-void
.end method

.method public p(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public q()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-lt v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public r()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->p:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/mn/mn;->dq()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->s:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->s:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bytedance/msdk/ox/s/dq/d;->s:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public s()V
    .locals 6

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->d()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->ox()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5e7f\u544a\u7f13\u5b58\u6210\u529f\uff01\u7ed9\u5916\u90e8\u56de\u8c03\uff1ainvokeAdVideoCacheOnMainUI........"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->no()Lcom/bytedance/msdk/d/s;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->ir()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/bytedance/msdk/ox/s/dq/d;->mp:Lcom/bytedance/msdk/core/no/d;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JLjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->gh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/bytedance/msdk/ox/s/dq/d$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/s/dq/d$4;-><init>(Lcom/bytedance/msdk/ox/s/dq/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public wp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d;->op:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
