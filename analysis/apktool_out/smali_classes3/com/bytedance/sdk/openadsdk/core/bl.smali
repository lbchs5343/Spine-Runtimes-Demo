.class public Lcom/bytedance/sdk/openadsdk/core/bl;
.super Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;
.implements Ljava/io/Serializable;


# instance fields
.field dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

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

    const p2, 0x3ffe7

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->ig()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->mn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->iw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->no()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->s()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->o()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->p()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->kk()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->ox()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->d()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->ia()Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->dq()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bl;->mp()Ljava/util/Map;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3ffd5
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d()Z

    move-result v0

    return v0
.end method

.method public dq()Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq()Lcom/bytedance/sdk/openadsdk/core/k/s;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq()Lcom/bytedance/sdk/openadsdk/core/k/s;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq()Lcom/bytedance/sdk/openadsdk/core/k/s;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq()Lcom/bytedance/sdk/openadsdk/core/k/s;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public ia()Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ia()Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ia()Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;

    move-result-object v0

    return-object v0
.end method

.method public ig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ig()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ig()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iw()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->iw()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->iw()Z

    move-result v0

    return v0
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->kk()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->kk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mp()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x1908

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->mp()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->mp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public no()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->no()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->no()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ox()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ox()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq()Lcom/bytedance/sdk/openadsdk/core/k/s;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->p()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq()Lcom/bytedance/sdk/openadsdk/core/k/s;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->s()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq()Lcom/bytedance/sdk/openadsdk/core/k/s;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k/s;->dq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
