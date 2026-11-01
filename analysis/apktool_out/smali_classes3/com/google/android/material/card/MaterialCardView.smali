.class public Lcom/google/android/material/card/MaterialCardView;
.super Lg/dur;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lg/cbe;


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I


# instance fields
.field public final d:Lg/bqf;

.field public e:Z

.field public f:Z

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->a:[I

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->c:[I

    const v0, 0x7f040482

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const v0, 0x7f1304f0

    const v4, 0x7f04035a

    invoke-static {p1, p2, v4, v0}, Lg/egh;->ax(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lg/dur;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->e:Z

    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->g:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f1304f0

    new-array v6, p1, [I

    sget-object v3, Lg/git;->u:[I

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lg/eyt;->bd(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    new-instance v1, Lg/bqf;

    invoke-direct {v1, p0, v2}, Lg/bqf;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    invoke-super {p0}, Lg/dur;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, v1, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {v3, v2}, Lg/ddm;->en(Landroid/content/res/ColorStateList;)V

    invoke-super {p0}, Lg/dur;->getContentPaddingLeft()I

    move-result v2

    invoke-super {p0}, Lg/dur;->getContentPaddingTop()I

    move-result v4

    invoke-super {p0}, Lg/dur;->getContentPaddingRight()I

    move-result v5

    invoke-super {p0}, Lg/dur;->getContentPaddingBottom()I

    move-result v6

    iget-object v7, v1, Lg/bqf;->s:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1}, Lg/bqf;->ae()V

    iget-object v2, v1, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v4, p2, v5}, Lg/gs;->ai(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v1, Lg/bqf;->f:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_0

    const/4 v4, -0x1

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v1, Lg/bqf;->f:Landroid/content/res/ColorStateList;

    :cond_0
    const/16 v4, 0xc

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v1, Lg/bqf;->c:I

    invoke-virtual {p2, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lg/bqf;->o:Z

    invoke-virtual {v2, v4}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v4, p2, v5}, Lg/gs;->ai(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v1, Lg/bqf;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, p2, v5}, Lg/gs;->ah(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lg/bqf;->am(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x5

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v1, Lg/bqf;->n:I

    const/4 v4, 0x4

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v1, Lg/bqf;->i:I

    const/4 v4, 0x3

    const v5, 0x800035

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v1, Lg/bqf;->y:I

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v4, p2, v5}, Lg/gs;->ai(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v1, Lg/bqf;->d:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_1

    const v4, 0x7f04010a

    invoke-static {v4, v2}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v1, Lg/bqf;->d:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2, v0}, Lg/gs;->ai(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :cond_2
    iget-object p1, v1, Lg/bqf;->g:Lg/ddm;

    invoke-virtual {p1, v0}, Lg/ddm;->en(Landroid/content/res/ColorStateList;)V

    iget-object v0, v1, Lg/bqf;->e:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_3

    iget-object v4, v1, Lg/bqf;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {v2}, Lg/dur;->getCardElevation()F

    move-result v0

    invoke-virtual {v3, v0}, Lg/ddm;->ec(F)V

    iget v0, v1, Lg/bqf;->c:I

    int-to-float v0, v0

    iget-object v4, v1, Lg/bqf;->f:Landroid/content/res/ColorStateList;

    iget-object v5, p1, Lg/ddm;->ds:Lg/dwo;

    iput v0, v5, Lg/dwo;->b:F

    invoke-virtual {p1}, Lg/ddm;->invalidateSelf()V

    iget-object v0, p1, Lg/ddm;->ds:Lg/dwo;

    iget-object v5, v0, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    if-eq v5, v4, :cond_4

    iput-object v4, v0, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/ddm;->onStateChange([I)Z

    :cond_4
    invoke-virtual {v1, v3}, Lg/bqf;->ad(Landroid/graphics/drawable/Drawable;)Lg/anz;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lg/bqf;->ak()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lg/bqf;->al()Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    :cond_5
    iput-object p1, v1, Lg/bqf;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Lg/bqf;->ad(Landroid/graphics/drawable/Drawable;)Lg/anz;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v1, v1, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->w:Lg/ddm;

    iget-object v0, v0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCardForegroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->g:Lg/ddm;

    iget-object v0, v0, Lg/ddm;->ds:Lg/dwo;

    iget-object v0, v0, Lg/dwo;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCardViewRadius()F
    .locals 1

    invoke-super {p0}, Lg/dur;->getRadius()F

    move-result v0

    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->t:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckedIconGravity()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget v0, v0, Lg/bqf;->y:I

    return v0
.end method

.method public getCheckedIconMargin()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget v0, v0, Lg/bqf;->i:I

    return v0
.end method

.method public getCheckedIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget v0, v0, Lg/bqf;->n:I

    return v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->s:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->s:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->s:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->s:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->w:Lg/ddm;

    iget-object v0, v0, Lg/ddm;->ds:Lg/dwo;

    iget v0, v0, Lg/dwo;->n:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {v0}, Lg/ddm;->eq()F

    move-result v0

    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShapeAppearanceModel()Lg/cjg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->q:Lg/cjg;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->f:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget v0, v0, Lg/bqf;->c:I

    return v0
.end method

.method public final h()V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v1, v0, Lg/bqf;->e:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lg/bqf;->e:Landroid/graphics/drawable/RippleDrawable;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v0, Lg/bqf;->e:Landroid/graphics/drawable/RippleDrawable;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->e:Z

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    invoke-virtual {v0}, Lg/bqf;->ac()V

    iget-object v0, v0, Lg/bqf;->w:Lg/ddm;

    invoke-static {p0, v0}, Lg/kj;->j(Landroid/view/View;Lg/ddm;)V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lg/bqf;->o:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->a:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->c:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->f:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->b:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.cardview.widget.CardView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->e:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.cardview.widget.CardView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lg/bqf;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->e:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lg/dur;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    invoke-virtual {v0, p1, p2}, Lg/bqf;->af(II)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-boolean v1, v0, Lg/bqf;->z:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/bqf;->z:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {v0, p1}, Lg/ddm;->en(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {v0, p1}, Lg/ddm;->en(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Lg/dur;->setCardElevation(F)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, p1, Lg/bqf;->w:Lg/ddm;

    iget-object p1, p1, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lg/dur;->getCardElevation()F

    move-result p1

    invoke-virtual {v0, p1}, Lg/ddm;->ec(F)V

    return-void
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v0, v0, Lg/bqf;->g:Lg/ddm;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lg/ddm;->en(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iput-boolean p1, v0, Lg/bqf;->o:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->e:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->toggle()V

    :cond_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    invoke-virtual {v0, p1}, Lg/bqf;->am(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconGravity(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget v1, v0, Lg/bqf;->y:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lg/bqf;->y:I

    iget-object p1, v0, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lg/bqf;->af(II)V

    :cond_0
    return-void
.end method

.method public setCheckedIconMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iput p1, v0, Lg/bqf;->i:I

    return-void
.end method

.method public setCheckedIconMarginResource(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iput p1, v0, Lg/bqf;->i:I

    :cond_0
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/fso;->ai(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    invoke-virtual {v0, p1}, Lg/bqf;->am(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iput p1, v0, Lg/bqf;->n:I

    return-void
.end method

.method public setCheckedIconSizeResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iput p1, v0, Lg/bqf;->n:I

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iput-object p1, v0, Lg/bqf;->h:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lg/bqf;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/bqf;->ac()V

    :cond_0
    return-void
.end method

.method public setDragged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->f:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->f:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->h()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Lg/dur;->setMaxCardElevation(F)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    invoke-virtual {p1}, Lg/bqf;->ai()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lg/dyl;)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 0

    invoke-super {p0, p1}, Lg/dur;->setPreventCornerOverlap(Z)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    invoke-virtual {p1}, Lg/bqf;->ai()V

    invoke-virtual {p1}, Lg/bqf;->ae()V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v1, v0, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {v1, p1}, Lg/ddm;->er(F)V

    iget-object v1, v0, Lg/bqf;->g:Lg/ddm;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lg/ddm;->er(F)V

    :cond_0
    iget-object v0, v0, Lg/bqf;->u:Lg/ddm;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg/ddm;->er(F)V

    :cond_1
    return-void
.end method

.method public setRadius(F)V
    .locals 3

    invoke-super {p0, p1}, Lg/dur;->setRadius(F)V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v1, v0, Lg/bqf;->q:Lg/cjg;

    invoke-virtual {v1}, Lg/cjg;->r()Lg/bem;

    move-result-object v1

    new-instance v2, Lg/ett;

    invoke-direct {v2, p1}, Lg/ett;-><init>(F)V

    iput-object v2, v1, Lg/bem;->e:Lg/gjn;

    new-instance v2, Lg/ett;

    invoke-direct {v2, p1}, Lg/ett;-><init>(F)V

    iput-object v2, v1, Lg/bem;->g:Lg/gjn;

    new-instance v2, Lg/ett;

    invoke-direct {v2, p1}, Lg/ett;-><init>(F)V

    iput-object v2, v1, Lg/bem;->l:Lg/gjn;

    new-instance v2, Lg/ett;

    invoke-direct {v2, p1}, Lg/ett;-><init>(F)V

    iput-object v2, v1, Lg/bem;->a:Lg/gjn;

    invoke-virtual {v1}, Lg/bem;->n()Lg/cjg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/bqf;->ab(Lg/cjg;)V

    iget-object p1, v0, Lg/bqf;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {v0}, Lg/bqf;->aj()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v0, Lg/bqf;->j:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lg/dur;->getPreventCornerOverlap()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lg/bqf;->w:Lg/ddm;

    invoke-virtual {p1}, Lg/ddm;->eo()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lg/bqf;->ae()V

    :cond_1
    invoke-virtual {v0}, Lg/bqf;->aj()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lg/bqf;->ai()V

    :cond_2
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iput-object p1, v0, Lg/bqf;->d:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lg/bqf;->e:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/eyt;->bh(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iput-object p1, v0, Lg/bqf;->d:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lg/bqf;->e:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lg/cjg;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/cjg;->q(Landroid/graphics/RectF;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    invoke-virtual {v0, p1}, Lg/bqf;->ab(Lg/cjg;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget-object v1, v0, Lg/bqf;->f:Landroid/content/res/ColorStateList;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lg/bqf;->f:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Lg/bqf;->g:Lg/ddm;

    iget v0, v0, Lg/bqf;->c:I

    int-to-float v0, v0

    iget-object v2, v1, Lg/ddm;->ds:Lg/dwo;

    iput v0, v2, Lg/dwo;->b:F

    invoke-virtual {v1}, Lg/ddm;->invalidateSelf()V

    iget-object v0, v1, Lg/ddm;->ds:Lg/dwo;

    iget-object v2, v0, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    if-eq v2, p1, :cond_1

    iput-object p1, v0, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/ddm;->onStateChange([I)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    iget v1, v0, Lg/bqf;->c:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Lg/bqf;->c:I

    iget-object v1, v0, Lg/bqf;->g:Lg/ddm;

    int-to-float p1, p1

    iget-object v0, v0, Lg/bqf;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v1, Lg/ddm;->ds:Lg/dwo;

    iput p1, v2, Lg/dwo;->b:F

    invoke-virtual {v1}, Lg/ddm;->invalidateSelf()V

    iget-object p1, v1, Lg/ddm;->ds:Lg/dwo;

    iget-object v2, p1, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    if-eq v2, v0, :cond_1

    iput-object v0, p1, Lg/dwo;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/ddm;->onStateChange([I)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 0

    invoke-super {p0, p1}, Lg/dur;->setUseCompatPadding(Z)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    invoke-virtual {p1}, Lg/bqf;->ai()V

    invoke-virtual {p1}, Lg/bqf;->ae()V

    return-void
.end method

.method public final toggle()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->d:Lg/bqf;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lg/bqf;->o:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/card/MaterialCardView;->e:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/android/material/card/MaterialCardView;->e:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->h()V

    iget-boolean v1, p0, Lcom/google/android/material/card/MaterialCardView;->e:Z

    invoke-virtual {v0, v1, v2}, Lg/bqf;->ah(ZZ)V

    :cond_0
    return-void
.end method
