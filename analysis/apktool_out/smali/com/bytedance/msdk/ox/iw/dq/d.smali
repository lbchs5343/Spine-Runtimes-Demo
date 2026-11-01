.class public Lcom/bytedance/msdk/ox/iw/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/iw/dq/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/d/s;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/d/s;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->jn()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {p2}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v1}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public dq(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/d/s;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/ox/s/dq/d;",
            "Lcom/bytedance/msdk/d/s;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/bytedance/msdk/ox/mn/s;->dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/d/s;)I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->mp()Lcom/bytedance/msdk/ox/s/dq/dq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/s/dq/dq;->iw(I)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/msdk/ox/iw/dq/d;->dq(Lcom/bytedance/msdk/d/s;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
