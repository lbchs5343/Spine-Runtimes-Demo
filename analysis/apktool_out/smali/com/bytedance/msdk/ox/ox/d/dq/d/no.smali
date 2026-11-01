.class public Lcom/bytedance/msdk/ox/ox/d/dq/d/no;
.super Lcom/bytedance/msdk/ox/ox/d/dq/d/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/msdk/api/dq/d;

.field private ox:Lcom/bytedance/msdk/ox/s/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/d;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/ox/ox/d/dq/d/no;)Lcom/bytedance/msdk/ox/s/d/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;->d:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method


# virtual methods
.method public d(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/ox/s/d/d;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;->d:Lcom/bytedance/msdk/api/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;->ox:Lcom/bytedance/msdk/ox/s/d/d;

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no;->ox()V

    return-void

    :cond_0
    new-instance p2, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;

    invoke-direct {p2, p0, p4}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/no;Ljava/util/Map;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    invoke-static {p2, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/no$dq;Landroid/content/Context;)V

    return-void
.end method

.method public ox()V
    .locals 2

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const-string v1, "load ad fail adSlot is null"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method
