.class public Lcn/trinea/android/lib/alliance/view/UsefulAppItemLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public w:Z

.field public x:Lg/ebt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    new-instance v0, Lg/ebt;

    invoke-direct {v0}, Lg/ebt;-><init>()V

    iput-object v0, p0, Lcn/trinea/android/lib/alliance/view/UsefulAppItemLayout;->x:Lg/ebt;

    invoke-virtual {v0, p0}, Lg/ebt;->o(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3fa66666    # 1.3f

    const/4 v3, 0x1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44160000    # 600.0f

    mul-float v2, v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcn/trinea/android/lib/alliance/view/UsefulAppItemLayout;->x:Lg/ebt;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcn/trinea/android/lib/alliance/view/UsefulAppItemLayout;->w:Z

    if-eq v1, v2, :cond_8

    iput-boolean v1, p0, Lcn/trinea/android/lib/alliance/view/UsefulAppItemLayout;->w:Z

    new-instance v1, Lg/ebt;

    invoke-direct {v1}, Lg/ebt;-><init>()V

    iget-object v2, p0, Lcn/trinea/android/lib/alliance/view/UsefulAppItemLayout;->x:Lg/ebt;

    iget-object v4, v1, Lg/ebt;->f:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v5, v2, Lg/ebt;->f:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget-object v7, v2, Lg/ebt;->f:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/djm;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lg/djm;->h()Lg/djm;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcn/trinea/android/lib/alliance/view/UsefulAppItemLayout;->w:Z

    const v4, 0x7f090215

    const v5, 0x7f090120

    if-eqz v2, :cond_5

    const v2, 0x7f090196

    invoke-virtual {v1, v2}, Lg/ebt;->n(I)V

    invoke-virtual {v1, v4}, Lg/ebt;->n(I)V

    invoke-virtual {v1, v4}, Lg/ebt;->l(I)V

    invoke-virtual {v1, v5}, Lg/ebt;->l(I)V

    invoke-virtual {v1, v5}, Lg/ebt;->n(I)V

    const/high16 v2, 0x41400000    # 12.0f

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const v2, 0x7f0901a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v1, Lg/ebt;->f:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v8, Lg/djm;

    invoke-direct {v8}, Lg/djm;-><init>()V

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/djm;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, v2, Lg/djm;->a:Lg/crp;

    iput v5, v2, Lg/crp;->ap:I

    const/4 v6, -0x1

    iput v6, v2, Lg/crp;->v:I

    iput v6, v2, Lg/crp;->ao:I

    iput v6, v2, Lg/crp;->ay:I

    iput v6, v2, Lg/crp;->bo:I

    iput v0, v2, Lg/crp;->g:I

    :cond_5
    :goto_2
    invoke-virtual {v1, p0}, Lg/ebt;->m(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Lg/ebt;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcn/trinea/android/lib/alliance/view/UsefulAppItemLayout;->w:Z

    if-eqz v1, :cond_6

    const/4 v3, 0x2

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcn/trinea/android/lib/alliance/view/UsefulAppItemLayout;->w:Z

    if-eqz v1, :cond_7

    const v1, 0x7fffffff

    goto :goto_3

    :cond_7
    const/4 v1, 0x3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_8
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void
.end method
