.class public final Lg/cjg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/gjn;

.field public b:Lg/bmr;

.field public c:Lg/afo;

.field public d:Lg/bmr;

.field public e:Lg/gjn;

.field public f:Lg/afo;

.field public g:Lg/gjn;

.field public h:Lg/bmr;

.field public i:Lg/afo;

.field public j:Lg/bmr;

.field public k:Lg/afo;

.field public l:Lg/gjn;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/eeu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/cjg;->f:Lg/afo;

    new-instance v0, Lg/eeu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/cjg;->i:Lg/afo;

    new-instance v0, Lg/eeu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/cjg;->k:Lg/afo;

    new-instance v0, Lg/eeu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/cjg;->c:Lg/afo;

    new-instance v0, Lg/ett;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/ett;-><init>(F)V

    iput-object v0, p0, Lg/cjg;->e:Lg/gjn;

    new-instance v0, Lg/ett;

    invoke-direct {v0, v1}, Lg/ett;-><init>(F)V

    iput-object v0, p0, Lg/cjg;->g:Lg/gjn;

    new-instance v0, Lg/ett;

    invoke-direct {v0, v1}, Lg/ett;-><init>(F)V

    iput-object v0, p0, Lg/cjg;->l:Lg/gjn;

    new-instance v0, Lg/ett;

    invoke-direct {v0, v1}, Lg/ett;-><init>(F)V

    iput-object v0, p0, Lg/cjg;->a:Lg/gjn;

    new-instance v0, Lg/bmr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bmr;-><init>(I)V

    iput-object v0, p0, Lg/cjg;->h:Lg/bmr;

    new-instance v0, Lg/bmr;

    invoke-direct {v0, v1}, Lg/bmr;-><init>(I)V

    iput-object v0, p0, Lg/cjg;->j:Lg/bmr;

    new-instance v0, Lg/bmr;

    invoke-direct {v0, v1}, Lg/bmr;-><init>(I)V

    iput-object v0, p0, Lg/cjg;->b:Lg/bmr;

    new-instance v0, Lg/bmr;

    invoke-direct {v0, v1}, Lg/bmr;-><init>(I)V

    iput-object v0, p0, Lg/cjg;->d:Lg/bmr;

    return-void
.end method

.method public static m(Landroid/content/Context;IILg/ett;)Lg/bem;
    .locals 6

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    sget-object p1, Lg/git;->o:[I

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p1, p0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    const/4 p2, 0x5

    invoke-static {p1, p2, p3}, Lg/cjg;->o(Landroid/content/res/TypedArray;ILg/gjn;)Lg/gjn;

    move-result-object p2

    const/16 p3, 0x8

    invoke-static {p1, p3, p2}, Lg/cjg;->o(Landroid/content/res/TypedArray;ILg/gjn;)Lg/gjn;

    move-result-object p3

    const/16 v3, 0x9

    invoke-static {p1, v3, p2}, Lg/cjg;->o(Landroid/content/res/TypedArray;ILg/gjn;)Lg/gjn;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {p1, v4, p2}, Lg/cjg;->o(Landroid/content/res/TypedArray;ILg/gjn;)Lg/gjn;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {p1, v5, p2}, Lg/cjg;->o(Landroid/content/res/TypedArray;ILg/gjn;)Lg/gjn;

    move-result-object p2

    new-instance v5, Lg/bem;

    invoke-direct {v5}, Lg/bem;-><init>()V

    invoke-static {v0}, Lg/kj;->n(I)Lg/afo;

    move-result-object v0

    iput-object v0, v5, Lg/bem;->f:Lg/afo;

    invoke-static {v0}, Lg/bem;->m(Lg/afo;)V

    iput-object p3, v5, Lg/bem;->e:Lg/gjn;

    invoke-static {v1}, Lg/kj;->n(I)Lg/afo;

    move-result-object p3

    iput-object p3, v5, Lg/bem;->i:Lg/afo;

    invoke-static {p3}, Lg/bem;->m(Lg/afo;)V

    iput-object v3, v5, Lg/bem;->g:Lg/gjn;

    invoke-static {v2}, Lg/kj;->n(I)Lg/afo;

    move-result-object p3

    iput-object p3, v5, Lg/bem;->k:Lg/afo;

    invoke-static {p3}, Lg/bem;->m(Lg/afo;)V

    iput-object v4, v5, Lg/bem;->l:Lg/gjn;

    invoke-static {p0}, Lg/kj;->n(I)Lg/afo;

    move-result-object p0

    iput-object p0, v5, Lg/bem;->c:Lg/afo;

    invoke-static {p0}, Lg/bem;->m(Lg/afo;)V

    iput-object p2, v5, Lg/bem;->a:Lg/gjn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public static n(Landroid/content/Context;Landroid/util/AttributeSet;II)Lg/bem;
    .locals 3

    new-instance v0, Lg/ett;

    const/4 v1, 0x0

    int-to-float v2, v1

    invoke-direct {v0, v2}, Lg/ett;-><init>(F)V

    sget-object v2, Lg/git;->r:[I

    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, p2, p3, v0}, Lg/cjg;->m(Landroid/content/Context;IILg/ett;)Lg/bem;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/content/res/TypedArray;ILg/gjn;)Lg/gjn;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance p2, Lg/ett;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lg/ett;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    new-instance p0, Lg/nu;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lg/nu;-><init>(F)V

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method


# virtual methods
.method public final p()Z
    .locals 1

    iget-object v0, p0, Lg/cjg;->i:Lg/afo;

    instance-of v0, v0, Lg/eeu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/cjg;->f:Lg/afo;

    instance-of v0, v0, Lg/eeu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/cjg;->k:Lg/afo;

    instance-of v0, v0, Lg/eeu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/cjg;->c:Lg/afo;

    instance-of v0, v0, Lg/eeu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q(Landroid/graphics/RectF;)Z
    .locals 5

    iget-object v0, p0, Lg/cjg;->d:Lg/bmr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lg/bmr;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/cjg;->j:Lg/bmr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/cjg;->h:Lg/bmr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/cjg;->b:Lg/bmr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/cjg;->e:Lg/gjn;

    invoke-interface {v1, p1}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v4, p0, Lg/cjg;->g:Lg/gjn;

    invoke-interface {v4, p1}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lg/cjg;->a:Lg/gjn;

    invoke-interface {v4, p1}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lg/cjg;->l:Lg/gjn;

    invoke-interface {v4, p1}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lg/cjg;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public final r()Lg/bem;
    .locals 2

    new-instance v0, Lg/bem;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lg/cjg;->f:Lg/afo;

    iput-object v1, v0, Lg/bem;->f:Lg/afo;

    iget-object v1, p0, Lg/cjg;->i:Lg/afo;

    iput-object v1, v0, Lg/bem;->i:Lg/afo;

    iget-object v1, p0, Lg/cjg;->k:Lg/afo;

    iput-object v1, v0, Lg/bem;->k:Lg/afo;

    iget-object v1, p0, Lg/cjg;->c:Lg/afo;

    iput-object v1, v0, Lg/bem;->c:Lg/afo;

    iget-object v1, p0, Lg/cjg;->e:Lg/gjn;

    iput-object v1, v0, Lg/bem;->e:Lg/gjn;

    iget-object v1, p0, Lg/cjg;->g:Lg/gjn;

    iput-object v1, v0, Lg/bem;->g:Lg/gjn;

    iget-object v1, p0, Lg/cjg;->l:Lg/gjn;

    iput-object v1, v0, Lg/bem;->l:Lg/gjn;

    iget-object v1, p0, Lg/cjg;->a:Lg/gjn;

    iput-object v1, v0, Lg/bem;->a:Lg/gjn;

    iget-object v1, p0, Lg/cjg;->h:Lg/bmr;

    iput-object v1, v0, Lg/bem;->h:Lg/bmr;

    iget-object v1, p0, Lg/cjg;->j:Lg/bmr;

    iput-object v1, v0, Lg/bem;->j:Lg/bmr;

    iget-object v1, p0, Lg/cjg;->b:Lg/bmr;

    iput-object v1, v0, Lg/bem;->b:Lg/bmr;

    iget-object v1, p0, Lg/cjg;->d:Lg/bmr;

    iput-object v1, v0, Lg/bem;->d:Lg/bmr;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/cjg;->e:Lg/gjn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/cjg;->g:Lg/gjn;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/cjg;->l:Lg/gjn;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/cjg;->a:Lg/gjn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
