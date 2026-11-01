.class public Lcom/bytedance/msdk/dq/p/dq/p/d;
.super Lcom/bytedance/msdk/dq/p/dq/dq;


# instance fields
.field private ox:Lcom/bytedance/msdk/api/p/dq/d/ia/ox;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/msdk/api/p/dq/d/d/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/dq/p/dq/dq;-><init>(Ljava/lang/String;Lcom/bytedance/msdk/api/p/dq/d/d/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/dq;->d:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    instance-of p2, p1, Lcom/bytedance/msdk/api/p/dq/d/ia/ox;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/bytedance/msdk/api/p/dq/d/ia/ox;

    iput-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/p/d;->ox:Lcom/bytedance/msdk/api/p/dq/d/ia/ox;

    :cond_0
    return-void
.end method


# virtual methods
.method public dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
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

    const/16 p3, 0x201e

    if-ne p1, p3, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/p/dq/p/d;->ia()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p3, 0x201f

    if-ne p1, p3, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/p/dq/p/d;->kk()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p3, 0x1fbb

    if-ne p1, p3, :cond_2

    const/16 p1, 0x1f4e

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    const/16 p3, 0x1f4f

    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/dq/p/dq/p/d;->dq(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 p3, 0x1fab

    if-ne p1, p3, :cond_3

    const/16 p1, 0x206f

    const-class p3, Ljava/util/List;

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/dq/p/dq/p/d;->dq(Ljava/util/List;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/p/d;->ox:Lcom/bytedance/msdk/api/p/dq/d/ia/ox;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/msdk/api/p/dq/d/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/d/ia/ox;->dq(Lcom/bytedance/msdk/api/p/dq/d/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/api/proto/Bridge;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/p/d;->ox:Lcom/bytedance/msdk/api/p/dq/d/ia/ox;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    new-instance v2, Lcom/bytedance/msdk/dq/p/dq/p/ox;

    iget-object v3, p0, Lcom/bytedance/msdk/dq/p/dq/dq;->d:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    invoke-direct {v2, v3, v1}, Lcom/bytedance/msdk/dq/p/dq/p/ox;-><init>(Lcom/bytedance/msdk/api/p/dq/d/d/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/p/d;->ox:Lcom/bytedance/msdk/api/p/dq/d/ia/ox;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/ox;->dq(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public ia()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/p/d;->ox:Lcom/bytedance/msdk/api/p/dq/d/ia/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/ox;->iw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kk()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/p/d;->ox:Lcom/bytedance/msdk/api/p/dq/d/ia/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/ox;->s()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
