.class public Lcom/bytedance/msdk/ox/ox/dq/o;
.super Lcom/bytedance/msdk/ox/ox/dq/d;


# instance fields
.field private final ia:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final iw:Lcom/bytedance/msdk/core/no/d;

.field private final mn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/bytedance/msdk/ox/s/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/core/no/d;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/ox/s/dq/d;",
            "Lcom/bytedance/msdk/core/no/d;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/o;->ia:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/o;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/o;->iw:Lcom/bytedance/msdk/core/no/d;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/ox/dq/o;->mn:Ljava/util/List;

    return-void
.end method

.method private iw()Lcom/bytedance/msdk/core/no/no;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/o;->mn:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/no/no;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/o;->ia:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public d(Lcom/bytedance/msdk/core/no/no;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/ox/dq/o;->iw()Lcom/bytedance/msdk/core/no/no;

    move-result-object p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox()V

    return v1

    :cond_0
    const/4 v2, 0x2

    const-string v3, "TTMediationSDK"

    if-ne p2, v2, :cond_4

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/o;->ia:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/o;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/d/s;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/ox/dq/o;->iw()Lcom/bytedance/msdk/core/no/no;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox()V

    return v1

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/dq;->ia()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/o;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u5168\u90e8\u5e7f\u544a\u5b8c\u6210\u54cd\u5e94..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/o;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const/16 p2, 0x4e25

    invoke-static {p2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_3
    return v1

    :cond_4
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/dq;->s()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/o;->iw:Lcom/bytedance/msdk/core/no/d;

    invoke-static {p2}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u89e6\u53d1\u603b\u8d85\u65f6\u6216\u5168\u90e8\u4ee3\u7801\u4f4d\u54cd\u5e94\u7ed3\u675f.....totalTimeout\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/dq;->s()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  allWtfFinish:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d;->d:Lcom/bytedance/msdk/ox/s/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/dq/dq;->ia()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/o;->s:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/dq/d;->ox()V

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const/16 p2, 0x2713

    invoke-static {p2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    :goto_1
    return v1

    :cond_6
    return v0
.end method
