.class public final Lcom/bytedance/sdk/openadsdk/h/no;
.super Ljava/lang/Object;


# static fields
.field private static dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/no;->dq:Ljava/util/Map;

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    const-string v0, "com.byted.pangle"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    return p0

    :cond_0
    const/16 v0, 0x65

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/no;->dq(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static dq(Ljava/lang/String;I)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/no;->iw(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v2

    iget-object v3, v2, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v1, p1, p0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    return v0

    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "ZeusUtil"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x157c

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/no;->mn(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->iw(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    iget-object v2, v1, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-interface {v0, v2, p0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static iw(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/no;->iw(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v3

    iget-object v4, v3, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    const-class v3, Lorg/json/JSONObject;

    const/16 v4, 0xd

    invoke-interface {v2, v4, p0, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-object v1

    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const-string p0, "ZeusUtil"

    invoke-static {p0, v2}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private static mn(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-class v0, Lcom/bytedance/pangle/Zeus;

    sget v1, Lcom/bytedance/pangle/Zeus;->a:I

    const-string v1, "unInstallPlugin"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static ox(Ljava/lang/String;)I
    .locals 1

    const-string v0, "com.byted.pangle"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x19cf

    return p0

    :cond_0
    const/16 v0, 0x67

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/no;->dq(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static p(Ljava/lang/String;)I
    .locals 1

    const-string v0, "com.byted.pangle"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    return p0

    :cond_0
    const/16 v0, 0x66

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/no;->dq(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static s(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/no;->iw(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v2

    iget-object v3, v2, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x5

    invoke-interface {v0, v3, p0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "ZeusUtil"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
