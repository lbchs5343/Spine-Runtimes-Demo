.class public Lcom/bytedance/msdk/dq/p/dq/d;
.super Lcom/bytedance/msdk/api/p/dq/d/iw/dq;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private iw:Landroid/content/Context;

.field private ox:Lcom/bytedance/msdk/iw/d/ox;

.field private p:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field private s:Lcom/bykv/vk/openvk/api/proto/Bridge;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->l()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/ox;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/msdk/iw/d/ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/d;->ox:Lcom/bytedance/msdk/iw/d/ox;

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/d/ox;->dq()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/d;->p:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-void
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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

    const/16 v0, 0x2018

    if-ne p1, v0, :cond_0

    const/16 p1, 0x20d2

    const-class v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {p2, p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    iput-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/d;->s:Lcom/bykv/vk/openvk/api/proto/Bridge;

    goto :goto_0

    :cond_0
    const/16 v0, 0x201b

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->ox()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x201c

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->p()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x204e

    if-ne p1, v0, :cond_3

    const/16 p1, 0x1f89

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v0

    const/16 p1, 0x216d

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->d:I

    iput-wide v0, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->dq:J

    :cond_3
    :goto_0
    invoke-static {p3}, Lcom/bytedance/msdk/core/cd/dq;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "0.0"

    return-object v0
.end method

.method public d(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x1f49

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v1, 0x1f8b

    invoke-virtual {v0, v1, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/p/dq/d;->s:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    const/16 v0, 0x2019

    invoke-interface {v1, v0, p1, p2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->d(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/d;->s:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x201a

    const-class v3, Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public dq(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x1f49

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v1, 0x1f8b

    invoke-virtual {v0, v1, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/p/dq/d;->s:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    const/16 v0, 0x1fcb

    invoke-interface {v1, v0, p1, p2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->dq(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/msdk/api/p/dq/d/ox/d;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/p/dq/d/ox/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/d;->iw:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->l()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    const/16 v1, 0x1f99

    invoke-virtual {p1, v1, v0}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v0, 0x2161

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/p/dq/d/ox/d;->dq()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p2, 0x20d0

    invoke-virtual {p1, p2, p3}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p2, 0x20d1

    invoke-virtual {p1, p2, p0}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p2, 0x1fa2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lg/hat;->i(IZ)V

    iget-object p2, p0, Lcom/bytedance/msdk/dq/p/dq/d;->p:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {p1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const-class p3, Ljava/lang/Void;

    const/16 v0, 0x1fa4

    invoke-interface {p2, v0, p1, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
