.class public Lcom/bytedance/msdk/dq/p/dq/p/dq;
.super Lcom/bytedance/msdk/api/p/dq/d/ia/ox;


# instance fields
.field private ia:Lcom/bytedance/msdk/dq/p/dq/dq;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/api/p/dq/d/ia/ox;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/dq/p/dq/p/d;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/msdk/dq/p/dq/p/d;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/api/p/dq/d/d/d;)V

    iput-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/p/dq;->ia:Lcom/bytedance/msdk/dq/p/dq/dq;

    return-void
.end method


# virtual methods
.method public dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/d/ox/ox;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/p/dq;->ia:Lcom/bytedance/msdk/dq/p/dq/dq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/msdk/dq/p/dq/dq;->dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/d/ox/ox;)V

    return-void
.end method

.method public dq(ZDILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZDI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq(ZDILjava/util/Map;)V

    move v1, p1

    move-object p1, p0

    iget-object v0, p1, Lcom/bytedance/msdk/dq/p/dq/p/dq;->ia:Lcom/bytedance/msdk/dq/p/dq/dq;

    if-eqz v0, :cond_0

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/dq/p/dq/dq;->dq(ZDILjava/util/Map;)V

    :cond_0
    return-void
.end method
