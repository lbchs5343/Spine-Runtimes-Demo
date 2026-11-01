.class Lcom/bytedance/msdk/core/kk/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/kk/mn;->no()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/msdk/core/kk/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/kk/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/kk/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/kk/mn$1;->dq:Lcom/bytedance/msdk/core/kk/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/msdk/core/kk/s;

    check-cast p2, Lcom/bytedance/msdk/core/kk/s;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/kk/mn$1;->dq(Lcom/bytedance/msdk/core/kk/s;Lcom/bytedance/msdk/core/kk/s;)I

    move-result p1

    return p1
.end method

.method public dq(Lcom/bytedance/msdk/core/kk/s;Lcom/bytedance/msdk/core/kk/s;)I
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/s;->d()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/kk/s;->d()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-lez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
