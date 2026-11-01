.class public Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;
.super Ljava/lang/Object;


# direct methods
.method public static d(II)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "hashCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p1

    const-string v1, "downloadScene"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p1, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    const-class p1, Ljava/lang/Void;

    const/16 v1, 0x1e

    invoke-interface {v0, v1, p0, p1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method private static d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$3;-><init>(Ljava/util/Map;)V

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/o;->dq(Ljava/lang/Runnable;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public static dq(Lcom/bykv/vk/openvk/api/proto/Bridge;I)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "hashCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    iget-object v2, v1, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    const/16 v1, 0x1b

    invoke-interface {p0, v1, p1, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/ox;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget v2, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v3, 0x1900

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fa()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/e;->dq(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->zi()Lcom/bytedance/sdk/openadsdk/core/r/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->p()I

    move-result p0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_2

    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$1;-><init>(ZLcom/bytedance/sdk/openadsdk/f/d/dq/dq;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const-string p0, "dof"

    const-string p1, "bridge something invalid"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static dq(II)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "hashCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p1

    const-string v1, "downloadMode"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p1, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    const-class p1, Ljava/lang/Void;

    const/16 v1, 0x1a

    invoke-interface {v0, v1, p0, p1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;IZ)V
    .locals 7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v2, 0x2

    :cond_2
    const/4 p2, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->zc()Lcom/bytedance/sdk/openadsdk/core/r/i;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->zc()Lcom/bytedance/sdk/openadsdk/core/r/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/i;->dq()Z

    move-result v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->zc()Lcom/bytedance/sdk/openadsdk/core/r/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/i;->d()Z

    move-result p0

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v6, "autoOpen"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v1

    const-string v5, "downloadMode"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v1

    const-string v2, "isHaveDownloadSdkConfig"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v1

    const-string v2, "hashCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p1

    const-string v1, "isEnableAH"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p1

    const-string v1, "isEnableAM"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p1

    iget-object v1, p1, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    const-class p1, Ljava/lang/Void;

    const/16 p2, 0x19

    invoke-interface {v0, p2, p0, p1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public static dq(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "clickButtonTag"

    invoke-virtual {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v1

    const-string v2, "clickItemTag"

    invoke-virtual {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string v1, "hashCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "clickStartLabel"

    const-string v1, "click_start"

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "clickContinueLabel"

    const-string v1, "click_continue"

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "clickPauseLabel"

    const-string v1, "click_pause"

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "storageDenyLabel"

    const-string v1, "download_failed"

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "clickInstallLabel"

    const-string v1, "click_install"

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "isEnableClickEvent"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "isEnableV3Event"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p1, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    const-class p1, Ljava/lang/Void;

    const/16 v1, 0x1d

    invoke-interface {v0, v1, p0, p1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;I)V
    .locals 10

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v9, p3

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(ZLcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v9, p3

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gm()Lcom/bytedance/sdk/openadsdk/core/r/p;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/p;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/p;->p()Ljava/lang/String;

    move-result-object p0

    move-object v8, p0

    move-object v6, p1

    move-object v7, p2

    goto :goto_0

    :cond_2
    const-string p1, ""

    move-object v6, p1

    move-object v7, v6

    move-object v8, v7

    :goto_0
    const/4 v1, 0x0

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(ZLcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;I)V
    .locals 10

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v1, 0x1

    move-object v6, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v9, p4

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(ZLcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    move-object v6, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v9, p4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v1, 0x1

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(ZLcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hy()Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hy()Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/s;->ig()Ljava/lang/String;

    move-result-object p0

    :cond_3
    move-object v8, p0

    const/4 v1, 0x0

    const-string v7, ""

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(ZLcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "clickButtonTag"

    invoke-virtual {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string v1, "clickItemTag"

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "clickStartLabel"

    const-string v1, "click_start"

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "clickContinueLabel"

    const-string v1, "click_continue"

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "clickPauseLabel"

    const-string v1, "click_pause"

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "storageDenyLabel"

    const-string v1, "download_failed"

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "clickInstallLabel"

    const-string v1, "click_install"

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "isEnableClickEvent"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "hashCode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "isEnableV3Event"

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p1, "extraEventObject"

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p1

    const/4 p2, 0x0

    iget-object p3, p1, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    const-class p1, Ljava/lang/Void;

    const/16 p2, 0x1d

    invoke-interface {v0, p2, p0, p1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/dq;",
            ")V"
        }
    .end annotation

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x1130

    if-lt v0, v1, :cond_2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "downloadButtonClickListener"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public static dq(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "convert_result"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v1

    const-string v4, "success"

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v5, p2

    move-object v6, p3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p0

    move-object v10, v6

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "no intercept result"

    move-object v7, v6

    move-object v9, v5

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(ZI)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "hashCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p1

    const-string v1, "isShowToast"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p1, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    const-class p1, Ljava/lang/Void;

    const/16 v1, 0x1f

    invoke-interface {v0, v1, p0, p1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method private static dq(ZLcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "download_start_toast_text"

    const-string v2, "notification_opt_2"

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v3, Ljava/lang/Void;

    const/16 v4, 0x17

    const-string v5, "mateIsEmpty"

    const-string v6, "hashCode"

    const/4 v7, 0x0

    if-eqz p0, :cond_1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v2

    iget-object v5, v2, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object v1

    invoke-interface {v0, v4, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;

    move-result-object v9

    move-object/from16 v10, p4

    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;->d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p3

    :try_start_1
    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;

    move-result-object v9

    const-string v11, "open_ad_sdk_download_extra"

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/dq;->d()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    nop

    goto :goto_1

    :catch_1
    move-object/from16 v10, p3

    goto :goto_0

    :goto_1
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->longValue()J

    move-result-wide v11

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wq()Lcom/bytedance/sdk/openadsdk/core/r/ji;

    move-result-object v9

    if-nez v9, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wq()Lcom/bytedance/sdk/openadsdk/core/r/ji;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/no;->i()Z

    move-result v13

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v14

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/core/no;->i()Z

    move-result v14

    const/4 v15, 0x1

    xor-int/2addr v14, v15

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o/o;->d()Lorg/json/JSONObject;

    move-result-object v15

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move-wide/from16 v16, v11

    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v15, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v10, 0x1

    if-eq v11, v10, :cond_3

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    move v10, v11

    :goto_3
    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/r/r;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v11

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->iw()Z

    move-result v12
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v12, :cond_4

    :try_start_3
    const-string v12, "cancel_pause_optimise_switch"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "cancel_pause_optimise_wifi_retain_switch"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "cancel_pause_optimise_apk_retain_switch"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "cancel_pause_optimise_download_percent_retain_switch"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    nop

    move/from16 v11, p8

    goto :goto_7

    :cond_4
    :goto_4
    :try_start_4
    const-string v12, "show_pause_continue_toast"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    move/from16 v11, p8

    :try_start_5
    invoke-static {v12, v11}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(ZI)V

    const-string v12, "\u5df2\u5f00\u59cb\u4e0b\u8f7d\uff0c\u518d\u6b21\u70b9\u51fb\u53ef\u6682\u505c\u6216\u53d6\u6d88\u8be5\u4e0b\u8f7d\u4efb\u52a1\u3002"

    invoke-virtual {v15, v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :catch_3
    :goto_5
    nop

    goto :goto_7

    :cond_5
    move/from16 v11, p8

    :goto_6
    invoke-virtual {v7, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "is_use_obm_convert"

    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/r/r;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_4
    move/from16 v11, p8

    goto :goto_5

    :goto_7
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->lk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->ox()I

    move-result v12

    const/4 v15, 0x2

    if-ne v12, v15, :cond_7

    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_9

    :cond_6
    :goto_8
    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    goto :goto_a

    :cond_7
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->ox()I

    move-result v2

    const/4 v12, 0x1

    if-ne v2, v12, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object v1

    move-object v10, v2

    :goto_a
    new-instance v12, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v12}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v5, v15}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v5

    const-string v12, "id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5, v12, v15}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v5

    const-string v12, "appIcon"

    invoke-virtual {v5, v12, v9}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v5

    const-string v9, "isShowNotification"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v5, v9, v12}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v5

    const-string v9, "isAutoInstallWithoutNotification"

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v5, v9, v12}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v5

    const-string v9, "logExtra"

    invoke-virtual {v5, v9, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v4

    const-string v5, "extraJson"

    invoke-virtual {v4, v5, v8}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v4

    const-string v5, "downloadSettings"

    invoke-virtual {v4, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/no;->d()Ljava/lang/String;

    move-result-object v5

    const-string v7, "filePath"

    invoke-virtual {v4, v7, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v4

    const-string v5, "appName"

    move-object/from16 v7, p6

    invoke-virtual {v4, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v4

    const-string v5, "downloadUrl"

    move-object/from16 v7, p5

    invoke-virtual {v4, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v4

    const-string v5, "packageName"

    move-object/from16 v7, p7

    invoke-virtual {v4, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "isNeedIndependentProcess"

    invoke-virtual {v4, v7, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v4

    const-string v5, "openUrl"

    invoke-virtual {v4, v5, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v2

    const-string v4, "webTitle"

    invoke-virtual {v2, v4, v10}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v2

    const-string v4, "webUrl"

    invoke-virtual {v2, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v2

    iget-object v4, v2, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object v1

    const/16 v2, 0x17

    invoke-interface {v0, v2, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public static dq(ZLcom/bytedance/sdk/openadsdk/core/h/dq/dq/ox;I)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "isEnableOppoAutoDownload"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string v1, "hashCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const-string p2, "downloadMarketInterceptor"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Lg/hat;->g(I)Lg/hat;

    move-result-object p1

    iget-object p2, p1, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    const-class p1, Ljava/lang/Void;

    const/16 p2, 0x1c

    invoke-interface {v0, p2, p0, p1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "xgc_dof"

    const-string p2, "throwable"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static dq(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p3, p1, v0, p4}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;I)V

    invoke-static {p1, p4, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;IZ)V

    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(Ljava/lang/String;I)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v1, "hashCode"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p4

    const-string v0, "uri"

    invoke-virtual {p4, v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p0

    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-direct {p4, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/s;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/s;-><init>()V

    invoke-virtual {p4, p2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;)V

    invoke-static {p1, p3, p0, p4}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    return p3

    :cond_1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return p3

    :cond_2
    :goto_0
    return v1
.end method

.method private static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->p(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$2;

    invoke-direct {v0, p2, p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d$2;-><init>(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {p3, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static dq(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "market"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mimarket"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/e;->jy()Z

    move-result p0

    return p0
.end method
