.class public Lcom/bytedance/msdk/ox/ox/d/dq/d/ig;
.super Lcom/bytedance/msdk/ox/ox/d/dq/d/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;
    }
.end annotation


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/d;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    const/16 p1, 0xbb8

    iput p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig;->d:I

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/ig;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig;->d:I

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/ig;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig;->d:I

    return p1
.end method


# virtual methods
.method public d(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V
    .locals 1
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
    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;

    invoke-direct {v0, p0, p4}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/ig;Ljava/util/Map;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1, p3, p2, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;->dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/ox/ox/d/dq/d;)V

    return-void
.end method
