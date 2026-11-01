.class public Lcom/bytedance/msdk/ox/ox/d/dq/d/iw;
.super Lcom/bytedance/msdk/ox/ox/d/dq/d/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/ox/ox/d/dq/d/iw$dq;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/d;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-void
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

    if-nez p3, :cond_0

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string p2, "load ad fail adSlot is null"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    new-instance p4, Lcom/bytedance/msdk/ox/ox/d/dq/d/iw$dq;

    invoke-direct {p4, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/iw$dq;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/iw;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p4, p1, p3, p2, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/iw$dq;->dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/ox/ox/d/dq/d;)V

    return-void
.end method
