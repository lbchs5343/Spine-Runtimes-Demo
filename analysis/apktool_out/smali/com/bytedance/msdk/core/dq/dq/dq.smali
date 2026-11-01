.class public Lcom/bytedance/msdk/core/dq/dq/dq;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field public static dq:Ljava/lang/String;


# direct methods
.method public static d()I
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->o()I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 3

    invoke-static {p0}, Lcom/bytedance/msdk/core/dq/dq/dq;->s(Ljava/lang/String;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-class v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/16 v2, 0x2710

    invoke-interface {p0, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bykv/vk/openvk/api/proto/Bridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static d(Ljava/lang/String;II)Lcom/bytedance/msdk/core/dq/dq/dq/dq;
    .locals 1

    const-string v0, "gdt"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    new-instance p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/s/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/s/dq;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne p2, p0, :cond_4

    new-instance p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/dq;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/dq;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/p/dq;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/dq;-><init>()V

    return-object p0

    :pswitch_5
    const/4 p0, 0x4

    if-ne p2, p0, :cond_1

    new-instance p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/dq;-><init>()V

    return-object p0

    :cond_1
    const/4 p0, 0x3

    if-ne p2, p0, :cond_2

    new-instance p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;-><init>()V

    return-object p0

    :cond_2
    const/4 p0, 0x5

    if-ne p2, p0, :cond_3

    new-instance p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/dq;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/dq;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/mn/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/mn/dq;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/s/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/s/dq;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/dq;-><init>()V

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static d(Lcom/bytedance/msdk/api/dq/d;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/dq/d;->mn(I)V

    :cond_0
    return-void
.end method

.method private static dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 2

    invoke-static {p0}, Lcom/bytedance/msdk/core/dq/dq/dq;->s(Ljava/lang/String;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-class v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {p0, p1, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bykv/vk/openvk/api/proto/Bridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static dq(Ljava/lang/String;II)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 4

    :try_start_0
    const-string v0, "gdt"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4e21

    const/16 v1, 0x4e22

    const/16 v2, 0x4e23

    const/16 v3, 0x4e24

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    invoke-static {p0, v3}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    invoke-static {p0, v2}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0, v1}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0, v2}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0

    :pswitch_4
    const/16 p1, 0x4e26

    invoke-static {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0

    :pswitch_5
    const/4 p1, 0x4

    const/16 v2, 0x4e25

    if-ne p2, p1, :cond_1

    invoke-static {p0, v2}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    invoke-static {p0, v0}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p1, 0x5

    if-ne p2, p1, :cond_3

    invoke-static {p0, v1}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0, v2}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0

    :pswitch_6
    const/16 p1, 0x4e27

    invoke-static {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p0, v3}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p0, v0}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static dq()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->k()Lcom/bytedance/msdk/mn/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->k()Lcom/bytedance/msdk/mn/dq/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->kk()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "load_plugin_gdt_adapter_v2"

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/dq/d;->mn(I)V

    :cond_0
    return-void
.end method

.method public static dq(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/msdk/core/dq/dq/dq;->s(Ljava/lang/String;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ox(Lcom/bytedance/msdk/api/dq/d;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->kk()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->mp()I

    move-result p0

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->o()I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->mp()I

    move-result p0

    return p0
.end method

.method private static ox(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "gdt"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "g_class_name"

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "gdt"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "g_adn_version"

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static s(Ljava/lang/String;)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 8

    const-string v0, "adn_version"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p0}, Lcom/bytedance/msdk/core/dq/dq/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    invoke-static {p0}, Lcom/bytedance/msdk/core/dq/dq/dq;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v2

    :cond_2
    const-string v4, "gdt"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/bytedance/msdk/core/dq/dq/dq;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v5, :cond_3

    return-object v5

    :cond_3
    :try_start_0
    const-string v5, "com.byted.mixed"

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/h/no;->iw(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/no;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_6

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    instance-of p0, v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p0, :cond_6

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    sput-object v0, Lcom/bytedance/msdk/core/dq/dq/dq;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-object v0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    sput-object v3, Lcom/bytedance/msdk/core/dq/dq/dq;->dq:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-object v2
.end method
