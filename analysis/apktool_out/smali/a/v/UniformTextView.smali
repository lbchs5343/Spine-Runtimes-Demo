.class public La/v/UniformTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private num:I

.field private oneHeight:I

.field private oneWidth:I

.field private p:Landroid/graphics/Paint;

.field private str:Ljava/lang/String;

.field private textSize:I

.field private texts:[Ljava/lang/String;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xf

    iput v0, p0, La/v/UniformTextView;->textSize:I

    iput-object p1, p0, La/v/UniformTextView;->context:Landroid/content/Context;

    invoke-direct {p0}, La/v/UniformTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0xf

    iput p2, p0, La/v/UniformTextView;->textSize:I

    iput-object p1, p0, La/v/UniformTextView;->context:Landroid/content/Context;

    invoke-direct {p0}, La/v/UniformTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xf

    iput p2, p0, La/v/UniformTextView;->textSize:I

    iput-object p1, p0, La/v/UniformTextView;->context:Landroid/content/Context;

    invoke-direct {p0}, La/v/UniformTextView;->init()V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, La/v/UniformTextView;->num:I

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, La/v/UniformTextView;->viewWidth:I

    div-int/2addr v1, v0

    iget v0, p0, La/v/UniformTextView;->viewHeight:I

    iget v2, p0, La/v/UniformTextView;->oneHeight:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, La/v/UniformTextView;->num:I

    if-ge v2, v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_1

    iget-object v3, p0, La/v/UniformTextView;->texts:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget v4, p0, La/v/UniformTextView;->viewWidth:I

    iget v6, p0, La/v/UniformTextView;->oneWidth:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, p0, La/v/UniformTextView;->context:Landroid/content/Context;

    invoke-static {v6, v5}, Lg/fso;->al(Landroid/content/Context;F)F

    move-result v5

    sub-float/2addr v4, v5

    int-to-float v5, v0

    iget-object v6, p0, La/v/UniformTextView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v3, p0, La/v/UniformTextView;->texts:[Ljava/lang/String;

    aget-object v3, v3, v2

    mul-int v4, v2, v1

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v4

    iget v4, p0, La/v/UniformTextView;->oneWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    int-to-float v4, v5

    int-to-float v5, v0

    iget-object v6, p0, La/v/UniformTextView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, La/v/UniformTextView;->texts:[Ljava/lang/String;

    aget-object v3, v3, v2

    mul-int v4, v2, v1

    int-to-float v4, v4

    iget-object v6, p0, La/v/UniformTextView;->context:Landroid/content/Context;

    invoke-static {v6, v5}, Lg/fso;->al(Landroid/content/Context;F)F

    move-result v5

    add-float/2addr v5, v4

    int-to-float v4, v0

    iget-object v6, p0, La/v/UniformTextView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, La/v/UniformTextView;->viewWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, La/v/UniformTextView;->viewHeight:I

    return-void
.end method


# virtual methods
.method public ce(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, La/v/UniformTextView;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, La/v/UniformTextView;->init()V

    invoke-direct {p0, p1}, La/v/UniformTextView;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setTestSize(I)V
    .locals 0

    iput p1, p0, La/v/UniformTextView;->textSize:I

    iget-object p1, p0, La/v/UniformTextView;->str:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, La/v/UniformTextView;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, La/v/UniformTextView;->p:Landroid/graphics/Paint;

    iget-object v1, p0, La/v/UniformTextView;->context:Landroid/content/Context;

    iget v2, p0, La/v/UniformTextView;->textSize:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lg/fso;->al(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iput-object p1, p0, La/v/UniformTextView;->str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, La/v/UniformTextView;->num:I

    const-string v0, "\u6c49"

    invoke-virtual {p0, v0}, La/v/UniformTextView;->ce(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, La/v/UniformTextView;->oneWidth:I

    invoke-virtual {p0, p1}, La/v/UniformTextView;->ce(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, La/v/UniformTextView;->oneHeight:I

    iget v0, p0, La/v/UniformTextView;->num:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, La/v/UniformTextView;->num:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_1
    iput-object v0, p0, La/v/UniformTextView;->texts:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
