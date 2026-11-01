.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;
.super Ljava/lang/Object;


# direct methods
.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/dq;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dc()I

    move-result v1

    if-ne v1, v0, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mn(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/ds;)I
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ds;->d()Lcom/bytedance/sdk/openadsdk/core/r/dq;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->ox(Lcom/bytedance/sdk/openadsdk/core/r/dq;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ds;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static dq(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->ox()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dq(JZZLcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const-string p0, "load_video_success"

    goto :goto_0

    :cond_0
    const-string p0, "load_video_error"

    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    const-string p0, "download_video_image_success"

    goto :goto_0

    :cond_2
    const-string p0, "download_video_image_fail"

    goto :goto_0

    :goto_1
    const-string v3, "splash_ad"

    const-string v4, "splash_show_type"

    if-eqz p2, :cond_3

    move p0, p3

    move-object p1, p4

    move-wide p4, p5

    move-object p6, p7

    move-wide p2, v0

    invoke-static/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(ZLcom/bytedance/sdk/openadsdk/core/r/j;JJLjava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v3, v2, p0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_3
    move p0, p3

    move-object p1, p4

    move-wide p4, p5

    move-object p6, p7

    move-wide p2, v0

    invoke-static/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(ZLcom/bytedance/sdk/openadsdk/core/r/j;JJLjava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v3, v2, p0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;)V
    .locals 9

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->d(Lcom/bytedance/sdk/openadsdk/core/r/dq;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v3, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ig()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v6, -0x1

    const-string v8, "preLoadVideo videoUrl is null"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->dq(JZZLcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->jy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jc()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v1

    :goto_0
    const-string v2, "material_meta"

    invoke-virtual {v1, v2, v5}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ia(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/dq;->dq()V

    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk$2;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk$2;-><init>()V

    invoke-static {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ZJJ)V
    .locals 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk$1;

    move-object v5, p0

    move v2, p1

    move-wide v6, p2

    move-wide v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk$1;-><init>(ZJLcom/bytedance/sdk/openadsdk/f/d/ox/d;J)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->mn(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V

    return-void
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/dq;)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->dq()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
