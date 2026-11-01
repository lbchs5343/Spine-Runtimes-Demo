.class public Lcom/bytedance/msdk/ox/p/s;
.super Lcom/bytedance/msdk/ox/p/d;

# interfaces
.implements Lcom/bytedance/msdk/core/s/d/ox;


# instance fields
.field private d:Lcom/bytedance/msdk/core/s/d/p$ox;

.field private final dq:I

.field private jy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/d;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/bytedance/msdk/ox/p/s;->dq:I

    return-void
.end method

.method private dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/core/no/d;
    .locals 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v0

    const-string p2, "\u7b5b\u9009\u9884\u7f13\u5b58 ecpm "

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "TMe"

    invoke-static {v2, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->f()Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/core/no/no;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->ce()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v4

    cmpl-double v6, v4, v0

    if-lez v6, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/core/no/d;->d(Ljava/util/List;)V

    return-object p1

    :cond_3
    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/core/no/d;->dq(Ljava/util/List;)V

    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public d(Lcom/bytedance/msdk/api/dq;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/bytedance/msdk/ox/p/d;->d(Lcom/bytedance/msdk/api/dq;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/s;->d:Lcom/bytedance/msdk/core/s/d/p$ox;

    if-eqz v0, :cond_2

    const/16 v1, 0x4e25

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    const/16 v2, 0x2713

    if-ne p1, v2, :cond_0

    const/16 v1, 0x2713

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v1, v3}, Lcom/bytedance/msdk/core/s/d/p$ox;->dq(Ljava/lang/String;ZILjava/util/List;)V

    :cond_2
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/s/d/p$ox;)V
    .locals 5

    iput-object p3, p0, Lcom/bytedance/msdk/ox/p/s;->d:Lcom/bytedance/msdk/core/s/d/p$ox;

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/p/d;->dq(Lcom/bytedance/msdk/api/dq/d;)V

    iget-object p3, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Z)V

    iget-object p3, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p3, v0}, Lcom/bytedance/msdk/ox/s/dq/d;->p(Z)V

    iget-object p3, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p3}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/bytedance/msdk/api/dq/d;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/ox/p/s;->dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/core/no/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/api/dq/d;->iw(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p1, p2}, Lcom/bytedance/msdk/core/ox/ox;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/core/no/d;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    const/4 p2, 0x0

    const-string p3, "TTMediationSDK"

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\u672a\u53d1\u8d77\uff0cmRitConfig\u4e3anull"

    invoke-static {p3, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/s;->d:Lcom/bytedance/msdk/core/s/d/p$ox;

    if-eqz p1, :cond_5

    iget-object p3, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-interface {p1, p3, v0, v0, p2}, Lcom/bytedance/msdk/core/s/d/p$ox;->dq(Ljava/lang/String;ZILjava/util/List;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->j()J

    move-result-wide v1

    long-to-double v1, v1

    iget-object p2, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->ox()D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-long v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/msdk/core/no/d;->iw(J)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->wn()J

    move-result-wide v1

    long-to-double v1, v1

    iget-object p2, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->d()D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-long v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/msdk/core/no/d;->s(J)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/core/no/d;->d(Z)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/core/no/d;->dq(Z)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/s;->jy:Ljava/util/List;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/p/d;->q:Ljava/util/Comparator;

    invoke-static {p1, p2}, Lcom/bytedance/msdk/ia/ir;->dq(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Lcom/bytedance/msdk/dq/s/ox;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\uff0c\u8fc7\u6ee4\u540e\u7684waterfall\uff1a"

    invoke-static {p3, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/s;->jy:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/msdk/core/no/no;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "waterfall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adnSlotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loadSort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showSort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eCpm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/s;->no()Lcom/bytedance/msdk/ox/ox/dq/mn;

    return-void

    :cond_4
    :goto_1
    const-string p1, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\u672a\u53d1\u8d77\uff0c\u8fc7\u6ee4\u540e\u7684waterfall\u4e3a\u7a7a"

    invoke-static {p3, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/s;->d:Lcom/bytedance/msdk/core/s/d/p$ox;

    if-eqz p1, :cond_5

    iget-object p3, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-interface {p1, p3, v0, v0, p2}, Lcom/bytedance/msdk/core/s/d/p$ox;->dq(Ljava/lang/String;ZILjava/util/List;)V

    :cond_5
    return-void
.end method

.method public kk()V
    .locals 5

    invoke-super {p0}, Lcom/bytedance/msdk/ox/p/d;->kk()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/s;->d:Lcom/bytedance/msdk/core/s/d/p$ox;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/bytedance/msdk/core/s/d/p$ox;->dq(Ljava/lang/String;ZILjava/util/List;)V

    :cond_1
    return-void
.end method

.method public no()Lcom/bytedance/msdk/ox/ox/dq/mn;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/bytedance/msdk/ox/p/s;->dq:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/kk;

    invoke-direct {v1}, Lcom/bytedance/msdk/ox/ox/dq/kk;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/o;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/p/s;->jy:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/msdk/ox/ox/dq/o;-><init>(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/core/no/d;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/d;

    invoke-direct {v1}, Lcom/bytedance/msdk/ox/ox/dq/d;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/mn;

    invoke-direct {v1, v0}, Lcom/bytedance/msdk/ox/ox/dq/mn;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/ox/ox/dq/mn;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)V

    return-object v1
.end method
