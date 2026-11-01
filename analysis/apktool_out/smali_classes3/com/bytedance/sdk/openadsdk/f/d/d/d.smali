.class public abstract Lcom/bytedance/sdk/openadsdk/f/d/d/d;
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

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    const v2, 0x1adb1

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/d$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    const v2, 0x1adb2

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/d$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    const v2, 0x1adb3

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/d$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    const v2, 0x1adb4

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/d$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    const v2, 0x1adb5

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/d$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d$6;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    const v2, 0x1adb6

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
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

    const-class v0, Landroid/view/ViewGroup;

    const-class v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->kk()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/mn;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-interface {p2, v2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    const-class v2, Landroid/app/Activity;

    invoke-interface {p2, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p2, v2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Landroid/view/ViewGroup;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p2, v2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->d(Landroid/view/ViewGroup;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;

    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->ia()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->mn()V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/kk;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1ae15
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

.method public abstract d()Landroid/view/View;
.end method

.method public abstract d(Landroid/view/ViewGroup;)V
.end method

.method public abstract dq()Landroid/view/View;
.end method

.method public abstract dq(Landroid/view/ViewGroup;)V
.end method

.method public abstract dq(Landroid/view/ViewGroup;Landroid/app/Activity;)V
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;)V
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;)V
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;)V
.end method

.method public abstract ia()V
.end method

.method public abstract iw()[I
.end method

.method public abstract kk()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/mn;
.end method

.method public abstract mn()V
.end method

.method public abstract ox()Landroid/view/View;
.end method

.method public abstract p()I
.end method

.method public abstract s()Ljava/util/Map;
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

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->o()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method
