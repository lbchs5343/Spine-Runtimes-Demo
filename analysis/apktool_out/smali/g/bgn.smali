.class public final Lg/bgn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final aa:I

.field public ab:Landroid/graphics/drawable/Drawable;

.field public final ac:Z

.field public final ad:Landroid/view/Window;

.field public final ae:I

.field public af:Landroid/view/View;

.field public ag:Landroid/view/View;

.field public ah:Landroid/os/Message;

.field public b:I

.field public c:Ljava/lang/CharSequence;

.field public final d:Lg/get;

.field public e:Landroid/os/Message;

.field public f:Landroid/widget/ListAdapter;

.field public final g:Lg/giy;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public final j:I

.field public k:Landroid/os/Message;

.field public l:Ljava/lang/CharSequence;

.field public final m:Landroid/content/Context;

.field public n:Landroid/widget/ImageView;

.field public final o:I

.field public final p:I

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public t:Landroidx/core/widget/NestedScrollView;

.field public u:Landroid/widget/Button;

.field public v:Landroid/widget/Button;

.field public w:Z

.field public final x:Lg/fpl;

.field public y:Landroid/widget/Button;

.field public z:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/fpl;Landroid/view/Window;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/bgn;->w:Z

    const/4 v1, -0x1

    iput v1, p0, Lg/bgn;->a:I

    new-instance v1, Lg/get;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lg/bgn;->d:Lg/get;

    iput-object p1, p0, Lg/bgn;->m:Landroid/content/Context;

    iput-object p2, p0, Lg/bgn;->x:Lg/fpl;

    iput-object p3, p0, Lg/bgn;->ad:Landroid/view/Window;

    new-instance p3, Lg/giy;

    invoke-direct {p3}, Lg/giy;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p3, Lg/giy;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lg/bgn;->g:Lg/giy;

    sget-object p3, Lg/acs;->i:[I

    const v1, 0x7f04002e

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lg/bgn;->aa:I

    const/4 p3, 0x2

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    const/4 p3, 0x4

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lg/bgn;->j:I

    const/4 p3, 0x5

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lg/bgn;->p:I

    const/4 p3, 0x7

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lg/bgn;->o:I

    const/4 p3, 0x3

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lg/bgn;->ae:I

    const/4 p3, 0x6

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lg/bgn;->ac:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2}, Lg/aoz;->d()Lg/dkn;

    move-result-object p1

    invoke-virtual {p1, v1}, Lg/dkn;->s(I)Z

    return-void
.end method

.method public static ai(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lg/bgn;->ai(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method public static aj(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public static ak(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    if-nez p0, :cond_1

    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    instance-of p1, p0, Landroid/view/ViewStub;

    if-eqz p1, :cond_3

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    :cond_3
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public final al(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lg/bgn;->g:Lg/giy;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iput-object p3, p0, Lg/bgn;->c:Ljava/lang/CharSequence;

    iput-object p2, p0, Lg/bgn;->k:Landroid/os/Message;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p3, p0, Lg/bgn;->h:Ljava/lang/CharSequence;

    iput-object p2, p0, Lg/bgn;->e:Landroid/os/Message;

    return-void

    :cond_3
    iput-object p3, p0, Lg/bgn;->z:Ljava/lang/CharSequence;

    iput-object p2, p0, Lg/bgn;->ah:Landroid/os/Message;

    return-void
.end method
