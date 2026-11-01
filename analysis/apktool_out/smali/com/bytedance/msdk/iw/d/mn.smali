.class public Lcom/bytedance/msdk/iw/d/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/iw/d/mn;->dq:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;

    return-void
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/mn;->dq:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;->s()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/mn;->dq:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;->p()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/mn;->dq:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;->dq()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/mn;->dq:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;->d()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/mn;->dq:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;->ox()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x211c

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/mn;->ox()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v1, 0x211d

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/mn;->p()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v1, 0x211e

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/mn;->s()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const/16 v1, 0x1f5b

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/mn;->dq()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const/16 v1, 0x1f5c

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/mn;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method
