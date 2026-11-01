.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;
    }
.end annotation


# static fields
.field private static final dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lg/awf;->ab()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq;->dq:Ljava/util/Map;

    return-void
.end method

.method private static d(ZZLcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V
    .locals 10

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq;->dq:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v5, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    move-wide v5, v1

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "load_video_success"

    goto :goto_1

    :cond_1
    const-string v0, "load_video_error"

    :goto_1
    if-nez p1, :cond_2

    if-eqz p5, :cond_2

    :goto_2
    move v3, p1

    move-object v4, p2

    move-wide v7, p3

    move-object v9, p5

    goto :goto_3

    :cond_2
    const/4 p5, 0x0

    goto :goto_2

    :goto_3
    invoke-static/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(ZLcom/bytedance/sdk/openadsdk/core/r/j;JJLjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p0, :cond_3

    const-string p0, "rewarded_video"

    goto :goto_4

    :cond_3
    const-string p0, "fullscreen_interstitial_ad"

    :goto_4
    invoke-static {v4, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static dq(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->dq()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static dq(ZLcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq;->dq:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;->dq(ZLjava/lang/Object;)V

    :cond_1
    const-wide/16 v5, -0x1

    const-string v7, " meta == null or meta.getVideo() == null "

    const/4 v3, 0x0

    move v2, p0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq;->d(ZZLcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V

    return-void

    :cond_2
    move v2, p0

    move-object v4, p1

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq;->dq(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->p()Lcom/bytedance/sdk/component/kk/d/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/kk/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;

    invoke-direct {p0, p2, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;ZLcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/kk/d/d;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    return-void
.end method

.method public static synthetic dq(ZZLcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq;->d(ZZLcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V

    return-void
.end method
