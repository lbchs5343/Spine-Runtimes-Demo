.class public abstract Lcom/bytedance/msdk/ox/p/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/d/dq/dq;


# instance fields
.field private final dq:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation
.end field

.field protected ia:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile ig:Z

.field protected iw:Lcom/bytedance/msdk/api/dq/d;

.field protected kk:Lcom/bytedance/msdk/dq/d/iw;

.field protected mn:Lcom/bytedance/msdk/core/no/d;

.field protected mp:Lcom/bytedance/msdk/api/p/dq/d;

.field protected no:I

.field protected o:Z

.field protected ox:Lcom/bytedance/msdk/ox/s/dq/d;

.field protected p:Lcom/bytedance/msdk/d/s;

.field protected final q:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation
.end field

.field protected s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/p/d;->o:Z

    iput v0, p0, Lcom/bytedance/msdk/ox/p/d;->no:I

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/p/d;->ig:Z

    new-instance v0, Lcom/bytedance/msdk/ox/p/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/p/d$1;-><init>(Lcom/bytedance/msdk/ox/p/d;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->dq:Ljava/util/Comparator;

    new-instance v0, Lcom/bytedance/msdk/ox/p/d$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/p/d$2;-><init>(Lcom/bytedance/msdk/ox/p/d;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->q:Ljava/util/Comparator;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ia:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/kk/mp;->ia(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_0

    const-string p0, "--==--: \u547d\u4e2d\u5c55\u793a\u9891\u6b21"

    invoke-static {v1, p0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0xcd169

    return p0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/kk/mp;->ox(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "--==--: \u547d\u4e2d\u5c55\u793a\u95f4\u9694"

    invoke-static {v1, p0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0xcd16a

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private dq(Lcom/bytedance/msdk/core/no/no;)Lcom/bytedance/msdk/d/s;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/kk;->ox()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/d/s;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_4
    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/d/s;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v3

    :cond_6
    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/d/s;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->ip()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->vw()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->vw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    return-object v3

    :cond_9
    return-object v0
.end method

.method private ox(Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/d/s;
    .locals 10

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/high16 v3, 0x10000000000000L

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v7

    cmpg-double v9, v5, v7

    if-gez v9, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v5

    cmpl-double v7, v5, v3

    if-lez v7, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v2

    move-wide v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private ox(Ljava/util/List;)Lcom/bytedance/msdk/d/s;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)",
            "Lcom/bytedance/msdk/d/s;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/d/s;

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v1, 0x10000000000000L

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v4

    cmpl-double v6, v4, v1

    if-lez v6, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v0

    move-wide v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static ox(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/ia/le;

    invoke-direct {v0}, Lcom/bytedance/msdk/ia/le;-><init>()V

    const-string v1, "prime_rit"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private p(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->ir()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->n()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->u()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    new-instance v4, Lcom/bytedance/msdk/core/no/no;

    invoke-direct {v4}, Lcom/bytedance/msdk/core/no/no;-><init>()V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/no;->s(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/no;->o(I)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/no;->ox(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->ia()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/no;->p(I)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->mn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/no;->dq(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/no;->no(I)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/no;->ig(I)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/no;->kk(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/no;->iw(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/no;->d(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->kx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/no;->mn(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/no;->ia(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bytedance/msdk/core/no/no;->dq(Lcom/bytedance/msdk/core/no/kk;)V

    invoke-direct {p0, v4}, Lcom/bytedance/msdk/ox/p/d;->dq(Lcom/bytedance/msdk/core/no/no;)Lcom/bytedance/msdk/d/s;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->sy()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bytedance/msdk/core/no/no;->iw(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->q:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->dq:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-object p1
.end method

.method private p(Lcom/bytedance/msdk/d/s;)V
    .locals 19

    move-object/from16 v0, p1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v0, :cond_b

    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    if-nez v8, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v8}, Lcom/bytedance/msdk/api/dq/d;->er()Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->jv()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->xx()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ip()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v8

    const-string v9, "baidu"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/msdk/core/f/ox;->cv()Z

    move-result v9

    const-string v10, "bid_t"

    const-wide/16 v11, 0x3e8

    const-string v13, "ad_time"

    const-string v14, "ad_t"

    const-string v15, "adn"

    const/16 v16, 0xa

    const-string v3, "ecpm"

    if-eqz v9, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/msdk/ox/p/d;->ox(Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v5

    double-to-int v5, v5

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/msdk/core/f/ox;->dc()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/msdk/ox/p/d;->ox(Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/d/s;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v5

    double-to-int v5, v5

    :cond_5
    move-wide/from16 v17, v11

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v11

    double-to-int v6, v11

    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    const/16 v11, 0x15

    invoke-virtual {v9, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0xa

    const-string v11, " secondAdEcpm ="

    const-string v12, " randomNumber = "

    const-string v7, "-------baidu_bid_win firstAdEcpm = "

    invoke-static {v6, v5, v7, v11, v12}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "TTMediationSDK"

    invoke-static {v11, v7}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v6, v9

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v17

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    move-wide/from16 v17, v11

    invoke-virtual {v8, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v17

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ks"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/f/ox;->jw()Z

    move-result v1

    const-string v2, "lossBidEcpm"

    const-string v3, "bidEcpm"

    if-eqz v1, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/msdk/ox/p/d;->ox(Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v3

    goto :goto_0

    :cond_8
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    invoke-virtual {v8, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v0, v8}, Lcom/bytedance/msdk/d/s;->d(Ljava/util/Map;)V

    :cond_b
    :goto_2
    return-void
.end method


# virtual methods
.method public cd()Lcom/bytedance/msdk/api/ox;
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->wp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v2, v0, v1}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Z)Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public d(Ljava/util/List;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d(Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/bytedance/msdk/d/s;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->ia(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/d/s;->o(I)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->no(I)V

    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->p()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->er()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->kk:Lcom/bytedance/msdk/dq/d/iw;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ia:Ljava/lang/ref/SoftReference;

    invoke-static {v0, p1, p0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Ljava/lang/ref/SoftReference;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/ox/d/dq/dq;)Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->bl()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->cd()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "allow_show_close_btn"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->mp:Lcom/bytedance/msdk/api/p/dq/d;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->op()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ia/r;->dq([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;I)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/d/s;Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;)V
    .locals 20

    move-object/from16 v1, p3

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xcb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz p2, :cond_a

    move-object/from16 v10, p0

    iget-object v11, v10, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v11, :cond_a

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v11}, Lcom/bytedance/msdk/api/dq/d;->er()Z

    move-result v11

    if-nez v11, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v12, "bidding_lose_reason"

    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v1

    const-string v12, "baidu"

    invoke-static {v1, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/f/ox;->cv()Z

    move-result v1

    const-string v12, "is_c"

    const-string v13, "is_s"

    const-string v14, "reason"

    const-string v15, "bid_t"

    const-wide/16 v16, 0x3e8

    const-string v7, "ad_time"

    move/from16 p3, v1

    const-string v1, "ad_t"

    const-string v10, "adn"

    const-string v0, "ecpm"

    if-eqz p3, :cond_4

    move-object/from16 v19, v9

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long v0, v0, v16

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v19

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    move-object/from16 v0, p2

    goto/16 :goto_4

    :cond_4
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/msdk/core/f/ox;->dc()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v19, v9

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v8

    double-to-int v8, v8

    move/from16 v18, v8

    goto :goto_2

    :cond_5
    const/16 v18, 0x0

    :goto_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long v0, v0, v16

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v19

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-virtual {v11, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long v0, v0, v16

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/d/s;->wi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ks"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->jw()Z

    move-result v0

    const-string v1, "other"

    const-string v2, "adnName"

    const-string v3, "adType"

    const-string v4, "bidEcpm"

    const-string v5, "failureCode"

    if-eqz v0, :cond_9

    invoke-virtual {v11, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v5

    goto :goto_3

    :cond_8
    const-wide/16 v5, 0x0

    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v11, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :goto_4
    invoke-virtual {v0, v11}, Lcom/bytedance/msdk/d/s;->dq(Ljava/util/Map;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/bytedance/msdk/core/p/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/ox/p/d;->p(Lcom/bytedance/msdk/d/s;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/d;->ox(Ljava/util/List;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/d/s;

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-ne v4, v2, :cond_3

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;->LOW_PRICE:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;

    invoke-virtual {p0, v1, v2, v3}, Lcom/bytedance/msdk/ox/p/d;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/d/s;Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/api/dq;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/no/no;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public fw()Lcom/bytedance/msdk/api/ox;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/ia/cd;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Z)Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public gh()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->jo()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public h_()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->iw()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->kx()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/bytedance/msdk/core/mn/d;->dq(Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_7

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, -0x64

    const/4 v9, 0x1

    if-ne v7, v8, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-ge v7, v8, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    if-nez v4, :cond_a

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->op()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->jv()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->xx()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_9
    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bytedance/msdk/core/no/d;->iw(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/no;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    if-nez v5, :cond_b

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/no/no;

    if-nez v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->n()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->mn:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->op()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_e
    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->dq:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    :cond_f
    :goto_5
    invoke-direct {p0, v0}, Lcom/bytedance/msdk/ox/p/d;->p(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_10
    :goto_6
    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public jy()Z
    .locals 4

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/ia/e;->ox(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/ia/e;->d(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "setting \u4e0b\u53d1\u662f\u5426\u4e3a\u5f31\u7f51\u6267\u884c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/f/ox;->ig()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u5f53\u524d\u7f51\u7edc\u73af\u5883\uff1a2G-type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",3G-type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TTMediationSDK"

    invoke-static {v3, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/f/ox;->ig()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public kk()V
    .locals 0

    return-void
.end method

.method public mp()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/ox;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->wp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Z)Lcom/bytedance/msdk/api/ox;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public no()Lcom/bytedance/msdk/ox/ox/dq/mn;
    .locals 4

    const-string v0, "TTMediationSDK"

    const-string v1, "ad load start....."

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->op()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-static {v0}, Lcom/bytedance/msdk/ia/r;->dq([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3, v1, v0, v2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;I)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/no;

    invoke-direct {v1}, Lcom/bytedance/msdk/ox/ox/dq/no;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/s;

    invoke-direct {v1}, Lcom/bytedance/msdk/ox/ox/dq/s;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/ox;

    invoke-direct {v1}, Lcom/bytedance/msdk/ox/ox/dq/ox;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/ig;

    invoke-direct {v1}, Lcom/bytedance/msdk/ox/ox/dq/ig;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/iw;

    invoke-direct {v1}, Lcom/bytedance/msdk/ox/ox/dq/iw;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/ia;

    invoke-direct {v1}, Lcom/bytedance/msdk/ox/ox/dq/ia;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/d;

    invoke-direct {v1}, Lcom/bytedance/msdk/ox/ox/dq/d;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/p;

    invoke-direct {v1}, Lcom/bytedance/msdk/ox/ox/dq/p;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/msdk/ox/ox/dq/mn;

    invoke-direct {v1, v0}, Lcom/bytedance/msdk/ox/ox/dq/mn;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/ox/ox/dq/mn;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)V

    return-object v1
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public q()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/ox;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->wp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->r()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Z)Lcom/bytedance/msdk/api/ox;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public r()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->dq()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/d;->ox(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->bu()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->bu()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/ia/cd;->dq()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Z)Lcom/bytedance/msdk/api/ox;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/ia/cd;->dq(Lcom/bytedance/msdk/api/ox;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "get_show_ecpm_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method
