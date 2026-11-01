.class public Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;
.super Lcom/bytedance/sdk/openadsdk/f/d/ox/d;


# instance fields
.field private final d:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lg/hat;->b:Lg/cpo;

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method

.method private static dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 3

    if-eqz p0, :cond_1

    const v0, 0x7e09bc

    const-class v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {p0, v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v0, :cond_0

    const v2, 0x3f7ba

    :try_start_0
    invoke-interface {p0, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bykv/vk/openvk/api/proto/Bridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/String;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    invoke-static {p0}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object p0

    const v0, 0x3f7b6

    invoke-virtual {p0, v0, p1}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {p0}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    return-object p0
.end method

.method public static final dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p0

    return-object p0
.end method

.method public static final dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 9

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    return-object p0

    :cond_0
    const v1, 0x3f7a1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7a2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7a3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->iw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7a4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7a5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ia()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const v1, 0x3f7a6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kk()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const v1, 0x3f7a7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->o()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kk()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->o()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result v1

    const v2, 0x3f7a8

    invoke-virtual {v0, v2, v1}, Lg/hat;->l(IF)V

    const v1, 0x3f7a9

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ig()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->l(IF)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->l(IF)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ig()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->l(IF)V

    const v1, 0x3f7aa

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mp()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->i(IZ)V

    const v1, 0x3f7ab

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->q()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->i(IZ)V

    const v1, 0x27ac4c

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->jy()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->o(II)V

    const v1, 0x3f7ad

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7ae

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->fw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7af

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->cd()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->o(II)V

    const v1, 0x3f7b0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->gh()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->o(II)V

    const v1, 0x3f7b1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->r()[I

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->m(ILjava/lang/Object;)V

    const v1, 0x3f7b2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->i()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->o(II)V

    const v1, 0x3f7b3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->le()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7b4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->o(II)V

    const v1, 0x3f7b5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7b6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7b7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kx()Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->m(ILjava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v8, :cond_1

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-object v1, v8

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v3

    const v4, 0x7e09bc

    invoke-virtual {v0, v4, v3}, Lg/hat;->m(ILjava/lang/Object;)V

    const-class v3, Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;

    const v4, 0x3f7bb

    invoke-interface {v1, v4, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    :cond_3
    const v1, 0x3f7b8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7b9

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ji()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->o(II)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result p0

    invoke-virtual {v0, v2, p0}, Lg/hat;->l(IF)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const p0, 0x7e09bd

    invoke-virtual {v0, p0, p1}, Lg/hat;->n(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v1, 0x7e09bd

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method
