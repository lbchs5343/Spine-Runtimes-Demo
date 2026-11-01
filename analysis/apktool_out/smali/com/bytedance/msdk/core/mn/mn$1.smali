.class final Lcom/bytedance/msdk/core/mn/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/mn;->d()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/msdk/d/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/msdk/d/s;

    check-cast p2, Lcom/bytedance/msdk/d/s;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/mn$1;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/d/s;)I

    move-result p1

    return p1
.end method

.method public dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/d/s;)I
    .locals 7

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v2

    const/4 v4, -0x1

    cmpl-double v5, v0, v2

    if-lez v5, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v2

    const/4 v5, 0x1

    cmpg-double v6, v0, v2

    if-gez v6, :cond_1

    return v5

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v2

    cmpl-double p2, v0, v2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result p1

    if-ne p1, v5, :cond_2

    return v4

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
