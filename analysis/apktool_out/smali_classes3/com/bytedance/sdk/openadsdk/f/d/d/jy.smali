.class public abstract Lcom/bytedance/sdk/openadsdk/f/d/d/jy;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/kk;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/kk;-><init>()V

    return-void
.end method

.method private o()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/kk;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    invoke-static {v0}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/jy$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy$1;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/jy;)V

    const v2, 0x249f1

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/jy$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy$2;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/jy;)V

    const v2, 0x249f2

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/jy$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy$3;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/jy;)V

    const v2, 0x249f3

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/jy$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy$4;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/jy;)V

    const v2, 0x249f4

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/jy$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy$5;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/jy;)V

    const v2, 0x249f5

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
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

    const-class v0, Landroid/app/Activity;

    const-class v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->mn()V

    goto/16 :goto_0

    :pswitch_1
    const-class v0, Lorg/json/JSONObject;

    invoke-interface {p2, v2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :pswitch_2
    const-class v0, Ljava/lang/String;

    invoke-interface {p2, v2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->kk()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Z)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(I)V

    goto :goto_0

    :pswitch_7
    invoke-interface {p2, v2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_8
    invoke-interface {p2, v2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :pswitch_9
    const-class v0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-interface {p2, v2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    goto :goto_0

    :pswitch_a
    invoke-interface {p2, v2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    const/4 v3, 0x1

    invoke-interface {p2, v3, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->s()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->p()V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;

    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;)V

    goto :goto_0

    :pswitch_f
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/kk;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x24a55
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public abstract d()I
.end method

.method public abstract dq()Landroid/view/View;
.end method

.method public abstract dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
.end method

.method public abstract dq(I)V
.end method

.method public abstract dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;)V
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;)V
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
.end method

.method public abstract dq(Ljava/lang/String;)V
.end method

.method public abstract dq(Lorg/json/JSONObject;)V
.end method

.method public abstract dq(Z)V
.end method

.method public abstract ia()Ljava/util/Map;
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

.method public abstract iw()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
.end method

.method public abstract kk()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;
.end method

.method public abstract mn()V
.end method

.method public abstract ox()I
.end method

.method public abstract p()V
.end method

.method public abstract s()V
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->o()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method
