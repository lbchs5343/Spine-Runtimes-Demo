.class public Lcom/bytedance/msdk/s/p;
.super Ljava/lang/Object;


# instance fields
.field public cd:J

.field public d:Ljava/lang/String;

.field public dq:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public fw:I

.field public gh:I

.field public i:Ljava/lang/String;

.field public ia:Ljava/lang/String;

.field public ig:Ljava/lang/String;

.field public iw:Ljava/lang/String;

.field public jy:Ljava/lang/String;

.field private k:J

.field public kk:J

.field public le:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mn:Ljava/lang/String;

.field public mp:Ljava/lang/String;

.field public no:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public ox:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/msdk/s/p;->gh:I

    iput v0, p0, Lcom/bytedance/msdk/s/p;->r:I

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/s/p;->le:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/msdk/s/p;->k:J

    return-void
.end method

.method public static d()Lcom/bytedance/msdk/s/p;
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/s/p;

    invoke-direct {v0}, Lcom/bytedance/msdk/s/p;-><init>()V

    return-object v0
.end method

.method public static ox()Lcom/bytedance/msdk/s/p;
    .locals 3

    new-instance v0, Lcom/bytedance/msdk/s/p;

    invoke-direct {v0}, Lcom/bytedance/msdk/s/p;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/s/p;->ox(J)Lcom/bytedance/msdk/s/p;

    return-object v0
.end method


# virtual methods
.method public d(I)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/s/p;->q:I

    return-object p0
.end method

.method public d(J)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/s/p;->kk:J

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->ia:Ljava/lang/String;

    return-object p0
.end method

.method public dq()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/s/p;->k:J

    return-wide v0
.end method

.method public dq(I)Lcom/bytedance/msdk/s/p;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->mp:Ljava/lang/String;

    return-object p0
.end method

.method public dq(J)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/s/p;->cd:J

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/s/p;->le:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public dq(Ljava/util/Map;)Lcom/bytedance/msdk/s/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/msdk/s/p;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/s/p;->le:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public ia(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->iw:Ljava/lang/String;

    return-object p0
.end method

.method public iw(I)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/s/p;->r:I

    return-object p0
.end method

.method public iw(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->p:Ljava/lang/String;

    return-object p0
.end method

.method public kk(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->mn:Ljava/lang/String;

    return-object p0
.end method

.method public mn(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->s:Ljava/lang/String;

    return-object p0
.end method

.method public no(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->i:Ljava/lang/String;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->no:Ljava/lang/String;

    return-object p0
.end method

.method public ox(I)Lcom/bytedance/msdk/s/p;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->jy:Ljava/lang/String;

    return-object p0
.end method

.method public ox(J)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/s/p;->k:J

    return-object p0
.end method

.method public ox(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->o:Ljava/lang/String;

    return-object p0
.end method

.method public p(I)Lcom/bytedance/msdk/s/p;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->f:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->d:Ljava/lang/String;

    return-object p0
.end method

.method public s(I)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/s/p;->fw:I

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/p;->ox:Ljava/lang/String;

    return-object p0
.end method

.method public setResult(I)Lcom/bytedance/msdk/s/p;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/s/p;->gh:I

    return-object p0
.end method
