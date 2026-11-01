.class public Lcom/bytedance/msdk/dq/s/mn;
.super Ljava/lang/Object;


# static fields
.field private static d:I = -0x1

.field private static dq:F = -1.0f

.field private static ox:F = -1.0f

.field private static p:I = -0x1

.field private static s:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/mn;->dq(Landroid/content/Context;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/msdk/dq/s/mn;->dq(Landroid/content/Context;)V

    sget p0, Lcom/bytedance/msdk/dq/s/mn;->p:I

    return p0
.end method

.method public static d(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static dq(Landroid/content/Context;F)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/msdk/dq/s/mn;->dq(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/bytedance/msdk/dq/s/mn;->p(Landroid/content/Context;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_0
    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static dq(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/bytedance/msdk/dq/s/mn;->dq:F

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/bytedance/msdk/dq/s/mn;->d:I

    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v1, Lcom/bytedance/msdk/dq/s/mn;->ox:F

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/bytedance/msdk/dq/s/mn;->p:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/bytedance/msdk/dq/s/mn;->s:I

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    sget p0, Lcom/bytedance/msdk/dq/s/mn;->p:I

    sget v0, Lcom/bytedance/msdk/dq/s/mn;->s:I

    if-le p0, v0, :cond_3

    sput v0, Lcom/bytedance/msdk/dq/s/mn;->p:I

    sput p0, Lcom/bytedance/msdk/dq/s/mn;->s:I

    return-void

    :cond_2
    sget p0, Lcom/bytedance/msdk/dq/s/mn;->p:I

    sget v0, Lcom/bytedance/msdk/dq/s/mn;->s:I

    if-ge p0, v0, :cond_3

    sput v0, Lcom/bytedance/msdk/dq/s/mn;->p:I

    sput p0, Lcom/bytedance/msdk/dq/s/mn;->s:I

    :cond_3
    :goto_1
    return-void
.end method

.method public static ox(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/msdk/dq/s/mn;->dq(Landroid/content/Context;)V

    sget p0, Lcom/bytedance/msdk/dq/s/mn;->s:I

    return p0
.end method

.method public static p(Landroid/content/Context;)F
    .locals 0

    invoke-static {p0}, Lcom/bytedance/msdk/dq/s/mn;->dq(Landroid/content/Context;)V

    sget p0, Lcom/bytedance/msdk/dq/s/mn;->dq:F

    return p0
.end method

.method public static s(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/msdk/dq/s/mn;->dq(Landroid/content/Context;)V

    sget p0, Lcom/bytedance/msdk/dq/s/mn;->d:I

    return p0
.end method
