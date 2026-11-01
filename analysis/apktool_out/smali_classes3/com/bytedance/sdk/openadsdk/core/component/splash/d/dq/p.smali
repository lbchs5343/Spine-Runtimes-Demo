.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/d/dq;


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->jy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->kk()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->ia()Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Z)V

    const/4 v2, 0x2

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const-string v0, "no video info"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->dq(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ig()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const-string v0, "no video url"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->dq(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->jy()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const-string v0, "no video cahce filename"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->dq(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string v4, "Splash_FullLink"

    const-string v5, "\u52a0\u8f7d\u89c6\u9891\u7d20\u6750"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v4

    if-nez v4, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->o()Z

    move-result v5

    invoke-virtual {v1, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->f()I

    move-result v6

    if-nez v6, :cond_6

    const v6, 0x4b000

    invoke-virtual {v1, v6}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p(I)V

    :cond_6
    const/4 v1, 0x3

    if-eqz v5, :cond_7

    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v5

    goto :goto_0

    :cond_7
    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v5

    :goto_0
    const-string v6, "material_meta"

    invoke-virtual {v5, v6, v4}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result v8

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->jy()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Z)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ox(Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->ox()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->s(J)V

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->d(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->kk(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, v6

    invoke-static {v5, v4, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V

    return-void

    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const-string v0, "network error"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->dq(Ljava/lang/Object;)V

    return-void

    :cond_9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dc()I

    move-result v0

    if-ne v0, v1, :cond_a

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->jy()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ox(Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->ox()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->s(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->d(Ljava/lang/Object;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/dq;->dq()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-direct {p0, v5, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    return-object p0
.end method

.method private dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/component/video/api/ox/p;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;

    invoke-direct {p3, p0, p4, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;)V

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V

    return-void
.end method
