.class Lcom/bytedance/msdk/core/s/dq/dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/s/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/msdk/core/s/d/ig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/s/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/s/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/s/dq/dq$4;->dq:Lcom/bytedance/msdk/core/s/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/msdk/core/s/d/ig;

    check-cast p2, Lcom/bytedance/msdk/core/s/d/ig;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/s/dq/dq$4;->dq(Lcom/bytedance/msdk/core/s/d/ig;Lcom/bytedance/msdk/core/s/d/ig;)I

    move-result p1

    return p1
.end method

.method public dq(Lcom/bytedance/msdk/core/s/d/ig;Lcom/bytedance/msdk/core/s/d/ig;)I
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz p1, :cond_1

    iget-object v0, p2, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->z()J

    move-result-wide v0

    long-to-int p1, v0

    iget-object p2, p2, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->z()J

    move-result-wide v0

    long-to-int p2, v0

    sub-int/2addr p1, p2

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
