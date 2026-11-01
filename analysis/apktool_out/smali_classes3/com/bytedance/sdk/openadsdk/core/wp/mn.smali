.class public abstract Lcom/bytedance/sdk/openadsdk/core/wp/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/EventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dq(Lcom/bykv/vk/openvk/api/proto/Result;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Result;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/json/JSONObject;

    const/4 v2, 0x7

    invoke-interface {p1, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "label"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->dq(B)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->d(B)V

    const-string p1, "csj"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public d(I)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lg/hat;->c:Landroid/util/SparseArray;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    return-object p1
.end method

.method public d(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->jw()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p2

    const/16 v0, 0x21

    iget-object v1, p2, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(I)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->ox()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lg/hat;->c:Landroid/util/SparseArray;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    return-object p1
.end method

.method public dq(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(ILcom/bytedance/sdk/openadsdk/core/wp/ia;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(ILcom/bytedance/sdk/openadsdk/core/wp/p;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/wp/mn;->dq(Lcom/bykv/vk/openvk/api/proto/Result;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/wp/mn;->dq(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/wp/ia;

    invoke-direct {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/wp/ia;-><init>(Lcom/bykv/vk/openvk/api/proto/Result;I)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/wp/mn;->dq(ILcom/bytedance/sdk/openadsdk/core/wp/ia;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/wp/mn;->d(I)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/wp/mn;->d(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/wp/p;

    invoke-direct {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/wp/p;-><init>(Lcom/bykv/vk/openvk/api/proto/Result;I)V

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/wp/mn;->dq(ILcom/bytedance/sdk/openadsdk/core/wp/p;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/wp/mn;->dq(I)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
