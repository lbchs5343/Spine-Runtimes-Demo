.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;


# instance fields
.field private bl:D

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/bytedance/sdk/openadsdk/core/fw/d;

.field private ir:Ljava/lang/String;

.field private ji:D

.field private final kx:Lcom/bytedance/sdk/openadsdk/o/dq;

.field private n:D

.field private op:D

.field private u:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IIZLcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IIZ)V

    move-object p1, p0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->e:Ljava/util/Map;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)V

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->kx:Lcom/bytedance/sdk/openadsdk/o/dq;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)V

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->h:Lcom/bytedance/sdk/openadsdk/core/fw/d;

    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;->getEndCardWebView()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq()V

    return-void
.end method

.method private bl()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->es()F

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->gh:I

    const/4 v2, 0x1

    const-string v3, "?"

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    const-string v4, "&orientation=portrait"

    invoke-static {v1, v2, v4}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    const-string v4, "?orientation=portrait"

    invoke-static {v1, v2, v4}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "&aspect_ratio="

    const-string v3, "&width="

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&height="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->r:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?height="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->r:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->ji:D

    return-wide v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->dq(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->e:Ljava/util/Map;

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

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->u:Z

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->u:Z

    return p1
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->ir:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->e:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->bl:D

    return-wide v0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->n:D

    return-wide v0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;)D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->op:D

    return-wide v0
.end method


# virtual methods
.method public dq(DDDDLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->f:Z

    if-nez v0, :cond_1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->ji:D

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->bl:D

    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->op:D

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->n:D

    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->ir:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->u:Z

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

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string p2, "endcardTransform"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public dq(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(Z)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(ZZ)V

    return-void
.end method

.method public dq(Landroid/webkit/DownloadListener;Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 6

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$3;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->no:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

    iget-object p2, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p2, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    iget-object p2, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBackgroundColor(I)V

    iget-object p2, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDisplayZoomControls(Z)V

    iget-object p2, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$4;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-direct {v0, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p2, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/q;)V
    .locals 13

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->wp(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->r:I

    int-to-double v1, v1

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->i:I

    int-to-double v3, v3

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->mn()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/q;->ia()D

    move-result-wide v7

    cmpl-double v9, v7, v5

    if-nez v9, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/q;->kk()D

    move-result-wide v7

    cmpl-double v9, v7, v5

    if-eqz v9, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/q;->iw()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/q;->mn()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/q;->ia()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/q;->kk()D

    move-result-wide v7

    move-wide v11, v3

    move-wide v3, v1

    move-wide v1, v5

    move-wide v5, v11

    goto :goto_0

    :cond_2
    move-wide v7, v3

    move-wide v3, v5

    move-wide v5, v1

    move-wide v1, v3

    :goto_0
    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->dq(DDDDLjava/lang/String;)V

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v9

    instance-of v9, v9, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/s;

    if-eqz v9, :cond_3

    :goto_1
    return-void

    :cond_3
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;

    move-wide v8, v7

    move-wide v6, v5

    move-wide v4, v3

    move-wide v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;DDDD)V

    const-wide/32 v1, 0x7fffffff

    invoke-static {v1, v2, v10, v0}, Lcom/bykv/vk/openvk/component/video/dq/s/d;->dq(JLjava/lang/String;Lcom/bykv/vk/openvk/component/video/dq/s/d$d;)V

    return-void
.end method

.method public dq(ZLjava/util/Map;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "webview_source"

    invoke-virtual {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ig/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/component/mp/dq;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d(Z)Lcom/bytedance/sdk/openadsdk/core/ig/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->bl()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/ig/p;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "landingpage_endcard"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "reward_endcard"

    goto :goto_0

    :cond_2
    const-string v1, "fullscreen_endcard"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    goto :goto_1

    :cond_3
    const/4 p1, 0x5

    :goto_1
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->ox(I)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->k:Lcom/bytedance/sdk/openadsdk/core/fw/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/dq;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->d(I)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/iw/dq;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->wp:Lcom/bytedance/sdk/openadsdk/core/fw/kk;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/kk;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->kx:Lcom/bytedance/sdk/openadsdk/o/dq;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/o/dq;)Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->h:Lcom/bytedance/sdk/openadsdk/core/fw/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/d;)Lcom/bytedance/sdk/openadsdk/core/c;

    return-void
.end method

.method public h()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

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

.method public ji()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->jy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->jy:Z

    :cond_0
    return-void
.end method

.method public jy()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->jy()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public wp()Ljava/lang/String;
    .locals 1

    const-string v0, "endcard"

    return-object v0
.end method
