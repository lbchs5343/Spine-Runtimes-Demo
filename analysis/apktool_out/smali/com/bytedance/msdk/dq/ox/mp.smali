.class public Lcom/bytedance/msdk/dq/ox/mp;
.super Lcom/bytedance/msdk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/dq/ox/mp$dq;
    }
.end annotation


# instance fields
.field private iw:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/dq;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/bytedance/msdk/dq/ox/mp;->iw:I

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/dq/ox/mp;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/mp;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/dq/ox/mp;->iw:I

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/mp;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/dq/ox/mp;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/dq/ox/mp;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/dq/ox/mp;->iw:I

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/dq/ox/mp;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/dq/ox/mp;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/dq/ox/mp;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method


# virtual methods
.method public dq(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-nez v0, :cond_0

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string p2, "load ad fail adSlot is null"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/msdk/dq/ox/mp$dq;-><init>(Lcom/bytedance/msdk/dq/ox/mp;Ljava/util/Map;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->dq(Landroid/content/Context;)V

    return-void
.end method

.method public fw()Ljava/lang/String;
    .locals 1

    const-string v0, "pangle"

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/gromore/init/dq;->ox()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0.0"

    return-object v0
.end method
