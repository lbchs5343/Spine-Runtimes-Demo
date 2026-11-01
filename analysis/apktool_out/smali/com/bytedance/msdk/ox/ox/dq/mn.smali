.class public Lcom/bytedance/msdk/ox/ox/dq/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/ox/dq/dq$dq;


# instance fields
.field private d:Lcom/bytedance/msdk/ox/s/dq/d;

.field private dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/ox/ox/dq/dq;",
            ">;"
        }
    .end annotation
.end field

.field private ox:I

.field private p:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/ox/ox/dq/dq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->dq:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->ox:I

    iput v1, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->p:I

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/ox/ox/dq/mn;)Lcom/bytedance/msdk/ox/s/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/dq/mn;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->ox:I

    return p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/ox/ox/dq/mn;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->p:I

    return v0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/ox/ox/dq/mn;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->dq:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/ox/ox/dq/mn;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->ox:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->ox:I

    return v0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/ox/ox/dq/mn;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->p:I

    return p0
.end method


# virtual methods
.method public dq()Lcom/bytedance/msdk/ox/s/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    return-object v0
.end method

.method public dq(Lcom/bytedance/msdk/ox/s/dq/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->dq:Ljava/util/List;

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/bytedance/msdk/ox/ox/dq/mn$1;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/ox/ox/dq/mn$1;-><init>(Lcom/bytedance/msdk/ox/ox/dq/mn;)V

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/mn;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->d(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/bytedance/msdk/ox/ox/dq/mn$2;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/ox/ox/dq/mn$2;-><init>(Lcom/bytedance/msdk/ox/ox/dq/mn;)V

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method
