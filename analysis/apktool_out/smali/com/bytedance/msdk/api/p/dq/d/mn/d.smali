.class public abstract Lcom/bytedance/msdk/api/p/dq/d/mn/d;
.super Lcom/bytedance/msdk/api/p/dq/d/d/ox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/api/p/dq/d/d/ox;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/api/p/dq/d/mn/d;)Lcom/bytedance/msdk/api/p/dq/d/d/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/api/p/dq/d/mn/d;)Lcom/bytedance/msdk/api/p/dq/d/d/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/api/p/dq/d/mn/d;)Lcom/bytedance/msdk/api/p/dq/d/d/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/api/p/dq/d/mn/d;)Lcom/bytedance/msdk/api/p/dq/d/d/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/api/p/dq/d/mn/d;)Lcom/bytedance/msdk/api/p/dq/d/d/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    return-object p0
.end method


# virtual methods
.method public d(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/d/ox/ox;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/msdk/api/p/dq/d/mn/d;->dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/d/ox/ox;)V

    return-void
.end method

.method public dq(DLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->no()Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_2

    const-string v0, "\u81ea\u5b9a\u4e49Adapter callLoadSuccess"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/d/mn/dq;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/p/dq/d/mn/dq;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->mn:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq(I)V

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->q()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq(D)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    invoke-virtual {p1, p3}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->d(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    invoke-virtual {p1, p0}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox:Lcom/bytedance/msdk/dq/dq;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/dq;)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u6210\u529f\u6216\u8005\u5931\u8d25\u56de\u8c03\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/d/ox/ox;)V
.end method

.method public final dq(Lcom/bytedance/msdk/api/p/dq/d/dq;)V
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ig()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox:Lcom/bytedance/msdk/dq/dq;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    const v2, 0xbf6a

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/dq;->dq()I

    move-result v4

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/dq;->d()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "TTMediationSDK"

    const-string v0, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u6210\u529f\u6216\u8005\u5931\u8d25\u56de\u8c03\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->mn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final ia()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/d/mn/d$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/p/dq/d/mn/d$4;-><init>(Lcom/bytedance/msdk/api/p/dq/d/mn/d;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public final iw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/d/mn/d$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/p/dq/d/mn/d$2;-><init>(Lcom/bytedance/msdk/api/p/dq/d/mn/d;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public final kk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/d/mn/d$5;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/p/dq/d/mn/d$5;-><init>(Lcom/bytedance/msdk/api/p/dq/d/mn/d;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public final mn()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/d/mn/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/p/dq/d/mn/d$3;-><init>(Lcom/bytedance/msdk/api/p/dq/d/mn/d;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p:Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/d/mn/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/p/dq/d/mn/d$1;-><init>(Lcom/bytedance/msdk/api/p/dq/d/mn/d;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V

    :cond_0
    return-void
.end method
