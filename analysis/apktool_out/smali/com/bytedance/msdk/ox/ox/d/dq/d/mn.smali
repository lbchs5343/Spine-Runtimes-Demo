.class public Lcom/bytedance/msdk/ox/ox/d/dq/d/mn;
.super Lcom/bytedance/msdk/ox/ox/d/dq/d/d;


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

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const p2, 0x13c6c

    invoke-static {p2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method
