.class public abstract Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;
.super Lcom/bytedance/msdk/ox/ox/d/dq/d;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field protected d:Lcom/bytedance/msdk/api/p/dq/d/ox/ox;

.field protected ia:I

.field protected iw:Z

.field private kk:Ljava/lang/String;

.field protected mn:I

.field private no:Lcom/bytedance/msdk/api/dq/d;

.field private o:Ljava/lang/String;

.field protected ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field protected p:Lcom/bytedance/msdk/ox/s/d/d;

.field protected s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/msdk/ox/dq/d;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    new-instance p2, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->s:Ljava/util/Map;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->iw:Z

    iput p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->mn:I

    iput p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ia:I

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/ValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/16 v0, 0x201d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x20d5

    const-class v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {p2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    goto :goto_0

    :cond_0
    const/16 v0, 0x1fc9

    const-string v1, "TTMediationSDK"

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->mn()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Adn custom loader : getAdm = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/16 v0, 0x2020

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ia()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Adn custom loader : getExtraDataNoParse = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const/16 v0, 0x2022

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->kk()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Adn custom loader : getBiddingType = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    const/16 v0, 0x2023

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    const/16 v0, 0x1f8b

    const-class v2, Ljava/util/Map;

    invoke-interface {p2, v0, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "Adn custom loader : setExtraInfo map ="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Ljava/util/Map;)V

    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V
    .locals 6
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

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->p:Lcom/bytedance/msdk/ox/s/d/d;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->no:Lcom/bytedance/msdk/api/dq/d;

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/d/d;->le()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/d/d;->q()I

    move-result v3

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/d/d;->jy()I

    move-result v4

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/d/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->d:Lcom/bytedance/msdk/api/p/dq/d/ox/ox;

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/msdk/iw/d/dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq/d/iw/dq;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->dq()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->kk:Ljava/lang/String;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p2

    const/16 p4, 0x1f4b

    invoke-virtual {p2, p4, p0}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/dq;->dq()I

    move-result p4

    const/16 v0, 0x170c

    const/16 v1, 0x1f49

    if-lt p4, v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/dq;->dq(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    :goto_1
    const/16 p1, 0x1f4a

    iget-object p4, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->o:Ljava/lang/String;

    invoke-virtual {p2, p1, p4}, Lg/hat;->n(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->d:Lcom/bytedance/msdk/api/p/dq/d/ox/ox;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/ox/ox;->dq()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    const/16 p4, 0x2162

    invoke-virtual {p2, p4, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->j()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 p1, 0x2164

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->j()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lg/hat;->m(ILjava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/mp/dq;->mn()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const/16 p4, 0x1faa

    invoke-interface {p1, p4, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string p2, "Adn custom class loader is null"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public final d(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->iw:Z

    const-string v1, "TTMediationSDK"

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->mn:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->mn:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;->dq()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "\u81ea\u5b9a\u4e49Adapter show\u65b9\u6cd5\u56de\u8c03\u6b21\u6570\u9700\u8981\u5c0f\u4e8e2\u6b21"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "\u81ea\u5b9a\u4e49Adapter show\u65b9\u6cd5\u56de\u8c03\u5fc5\u987b\u7531GroMore\u89e6\u53d1show\u65f6\u624d\u4f1a\u751f\u6548"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/ValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->kk:Ljava/lang/String;

    return-object p1
.end method

.method public dq(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;->dq()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "TTMediationSDK"

    const-string v0, "\u81ea\u5b9a\u4e49Adapter \u8c03\u7528\u9519\u8bef\u9700\u8981\u5728load\u6210\u529f\u4e4b\u540e\u624d\u53ef\u4ee5\u8c03\u7528"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Ljava/util/List;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;DLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/d/s;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->kk()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_0
    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->s:Ljava/util/Map;

    invoke-interface {p2, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->s:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/d/s;->p(Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->s:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/d/s;->ox(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->p:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->kx()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/d/s;->jy(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Ljava/util/List;)V

    return-void
.end method

.method public dq(Ljava/util/Map;)V
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

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public dq(ZDILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZDI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x20d6

    invoke-virtual {v0, v1, p1}, Lg/hat;->i(IZ)V

    const/16 p1, 0x20d7

    invoke-virtual {v0, p1, p2, p3}, Lg/hat;->j(ID)V

    const/16 p1, 0x20d8

    invoke-virtual {v0, p1, p4}, Lg/hat;->o(II)V

    const/16 p1, 0x1f8b

    invoke-virtual {v0, p1, p5}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const/16 p4, 0x2021

    invoke-interface {p1, p4, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public ia()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->p:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ce()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ig()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x1fd4

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public iw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->iw:Z

    return-void
.end method

.method public kk()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->p:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->gh()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->p:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public mp()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x1fad

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public no()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x1fd5

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public o()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-class v2, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    const/16 v3, 0x1fb9

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    :cond_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->ADN_NO_READY_API:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public final ox(Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;)V
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ia:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ia:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;->dq()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "TTMediationSDK"

    const-string v0, "\u81ea\u5b9a\u4e49Adapter click\u65b9\u6cd5\u56de\u8c03\u6b21\u6570\u9700\u8981\u5c0f\u4e8e60\u6b21"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
