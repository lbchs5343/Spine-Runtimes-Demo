.class public abstract Lcom/bytedance/msdk/core/dq/dq/d/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/dq/dq/dq/dq;


# instance fields
.field public d:Lcom/bytedance/msdk/core/no/no;

.field public dq:Lcom/bytedance/msdk/api/dq/d;

.field public ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field private p:Lcom/bytedance/msdk/core/dq/dq/dq/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->n()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dq(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->p:Lcom/bytedance/msdk/core/dq/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/core/dq/dq/dq/d;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract dq(Landroid/content/Context;)V
.end method

.method public final dq(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/core/dq/dq/dq/d;)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->p:Lcom/bytedance/msdk/core/dq/dq/dq/d;

    iput-object p4, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    iput-object p3, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq:Lcom/bytedance/msdk/api/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->p:Lcom/bytedance/msdk/core/dq/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/core/dq/dq/dq/d;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->p:Lcom/bytedance/msdk/core/dq/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/core/dq/dq/dq/d;->dq(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public dq()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->o()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    :cond_2
    return v1
.end method

.method public ox()Z
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->iw()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result v3

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/mn/dq/dq;->mn()I

    move-result v4

    if-ne v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v5}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_4

    :cond_3
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    :cond_4
    return v2

    :cond_5
    return v1
.end method
