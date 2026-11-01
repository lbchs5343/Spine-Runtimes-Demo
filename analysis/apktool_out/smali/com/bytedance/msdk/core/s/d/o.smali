.class public Lcom/bytedance/msdk/core/s/d/o;
.super Lcom/bytedance/msdk/core/s/d/ia;


# instance fields
.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/s/d/ia;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/core/s/d/o;->d:Ljava/util/HashSet;

    return-void
.end method

.method private no()Lcom/bytedance/msdk/core/no/no;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ia;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/core/no/no;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/s/d/o;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->mp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/core/s/d/o;->d:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/ox;->mp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/d/s;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/bytedance/msdk/core/s/d/o;->no()Lcom/bytedance/msdk/core/no/no;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/s/d/ia;->n_()V

    :cond_2
    return-void
.end method

.method public dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/ox;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/core/no/ox;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/core/mn/iw;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/ox;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/s/d/o;->no()Lcom/bytedance/msdk/core/no/no;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/d/s;

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/s/d/ia;->n_()V

    :cond_0
    return-void
.end method

.method public ox()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method
