.class public Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/core/h;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/h;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;Lcom/bytedance/sdk/openadsdk/core/r/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;JLcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;JLcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;JLcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->xo()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    const/4 v5, 0x6

    invoke-direct {v4, p2, v2, v5, p3}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->p(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->qz()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    :cond_3
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    :cond_4
    const/4 v4, 0x4

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v4

    const-string v5, "material_meta"

    invoke-virtual {v4, v5, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v3

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ad_slot"

    invoke-virtual {v4, v3, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    invoke-virtual {p6, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(Ljava/util/List;)V

    return-void

    :cond_7
    const/4 p1, -0x4

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(ILjava/lang/String;)V

    invoke-virtual {p7, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p7}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_8
    const/4 p1, -0x3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(ILjava/lang/String;)V

    invoke-virtual {p7, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p7}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;Lcom/bytedance/sdk/openadsdk/core/r/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;JLcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;JLcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;Lcom/bytedance/sdk/openadsdk/core/r/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;JLcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;JLcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;JLcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->xo()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;

    const/16 v5, 0x9

    invoke-direct {v4, p2, v2, v5, p3}, Lcom/bytedance/sdk/openadsdk/core/component/dq/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->p(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->qz()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    :cond_2
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    :cond_3
    const/4 v4, 0x4

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v4

    const-string v5, "material_meta"

    invoke-virtual {v4, v5, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v3

    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ad_slot"

    invoke-virtual {v4, v3, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    invoke-virtual {p6, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;->dq(Ljava/util/List;)V

    return-void

    :cond_6
    const/4 p1, -0x4

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;->dq(ILjava/lang/String;)V

    invoke-virtual {p7, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p7}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_7
    const/4 p1, -0x3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;->dq(ILjava/lang/String;)V

    invoke-virtual {p7, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p7}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;JLcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->xo()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;

    const/4 v5, 0x5

    invoke-direct {v4, p2, v2, v5, p3}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->p(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->qz()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    :cond_3
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    :cond_4
    const/4 v4, 0x4

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v4

    const-string v5, "material_meta"

    invoke-virtual {v4, v5, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v3

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ad_slot"

    invoke-virtual {v4, v3, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    invoke-virtual {p6, v0}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(Ljava/util/List;)V

    return-void

    :cond_7
    const/4 p1, -0x4

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(ILjava/lang/String;)V

    invoke-virtual {p7, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p7}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_8
    const/4 p1, -0x3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(ILjava/lang/String;)V

    invoke-virtual {p7, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p7}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/r/nh;-><init>()V

    if-eqz p3, :cond_0

    instance-of v0, p3, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/dq/d;->d()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    :cond_0
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/h;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;J)V

    const/4 p1, 0x6

    invoke-interface {v8, v4, v7, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    return-void
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/r/nh;-><init>()V

    if-eqz p3, :cond_0

    instance-of v0, p3, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/dq/d;->d()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    :cond_0
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/h;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;J)V

    const/16 p1, 0x9

    invoke-interface {v8, v4, v7, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    return-void
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/r/nh;-><init>()V

    if-eqz p3, :cond_0

    instance-of v0, p3, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/dq/d;->d()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    :cond_0
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/h;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;J)V

    const/4 p1, 0x5

    invoke-interface {v8, v4, v7, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    return-void
.end method
