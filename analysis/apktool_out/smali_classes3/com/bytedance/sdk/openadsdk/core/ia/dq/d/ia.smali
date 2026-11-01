.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/no/dq/dq/ox;


# annotations
.annotation runtime Lcom/bytedance/sdk/component/no/d/d;
.end annotation


# instance fields
.field private bl:I
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "action_type"
    .end annotation
.end field

.field private c:D

.field private cd:Lcom/bytedance/sdk/openadsdk/core/r/j;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "material_meta"
    .end annotation
.end field

.field private ce:Ljava/lang/String;

.field d:I

.field protected dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "activity"
    .end annotation
.end field

.field private e:Lcom/bytedance/sdk/openadsdk/core/ia/dq/ox/dq;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "end_card_param"
    .end annotation
.end field

.field private er:Z

.field protected f:Lcom/bytedance/sdk/openadsdk/core/fw/kk;

.field private fw:Ljava/lang/ref/WeakReference;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "web_view"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/component/widget/SSWebView;",
            ">;"
        }
    .end annotation
.end field

.field private gh:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "event_tag"
    .end annotation
.end field

.field private h:I
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "end_card_width"
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "extra_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field ia:Lcom/bytedance/sdk/openadsdk/core/ig/p;

.field protected ig:Z

.field private ir:D

.field protected iw:Ljava/lang/String;

.field private final j:Lcom/bytedance/sdk/openadsdk/core/fw/d;

.field private ji:I
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "end_card_height"
    .end annotation
.end field

.field protected jy:Lcom/bytedance/sdk/openadsdk/core/fw/dq;

.field private k:Landroid/webkit/DownloadListener;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "download_listener"
    .end annotation
.end field

.field kk:I

.field private kx:I
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "orientation"
    .end annotation
.end field

.field private le:Landroid/view/View;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "close_button"
    .end annotation
.end field

.field protected mn:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

.field protected final mp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final nh:Lcom/bytedance/sdk/openadsdk/o/dq;

.field protected no:Z

.field o:Ljava/lang/String;

.field private op:D

.field ox:I

.field protected p:Lcom/bytedance/sdk/openadsdk/core/c;

.field protected q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private r:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "is_reward"
    .end annotation
.end field

.field protected s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

.field private u:D

.field private wn:Landroid/os/Handler;

.field private wp:I
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "show_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->n:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->d:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ox:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->kk:I

    const-string v1, ""

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->o:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->no:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ig:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->mp:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->wn:Landroid/os/Handler;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->jy:Lcom/bytedance/sdk/openadsdk/core/fw/dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->f:Lcom/bytedance/sdk/openadsdk/core/fw/kk;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->j:Lcom/bytedance/sdk/openadsdk/core/fw/d;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$9;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->nh:Lcom/bytedance/sdk/openadsdk/o/dq;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->er:Z

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method private dq(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    const-string v0, "csjclientimg://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-direct {p1, v1, v2, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private dq(II)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "height"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string p2, "resize"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(II)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->er:Z

    return p1
.end method

.method private i()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->es()F

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->kx:I

    const/4 v2, 0x1

    const-string v3, "?"

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    const-string v4, "&orientation=portrait"

    invoke-static {v1, v2, v4}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    const-string v4, "?orientation=portrait"

    invoke-static {v1, v2, v4}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "&aspect_ratio="

    const-string v3, "&width="

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&height="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ji:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?height="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ji:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->c:D

    return-wide v0
.end method

.method private k()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->s(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    aput v2, v3, v1

    const-string v1, "translationY"

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$4;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private le()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    :try_start_0
    const-string v2, "translationY"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->s(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v3, 0x0

    aput v3, v4, v1

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ce:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->op:D

    return-wide v0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ir:D

    return-wide v0
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->e:Lcom/bytedance/sdk/openadsdk/core/ia/dq/ox/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$10;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/ox/dq;)V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->u:D

    return-wide v0
.end method

.method private wp()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/component/widget/SSWebView$d;)V

    return-void
.end method


# virtual methods
.method public cd()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->ox()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->p()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->gh:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "webview_source"

    invoke-virtual {v2, v1, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ig/p;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/component/mp/dq;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d(Z)Lcom/bytedance/sdk/openadsdk/core/ig/p;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ia:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->i()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ia:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "landingpage_endcard"

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->r:Z

    if-eqz v2, :cond_3

    const-string v2, "reward_endcard"

    goto :goto_1

    :cond_3
    const-string v2, "fullscreen_endcard"

    :goto_1
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$12;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->r:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x7

    goto :goto_2

    :cond_4
    const/4 v2, 0x5

    :goto_2
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(I)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->jy:Lcom/bytedance/sdk/openadsdk/core/fw/dq;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/dq;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->d(I)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/iw/dq;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->gh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->f:Lcom/bytedance/sdk/openadsdk/core/fw/kk;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/kk;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->le:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->nh:Lcom/bytedance/sdk/openadsdk/o/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/o/dq;)Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->j:Lcom/bytedance/sdk/openadsdk/core/fw/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/d;)Lcom/bytedance/sdk/openadsdk/core/c;

    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->iw(Z)Lcom/bytedance/sdk/openadsdk/core/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$11;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public dq(DDDDLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ig:Z

    if-nez v0, :cond_1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->op:D

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ir:D

    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->c:D

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->u:D

    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ce:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->er:Z

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "y"

    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "width"

    invoke-virtual {v0, p1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "height"

    invoke-virtual {v0, p1, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "videoFrameKey"

    invoke-virtual {v0, p1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string p2, "endcardTransform"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/SSWebView;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->d(Z)Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Lcom/bytedance/sdk/component/mp/dq;)V

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/r;->dq(Lcom/bytedance/sdk/component/mp/dq;IZ)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Lcom/bytedance/sdk/component/mp/dq;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMixedContentMode(I)V

    const/16 v2, 0x18

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "viewStatus"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string v1, "viewableChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->d()V

    return-void

    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(ILjava/lang/String;)V

    return-void
.end method

.method public dq(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "endcard_mute"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "endcard_show"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string p2, "endcard_control_event"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/component/no/dq/dq;",
            ")Z"
        }
    .end annotation

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->bl:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->d()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ox()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->r()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->no()V

    :cond_0
    return-void
.end method

.method public fw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->ig()V

    :cond_0
    return-void
.end method

.method public gh()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public ia()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->k()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;I)V

    return-void
.end method

.method public ig()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ia:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->p()V

    :cond_0
    return-void
.end method

.method public iw()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;I)V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->wp:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;F)V

    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->wp:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->le()V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Z)V

    :cond_4
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Z)V

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->d(Z)V

    invoke-virtual {p0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(ZZ)V

    return-void
.end method

.method public jy()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->kk()V

    :cond_0
    return-void
.end method

.method public kk()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    return-void
.end method

.method public mn()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ia:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(J)V

    :cond_0
    return-void
.end method

.method public mp()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/j;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/mp/dq;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->dq(Lcom/bytedance/sdk/component/mp/dq;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->u()V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->fw()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ia:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->s()V

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public no()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->ia()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->ir()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->iw(Z)Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->mn:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ox()V

    :cond_3
    return-void
.end method

.method public o()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->ab_()V

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/c;->op()V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->iw(Z)Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Z)V

    invoke-virtual {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(ZZ)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->iw(Z)Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Z)V

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(ZZ)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ia:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ox()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->mn:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->d(Z)V

    :cond_5
    return-void
.end method

.method public ox()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$13;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->cd:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ia:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$13;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    iput-object v1, v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->mn:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBackgroundColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDisplayZoomControls(Z)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$2;

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->p:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->ia:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-direct {v1, p0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->k:Landroid/webkit/DownloadListener;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public p()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v2, "show_landingpage"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->ab_()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->resumeTimers()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;F)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->wp()V

    return-void
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->fw:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->no:Z

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ia;->no:Z

    return-void
.end method
