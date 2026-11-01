.class public Lcom/bytedance/msdk/dq/ox/mn;
.super Lcom/bytedance/msdk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/dq/ox/mn$dq;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/dq;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/dq/ox/mn;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/mn;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/dq/ox/mn;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method


# virtual methods
.method public dq(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
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

    iget-object p2, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/ox/mn;->i()V

    return-void

    :cond_0
    new-instance p2, Lcom/bytedance/msdk/dq/ox/mn$dq;

    invoke-direct {p2, p0}, Lcom/bytedance/msdk/dq/ox/mn$dq;-><init>(Lcom/bytedance/msdk/dq/ox/mn;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/dq/ox/mn$dq;->dq(Landroid/content/Context;)V

    return-void
.end method

.method public fw()Ljava/lang/String;
    .locals 1

    const-string v0, "pangle"

    return-object v0
.end method

.method public i()V
    .locals 2

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const-string v1, "load ad fail adSlot is null"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
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
