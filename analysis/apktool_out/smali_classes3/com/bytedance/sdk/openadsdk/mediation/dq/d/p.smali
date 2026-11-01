.class public abstract Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
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

    const p3, 0x41ec8

    if-eq p1, p3, :cond_4

    const p3, 0x422c3

    const-class v0, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, p3, :cond_3

    const p3, 0x422ca

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    const/4 v3, 0x3

    const-class v4, Landroid/content/Context;

    const-class v5, Lcom/bykv/vk/openvk/api/proto/Bridge;

    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object v6, p0

    goto/16 :goto_2

    :pswitch_0
    invoke-interface {p2, v2, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {p2, v1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-interface {p2, v3, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/dq;

    invoke-interface {p2, p3, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v2, p2}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p2, v2, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {p2, v1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-interface {p2, v3, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;

    invoke-interface {p2, p3, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v2, p2}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/p;

    invoke-interface {p2, v2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/p;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/p;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-class p2, Ljava/lang/Integer;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq(I)V

    goto :goto_0

    :pswitch_4
    invoke-interface {p2, v2, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-class p3, [I

    invoke-interface {p2, v1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq(Landroid/content/Context;[I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {p2, v2, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-interface {p2, v2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V

    goto/16 :goto_0

    :pswitch_7
    const-class p1, Ljava/lang/String;

    invoke-interface {p2, v2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-interface {p2, v2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;)V

    goto/16 :goto_0

    :pswitch_9
    const-class p1, Landroid/app/Activity;

    invoke-interface {p2, v2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    const-class p1, Ljava/util/List;

    invoke-interface {p2, v1, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/s;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/s;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v9

    invoke-interface {p2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v10

    const/4 p1, 0x4

    invoke-interface {p2, p1, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v11, p1

    check-cast v11, Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq(Landroid/app/Activity;Ljava/util/List;IILcom/bykv/vk/openvk/api/proto/Bridge;)V

    goto :goto_2

    :cond_2
    move-object v6, p0

    const-class p1, Ljava/util/Map;

    invoke-interface {p2, v2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq(Ljava/util/Map;)V

    :goto_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    move-object v6, p0

    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    invoke-interface {p2, v1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    move-object v6, p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq()Ljava/util/Map;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x41ebd
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

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/p;)I
.end method

.method public abstract dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;)Ljava/lang/Object;
.end method

.method public abstract dq()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract dq(I)V
.end method

.method public abstract dq(Landroid/app/Activity;Ljava/util/List;IILcom/bykv/vk/openvk/api/proto/Bridge;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/mediation/dq/d/s;",
            ">;II",
            "Lcom/bykv/vk/openvk/api/proto/Bridge;",
            ")V"
        }
    .end annotation
.end method

.method public abstract dq(Landroid/content/Context;)V
.end method

.method public abstract dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
.end method

.method public abstract dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
.end method

.method public abstract dq(Landroid/content/Context;[I)V
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;)V
.end method

.method public abstract dq(Ljava/lang/String;)V
.end method

.method public abstract dq(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->d()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/p;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method
