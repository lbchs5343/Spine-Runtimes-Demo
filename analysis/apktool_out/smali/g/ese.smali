.class public abstract Lg/ese;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lg/doz;


# instance fields
.field private cd:Lg/ig;

.field protected d:Lg/bfa;

.field protected dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private fw:Lg/bgd;

.field private gh:Lg/te;

.field private final i:Ljava/lang/Runnable;

.field private ia:Ljava/lang/String;

.field private ig:Z

.field private iw:I

.field private jy:I

.field private kk:F

.field private mn:I

.field private mp:Z

.field private no:Z

.field private o:Z

.field private ox:I

.field private p:I

.field private q:I

.field private final r:Ljava/lang/Runnable;

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lg/ese;->dq:Ljava/util/List;

    const/16 v0, 0x7d0

    iput v0, p0, Lg/ese;->ox:I

    const/16 v0, 0x1f4

    iput v0, p0, Lg/ese;->p:I

    const/16 v0, 0xa

    iput v0, p0, Lg/ese;->s:I

    const/4 v0, -0x1

    iput v0, p0, Lg/ese;->iw:I

    iput v0, p0, Lg/ese;->mn:I

    const-string v1, "normal"

    iput-object v1, p0, Lg/ese;->ia:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lg/ese;->kk:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/ese;->o:Z

    iput-boolean v1, p0, Lg/ese;->no:Z

    iput-boolean v1, p0, Lg/ese;->ig:Z

    iput-boolean v1, p0, Lg/ese;->mp:Z

    const/4 v1, 0x0

    iput v1, p0, Lg/ese;->q:I

    iput v1, p0, Lg/ese;->jy:I

    iput v1, p0, Lg/ese;->f:I

    new-instance v2, Lg/bre;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lg/bre;-><init>(Lg/ese;I)V

    iput-object v2, p0, Lg/ese;->r:Ljava/lang/Runnable;

    new-instance v2, Lg/bre;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lg/bre;-><init>(Lg/ese;I)V

    iput-object v2, p0, Lg/ese;->i:Ljava/lang/Runnable;

    new-instance v2, Lg/brd;

    invoke-direct {v2, p0, p1}, Lg/brd;-><init>(Lg/ese;Landroid/content/Context;)V

    iput-object v2, p0, Lg/ese;->d:Lg/bfa;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {p0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lg/bgd;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v4, -0x10000

    iput v4, v2, Lg/bgd;->g:I

    const v4, -0xffff01

    iput v4, v2, Lg/bgd;->c:I

    const/4 v4, 0x5

    iput v4, v2, Lg/bgd;->d:I

    const/16 v4, 0x14

    iput v4, v2, Lg/bgd;->e:I

    iput v4, v2, Lg/bgd;->h:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lg/bgd;->f:Ljava/util/ArrayList;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lg/dxo;->f(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lg/ese;->fw:Lg/bgd;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lg/ese;)F
    .locals 0

    iget p0, p0, Lg/ese;->kk:F

    return p0
.end method

.method public static synthetic dq(Lg/ese;)Z
    .locals 0

    iget-boolean p0, p0, Lg/ese;->ig:Z

    return p0
.end method

.method public static synthetic iw(Lg/ese;)Z
    .locals 0

    iget-boolean p0, p0, Lg/ese;->mp:Z

    return p0
.end method

.method public static synthetic ox(Lg/ese;)Z
    .locals 0

    iget-boolean p0, p0, Lg/ese;->no:Z

    return p0
.end method

.method public static synthetic p(Lg/ese;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lg/ese;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic s(Lg/ese;)I
    .locals 0

    iget p0, p0, Lg/ese;->ox:I

    return p0
.end method


# virtual methods
.method public d(I)Lg/ese;
    .locals 1

    iget-object v0, p0, Lg/ese;->fw:Lg/bgd;

    invoke-virtual {v0, p1}, Lg/bgd;->setSelectedColor(I)V

    return-object p0
.end method

.method public d(Z)Lg/ese;
    .locals 0

    iput-boolean p1, p0, Lg/ese;->mp:Z

    return-object p0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lg/ese;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lg/ese;->i:Ljava/lang/Runnable;

    iget v1, p0, Lg/ese;->ox:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lg/ese;->no:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lg/ese;->ox()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lg/ese;->d()V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dq(II)Landroid/view/View;
    .locals 3

    iget-object p1, p0, Lg/ese;->dq:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p2}, Lg/ese;->mn(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public dq(F)Lg/ese;
    .locals 0

    iput p1, p0, Lg/ese;->kk:F

    return-object p0
.end method

.method public dq(I)Lg/ese;
    .locals 0

    iput p1, p0, Lg/ese;->ox:I

    invoke-virtual {p0}, Lg/ese;->d()V

    return-object p0
.end method

.method public dq(Ljava/lang/Object;)Lg/ese;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lg/ese;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lg/ese;->dq:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lg/ese;->o:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/ese;->fw:Lg/bgd;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p1, Lg/bgd;->e:I

    iget v4, p1, Lg/bgd;->h:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v3, p1, Lg/bgd;->d:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p1, Lg/bgd;->c:I

    invoke-static {v2}, Lg/bgd;->i(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p1, Lg/bgd;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lg/ese;->cd:Lg/ig;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lg/gbe;->h()V

    iget-object p1, p0, Lg/ese;->fw:Lg/bgd;

    iget v1, p0, Lg/ese;->q:I

    iget-object v2, p0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v2}, Lg/bfa;->getCurrentItem()I

    move-result v2

    iget-object v3, p1, Lg/bgd;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget v6, p1, Lg/bgd;->c:I

    invoke-static {v6}, Lg/bgd;->i(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p1, Lg/bgd;->g:I

    invoke-static {v1}, Lg/bgd;->i(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput v2, p1, Lg/bgd;->a:I

    :cond_3
    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lg/ese;
    .locals 6

    iput-object p1, p0, Lg/ese;->ia:Ljava/lang/String;

    iget v2, p0, Lg/ese;->s:I

    iget v3, p0, Lg/ese;->iw:I

    iget v4, p0, Lg/ese;->mn:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lg/ese;->dq(Ljava/lang/String;IIIZ)V

    return-object v0
.end method

.method public dq(Z)Lg/ese;
    .locals 0

    iput-boolean p1, p0, Lg/ese;->no:Z

    invoke-virtual {p0}, Lg/ese;->d()V

    return-object p0
.end method

.method public dq()V
    .locals 6

    iget-object v1, p0, Lg/ese;->ia:Ljava/lang/String;

    iget v2, p0, Lg/ese;->s:I

    iget v3, p0, Lg/ese;->iw:I

    iget v4, p0, Lg/ese;->mn:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lg/ese;->dq(Ljava/lang/String;IIIZ)V

    iget-object v1, v0, Lg/ese;->cd:Lg/ig;

    if-nez v1, :cond_0

    new-instance v1, Lg/ig;

    invoke-direct {v1, p0}, Lg/ig;-><init>(Lg/ese;)V

    iput-object v1, v0, Lg/ese;->cd:Lg/ig;

    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v1, p0}, Lg/bfa;->bq(Lg/ese;)V

    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    iget-object v2, v0, Lg/ese;->cd:Lg/ig;

    invoke-virtual {v1, v2}, Lg/bfa;->setAdapter(Lg/gbe;)V

    :cond_0
    iget v1, v0, Lg/ese;->q:I

    if-ltz v1, :cond_1

    iget-object v2, v0, Lg/ese;->dq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Lg/ese;->q:I

    :cond_2
    iget-boolean v1, v0, Lg/ese;->ig:Z

    if-eqz v1, :cond_3

    const v1, 0x3fffffff    # 1.9999999f

    iget v2, v0, Lg/ese;->q:I

    add-int/2addr v2, v1

    goto :goto_0

    :cond_3
    iget v2, v0, Lg/ese;->q:I

    :goto_0
    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lg/bfa;->br(IZ)V

    iget-boolean v1, v0, Lg/ese;->ig:Z

    if-nez v1, :cond_4

    invoke-virtual {p0, v2}, Lg/ese;->ia(I)V

    :cond_4
    iget-boolean v1, v0, Lg/ese;->no:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lg/ese;->d()V

    :cond_5
    return-void
.end method

.method public dq(IFI)V
    .locals 0

    iget-object p2, p0, Lg/ese;->gh:Lg/te;

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lg/ese;->ig:Z

    iget-object p3, p0, Lg/ese;->dq:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p1, p3, p2}, Lg/acr;->be(IIZ)I

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;IIIZ)V
    .locals 1

    iget-object p5, p0, Lg/ese;->cd:Lg/ig;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lg/gbe;->h()V

    :cond_0
    const/4 p5, 0x0

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p5, p0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {p5, p2}, Lg/bfa;->setPageMargin(I)V

    iget-object p5, p0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    instance-of v0, p5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    move-object v0, p5

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int/2addr p3, p2

    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, p2

    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p2, p0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {p2, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const-string p2, "linear"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lg/ese;->d:Lg/bfa;

    new-instance p2, Lg/bli;

    const/16 p3, 0xf

    invoke-direct {p2, p3}, Lg/bli;-><init>(I)V

    invoke-virtual {p1, p2}, Lg/bfa;->bg(Lg/bli;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lg/ese;->d:Lg/bfa;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lg/bfa;->bg(Lg/bli;)V

    :goto_0
    iget-object p1, p0, Lg/ese;->d:Lg/bfa;

    iget p2, p0, Lg/ese;->kk:F

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lg/bfa;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public getAdapter()Lg/gbe;
    .locals 1

    iget-object v0, p0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v0}, Lg/bfa;->getAdapter()Lg/gbe;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    iget-object v0, p0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v0}, Lg/bfa;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getViewPager()Lg/bfa;
    .locals 1

    iget-object v0, p0, Lg/ese;->d:Lg/bfa;

    return-object v0
.end method

.method public ia(I)V
    .locals 9

    iget-object v0, p0, Lg/ese;->gh:Lg/te;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lg/ese;->ig:Z

    iget-object v2, p0, Lg/ese;->dq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2, v0}, Lg/acr;->be(IIZ)I

    move-result v5

    iget-object v3, p0, Lg/ese;->gh:Lg/te;

    iget-boolean v4, p0, Lg/ese;->ig:Z

    const/4 v0, 0x1

    if-nez v5, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget-object v2, p0, Lg/ese;->dq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ne v5, v2, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v6, p1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :goto_2
    invoke-interface/range {v3 .. v8}, Lg/te;->dq(ZIIZZ)V

    goto :goto_3

    :cond_2
    move v6, p1

    :goto_3
    iget-boolean p1, p0, Lg/ese;->o:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lg/ese;->fw:Lg/bgd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p1, Lg/bgd;->e:I

    iget v3, p1, Lg/bgd;->h:I

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, p1, Lg/bgd;->d:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-boolean v2, p1, Lg/bgd;->b:Z

    iget v3, p1, Lg/bgd;->a:I

    iget-object v4, p1, Lg/bgd;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v3, v7, v2}, Lg/acr;->be(IIZ)I

    move-result v2

    iget-boolean v3, p1, Lg/bgd;->b:Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7, v3}, Lg/acr;->be(IIZ)I

    move-result v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_4

    :cond_3
    move v1, v3

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    if-ltz v2, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    if-ltz v1, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget v7, p1, Lg/bgd;->c:I

    invoke-static {v7}, Lg/bgd;->i(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v3, p1, Lg/bgd;->g:I

    invoke-static {v3}, Lg/bgd;->i(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v6, p1, Lg/bgd;->a:I

    :cond_4
    return-void
.end method

.method public iw(I)Lg/ese;
    .locals 6

    iput p1, p0, Lg/ese;->mn:I

    iget-object v1, p0, Lg/ese;->ia:Ljava/lang/String;

    iget v2, p0, Lg/ese;->s:I

    iget v3, p0, Lg/ese;->iw:I

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lg/ese;->dq(Ljava/lang/String;IIIZ)V

    return-object v0
.end method

.method public kk(I)V
    .locals 0

    return-void
.end method

.method public abstract mn(I)Landroid/view/View;
.end method

.method public no(I)V
    .locals 3

    iget-object v0, p0, Lg/ese;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lg/ese;->r:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public o(I)V
    .locals 6

    iget-object v1, p0, Lg/ese;->ia:Ljava/lang/String;

    iget v2, p0, Lg/ese;->s:I

    iget v3, p0, Lg/ese;->iw:I

    iget v4, p0, Lg/ese;->mn:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lg/ese;->dq(Ljava/lang/String;IIIZ)V

    iget-object v1, v0, Lg/ese;->cd:Lg/ig;

    if-nez v1, :cond_0

    new-instance v1, Lg/ig;

    invoke-direct {v1, p0}, Lg/ig;-><init>(Lg/ese;)V

    iput-object v1, v0, Lg/ese;->cd:Lg/ig;

    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v1, p0}, Lg/bfa;->bq(Lg/ese;)V

    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    iget-object v2, v0, Lg/ese;->cd:Lg/ig;

    invoke-virtual {v1, v2}, Lg/bfa;->setAdapter(Lg/gbe;)V

    :cond_0
    iget-boolean v1, v0, Lg/ese;->ig:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const v1, 0x7fffffff

    if-lt p1, v1, :cond_1

    iget-object p1, v0, Lg/ese;->d:Lg/bfa;

    const v1, 0x3fffffff    # 1.9999999f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lg/bfa;->br(IZ)V

    return-void

    :cond_1
    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v1, p1, v2}, Lg/bfa;->br(IZ)V

    return-void

    :cond_2
    if-ltz p1, :cond_4

    iget-object v1, v0, Lg/ese;->dq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v1, p1, v2}, Lg/bfa;->br(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public ox(I)Lg/ese;
    .locals 1

    iget-object v0, p0, Lg/ese;->fw:Lg/bgd;

    invoke-virtual {v0, p1}, Lg/bgd;->setUnSelectedColor(I)V

    return-object p0
.end method

.method public ox(Z)Lg/ese;
    .locals 0

    iput-boolean p1, p0, Lg/ese;->o:Z

    return-object p0
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lg/ese;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public p(I)Lg/ese;
    .locals 6

    iput p1, p0, Lg/ese;->s:I

    iget-object v1, p0, Lg/ese;->ia:Ljava/lang/String;

    iget v3, p0, Lg/ese;->iw:I

    iget v4, p0, Lg/ese;->mn:I

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lg/ese;->dq(Ljava/lang/String;IIIZ)V

    return-object v0
.end method

.method public p(Z)Lg/ese;
    .locals 2

    iget-object v0, p0, Lg/ese;->fw:Lg/bgd;

    invoke-virtual {v0, p1}, Lg/bgd;->setLoop(Z)V

    iget-boolean v0, p0, Lg/ese;->ig:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v0}, Lg/bfa;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lg/ese;->dq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1, p1}, Lg/acr;->be(IIZ)I

    move-result v0

    iput-boolean p1, p0, Lg/ese;->ig:Z

    iget-object p1, p0, Lg/ese;->cd:Lg/ig;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/gbe;->h()V

    iget-object p1, p0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {p1, v0}, Lg/bfa;->setCurrentItem(I)V

    :cond_0
    return-object p0
.end method

.method public p()V
    .locals 6

    iget-object v1, p0, Lg/ese;->ia:Ljava/lang/String;

    iget v2, p0, Lg/ese;->s:I

    iget v3, p0, Lg/ese;->iw:I

    iget v4, p0, Lg/ese;->mn:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lg/ese;->dq(Ljava/lang/String;IIIZ)V

    iget-object v1, v0, Lg/ese;->cd:Lg/ig;

    if-nez v1, :cond_0

    new-instance v1, Lg/ig;

    invoke-direct {v1, p0}, Lg/ig;-><init>(Lg/ese;)V

    iput-object v1, v0, Lg/ese;->cd:Lg/ig;

    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v1, p0}, Lg/bfa;->bq(Lg/ese;)V

    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    iget-object v2, v0, Lg/ese;->cd:Lg/ig;

    invoke-virtual {v1, v2}, Lg/bfa;->setAdapter(Lg/gbe;)V

    :cond_0
    iget v1, v0, Lg/ese;->q:I

    if-ltz v1, :cond_1

    iget-object v2, v0, Lg/ese;->dq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Lg/ese;->q:I

    :cond_2
    iget-boolean v1, v0, Lg/ese;->ig:Z

    if-eqz v1, :cond_3

    const v1, 0x3fffffff    # 1.9999999f

    iget v2, v0, Lg/ese;->q:I

    add-int/2addr v2, v1

    goto :goto_0

    :cond_3
    iget v2, v0, Lg/ese;->q:I

    :goto_0
    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lg/bfa;->br(IZ)V

    return-void
.end method

.method public s(I)Lg/ese;
    .locals 6

    iput p1, p0, Lg/ese;->iw:I

    iget-object v1, p0, Lg/ese;->ia:Ljava/lang/String;

    iget v2, p0, Lg/ese;->s:I

    iget v4, p0, Lg/ese;->mn:I

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lg/ese;->dq(Ljava/lang/String;IIIZ)V

    return-object v0
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lg/ese;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnPageChangeListener(Lg/te;)V
    .locals 0

    iput-object p1, p0, Lg/ese;->gh:Lg/te;

    return-void
.end method
