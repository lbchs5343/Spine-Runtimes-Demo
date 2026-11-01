.class public Lcom/bytedance/sdk/openadsdk/upie/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/upie/d$dq;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final dq:Ljava/lang/String;

.field private static volatile p:Lcom/bytedance/sdk/openadsdk/upie/d;


# instance fields
.field private final ox:Lcom/bytedance/sdk/component/mn/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tt_derive"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v3, "audio"

    const-string v4, "lottie"

    invoke-static {v0, v2, v4, v2, v3}, Lg/awf;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/upie/d;->dq:Ljava/lang/String;

    const-string v0, "anim_img"

    invoke-static {v1, v2, v4, v2, v0}, Lg/tn;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/upie/d;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/mn/p$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/mn/p$dq;-><init>()V

    const-string v1, "lottie_tpl_info"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/mn/p$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/mn/p$dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/mn/p$dq;->dq(I)Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;->ig()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/mn/p$dq;->d(Z)Lcom/bytedance/sdk/component/mn/p$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/mn/p$dq;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/d;->ox:Lcom/bytedance/sdk/component/mn/dq;

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/upie/d;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/upie/d;->p:Lcom/bytedance/sdk/openadsdk/upie/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/upie/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/upie/d;->p:Lcom/bytedance/sdk/openadsdk/upie/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/upie/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/upie/d;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/upie/d;->p:Lcom/bytedance/sdk/openadsdk/upie/d;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/upie/d;->p:Lcom/bytedance/sdk/openadsdk/upie/d;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/d;->ox:Lcom/bytedance/sdk/component/mn/dq;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/upie/d$dq<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->s()Lcom/bytedance/sdk/component/iw/jy;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    const-string v0, "imageCenter is null"

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/upie/d$dq;->dq(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/iw/jy;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/iw/o;->dq(Landroid/graphics/Bitmap$Config;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/iw/o;->ox(I)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/d$3;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/upie/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/upie/d;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V

    const/4 p2, 0x4

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/iw/o;->dq(Lcom/bytedance/sdk/component/iw/f;I)Lcom/bytedance/sdk/component/iw/kk;

    return-void
.end method

.method public dq(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;->ig()Z

    move-result v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/upie/d;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/component/utils/iw;->dq(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/d;->ox:Lcom/bytedance/sdk/component/mn/dq;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/upie/dq;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/upie/dq;->ox()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/upie/d;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/upie/dq;->dq()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V

    :cond_1
    return-void
.end method

.method public dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/upie/d$dq<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->s()Lcom/bytedance/sdk/component/iw/jy;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    const-string p2, "imageCenter is null"

    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/d$dq;->dq(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/iw/jy;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/iw/o;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/iw/o;->dq(Landroid/graphics/Bitmap$Config;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/iw/o;->ox(I)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/upie/d$2;

    invoke-direct {p2, p0, p3}, Lcom/bytedance/sdk/openadsdk/upie/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/upie/d;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V

    const/4 p3, 0x4

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/component/iw/o;->dq(Lcom/bytedance/sdk/component/iw/f;I)Lcom/bytedance/sdk/component/iw/kk;

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/upie/d$dq<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;->s()Lcom/bytedance/sdk/component/kk/d/ox;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/upie/d$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/upie/d;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/d/ox;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    return-void
.end method
