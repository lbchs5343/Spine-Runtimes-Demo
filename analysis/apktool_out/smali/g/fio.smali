.class public final Lg/fio;
.super Lg/cw;


# static fields
.field public static final j:I


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#7ed321"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lg/fio;->j:I

    return-void
.end method


# virtual methods
.method public final d(II)V
    .locals 0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lg/fio;->l:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lg/fio;->m:I

    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lg/fio;->n:Landroid/graphics/Paint;

    iget-object v1, p0, Lg/cw;->b:Ljava/lang/Object;

    check-cast v1, Lg/dlv;

    :try_start_0
    invoke-virtual {v1}, Lg/dlv;->ob()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lg/fio;->k:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lg/dlv;->ob()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget v2, p0, Lg/fio;->l:I

    int-to-float v3, v2

    iget v4, p0, Lg/fio;->m:I

    int-to-float v5, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1}, Lg/dlv;->ob()F

    move-result v1

    mul-float v2, v2, v1

    invoke-virtual {p1, v3, v5, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lg/cw;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lg/cw;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lg/fio;->j:I

    invoke-static {v0, v1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lg/fio;->k:I

    return-void
.end method
