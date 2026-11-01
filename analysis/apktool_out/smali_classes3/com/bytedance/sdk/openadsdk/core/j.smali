.class public Lcom/bytedance/sdk/openadsdk/core/j;
.super Ljava/lang/Object;


# static fields
.field private static final d:Z

.field private static final dq:Z

.field private static final ia:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static iw:Landroid/os/Handler;

.field private static final mn:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ox:I

.field private static p:I

.field private static s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/e;->jy()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->dq:Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/j;->dq()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->d:Z

    const/4 v0, -0x1

    sput v0, Lcom/bytedance/sdk/openadsdk/core/j;->ox:I

    sput v0, Lcom/bytedance/sdk/openadsdk/core/j;->p:I

    sput v0, Lcom/bytedance/sdk/openadsdk/core/j;->s:I

    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->iw:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "HUAWEI C8812"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "HUAWEI C8812E"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "HUAWEI C8825D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "HUAWEI U8825D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "HUAWEI C8950D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "HUAWEI U8950D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->mn:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "ZTE V955"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ZTE N881E"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ZTE N881F"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ZTE N880G"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ZTE N880F"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ZTE V889F"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->ia:Ljava/util/HashSet;

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/bytedance/sdk/component/mp/dq;)V
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "about:blank"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/mp/dq;->dq(Ljava/lang/String;)V

    sget v0, Lcom/bytedance/sdk/openadsdk/core/j;->s:I

    if-lez v0, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/mp/dq;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    check-cast p1, Landroid/view/ViewGroup;

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/mp/dq;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->ox(Lcom/bytedance/sdk/component/mp/dq;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/component/mp/dq;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/j$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/j$1;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/mp/dq;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/mp/dq;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/j$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/j$2;-><init>(Lcom/bytedance/sdk/component/mp/dq;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static dq()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->dq:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static ox(Lcom/bytedance/sdk/component/mp/dq;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/mp/dq;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/mp/dq;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-interface {p0}, Lcom/bytedance/sdk/component/mp/dq;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-interface {p0}, Lcom/bytedance/sdk/component/mp/dq;->removeAllViews()V

    :try_start_0
    invoke-interface {p0}, Lcom/bytedance/sdk/component/mp/dq;->dq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
