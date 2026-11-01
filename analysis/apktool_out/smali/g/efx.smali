.class public abstract Lg/efx;
.super Lg/cms;
.source "SourceFile"


# static fields
.field public static final synthetic aj:I


# instance fields
.field public ak:Landroid/widget/TextView;

.field public al:Z

.field public am:Z

.field public an:Landroid/widget/EditText;

.field public ao:Lg/cgg;

.field public ap:Lg/aoi;

.field public final aq:Lg/fvi;

.field public ar:Lg/sd;

.field public as:Landroid/widget/LinearLayout;

.field public at:Lg/dfi;

.field public au:Lg/gwf;

.field public aw:Z

.field public final ax:Z

.field public ay:Landroid/widget/TextView;

.field public az:Landroid/widget/TextView;

.field public ba:Z

.field public bb:Lg/efx;

.field public bc:Ljava/lang/Class;

.field public bd:Landroidx/recyclerview/widget/RecyclerView;

.field public be:Landroid/view/inputmethod/InputMethodManager;

.field public bf:Z

.field public bg:Ljava/lang/String;

.field public bh:Z

.field public bi:Lg/eml;

.field public bj:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lg/ub;-><init>()V

    new-instance v0, Lg/fvi;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/efx;->aq:Lg/fvi;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/efx;->al:Z

    iput-boolean v0, p0, Lg/efx;->bh:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/efx;->ba:Z

    iput-boolean v1, p0, Lg/efx;->ax:Z

    iput-boolean v0, p0, Lg/efx;->am:Z

    iput-boolean v0, p0, Lg/efx;->aw:Z

    return-void
.end method

.method public static bk(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "applist_show_system_app"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lg/byh;->r(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final bl()V
    .locals 5

    iget-object v0, p0, Lg/efx;->bi:Lg/eml;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Lg/fji;)V

    :cond_0
    iget-object v0, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean v0, p0, Lg/efx;->ba:Z

    if-nez v0, :cond_1

    new-instance v0, Lg/eml;

    iget-object v1, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/clm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lg/efx;->bi:Lg/eml;

    iget-object v1, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lg/fji;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lg/efx;->bi:Lg/eml;

    :goto_0
    iget-boolean v0, p0, Lg/efx;->ba:Z

    const v1, 0x7f0a0004

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    new-instance v3, Lg/fwd;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lg/fwd;-><init>(Lg/cms;II)V

    iput-object v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    iget-object v0, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v2, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    :goto_1
    iget-object v0, p0, Lg/efx;->at:Lg/dfi;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lg/efx;->ba:Z

    invoke-virtual {p0, p0, v0}, Lg/efx;->e(Lg/efx;Z)Lg/csm;

    move-result-object v0

    iget-boolean v2, p0, Lg/efx;->ax:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lg/efx;->at:Lg/dfi;

    new-instance v3, Lg/ccd;

    invoke-virtual {p0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {v3, p0, v1, v0}, Lg/ccd;-><init>(Lg/efx;ILg/csm;)V

    const-class v0, Lg/ajr;

    invoke-virtual {v2, v0, v3}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v0, p0, Lg/efx;->at:Lg/dfi;

    new-instance v1, Lg/fsk;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/fsk;-><init>(I)V

    const-class v2, Lg/edn;

    invoke-virtual {v0, v2, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    :cond_3
    iget-object v0, p0, Lg/efx;->at:Lg/dfi;

    iget-boolean v1, p0, Lg/efx;->ba:Z

    invoke-virtual {p0, p0, v1}, Lg/efx;->e(Lg/efx;Z)Lg/csm;

    move-result-object v1

    const-class v2, Lg/auj;

    invoke-virtual {v0, v2, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v0, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lg/efx;->at:Lg/dfi;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    :cond_4
    return-void
.end method

.method public final bm()V
    .locals 2

    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lg/efx;->bf:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final bn()V
    .locals 4

    iget-object v0, p0, Lg/efx;->ak:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0902a1

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/efx;->ay:Landroid/widget/TextView;

    const v3, 0x7f1202be

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lg/efx;->az:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/efx;->az:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lg/efx;->as:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/efx;->bj:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final bo(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/efx;->au:Lg/gwf;

    iget-object v0, v0, Lg/gwf;->h:Lg/cwz;

    iget-boolean v0, v0, Lg/haz;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/efx;->bn()V

    :cond_0
    iget-object v0, p0, Lg/efx;->ar:Lg/sd;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lg/cle;->ak(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/efx;->ar:Lg/sd;

    :cond_1
    iget-object v0, p0, Lg/efx;->au:Lg/gwf;

    iput-boolean p1, v0, Lg/gwf;->c:Z

    const-string v0, "applist_show_system_app"

    invoke-static {p0, v0, p1}, Lg/byh;->ad(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lg/ub;->invalidateOptionsMenu()V

    iget-object p1, p0, Lg/efx;->au:Lg/gwf;

    iget-object v0, p1, Lg/gwf;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lg/gwf;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final bp(Landroid/view/MenuItem;)V
    .locals 4

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lg/efx;->am:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v0}, Lg/efx;->bk(Landroid/content/Context;)Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    const v1, 0x7f08010c

    goto :goto_0

    :cond_1
    const v1, 0x7f08010b

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    const v0, 0x7f1200b8

    goto :goto_1

    :cond_2
    const v0, 0x7f1200ba

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    instance-of v1, p1, Lg/buc;

    const/16 v2, 0x1a

    if-eqz v1, :cond_3

    move-object v3, p1

    check-cast v3, Lg/buc;

    invoke-interface {v3, v0}, Lg/buc;->setContentDescription(Ljava/lang/CharSequence;)Lg/buc;

    goto :goto_2

    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_4

    invoke-static {p1, v0}, Lg/cmb;->c(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    check-cast p1, Lg/buc;

    invoke-interface {p1, v0}, Lg/buc;->setTooltipText(Ljava/lang/CharSequence;)Lg/buc;

    return-void

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_6

    invoke-static {p1, v0}, Lg/cmb;->z(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public final bq()V
    .locals 4

    iget-object v0, p0, Lg/efx;->au:Lg/gwf;

    iget-object v0, v0, Lg/gwf;->f:Ljava/lang/String;

    invoke-static {v0}, Lg/eyt;->bq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v0}, Lg/efx;->bk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/efx;->ar:Lg/sd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/cle;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f09030f

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lg/sd;->a:[I

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lg/sd;->d(Landroid/view/View;Ljava/lang/CharSequence;I)Lg/sd;

    move-result-object v0

    new-instance v1, Lg/ld;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lg/ld;-><init>(ILjava/lang/Object;)V

    iget-object v2, v0, Lg/cle;->m:Landroid/content/Context;

    const v3, 0x7f120384

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lg/sd;->e(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lg/efx;->ar:Lg/sd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lg/afo;->bb(Lg/sd;Z)V

    iput-boolean v1, v0, Lg/cle;->r:Z

    invoke-virtual {v0}, Lg/sd;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/efx;->an:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lg/efx;->bj:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    const v0, 0x7f0900d8

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lg/efx;->be:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public abstract e(Lg/efx;Z)Lg/csm;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public h(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "show_ad_full"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/efx;->al:Z

    const-string v0, "show_ad_banner"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/efx;->bh:Z

    const-string v0, "show_system_app_menu_always"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/efx;->am:Z

    return-void
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f0901ce

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lg/efx;->as:Landroid/widget/LinearLayout;

    const v0, 0x7f090354

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lg/efx;->ay:Landroid/widget/TextView;

    const v0, 0x7f090356

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lg/efx;->az:Landroid/widget/TextView;

    const v0, 0x7f090162

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lg/efx;->bj:Landroid/view/View;

    const v0, 0x7f090163

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lg/efx;->an:Landroid/widget/EditText;

    const v0, 0x7f0902b7

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lg/efx;->ak:Landroid/widget/TextView;

    iget-object v0, p0, Lg/efx;->ay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0801a2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    iget-object v0, p0, Lg/efx;->an:Landroid/widget/EditText;

    new-instance v1, Lg/get;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lg/efx;->an:Landroid/widget/EditText;

    new-instance v1, Lg/bvb;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p0}, Lg/bvb;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lg/efx;->an:Landroid/widget/EditText;

    new-instance v1, Lg/fxf;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lg/fxf;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v3}, Lg/cro;->aw(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const v0, 0x7f0900d8

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lg/aoi;

    invoke-direct {v1, v2, p0}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    sget-object v2, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Lg/cd;->b(Landroid/view/View;Lg/ghx;)V

    invoke-static {v0}, Lg/dzc;->c(Landroid/view/View;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lg/cms;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001f

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/efx;->h(Landroid/content/Intent;)V

    iput-object p0, p0, Lg/efx;->bb:Lg/efx;

    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lg/efx;->be:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lg/cro;->aj(Landroid/content/Intent;)Lg/cgg;

    move-result-object p1

    iput-object p1, p0, Lg/efx;->ao:Lg/cgg;

    iget-boolean p1, p0, Lg/efx;->al:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg/efx;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lg/efx;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lg/cms;->fullScreenAdInit(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lg/dzm;->bc()Z

    move-result p1

    const/16 v0, 0x4ca

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0}, Lg/dzm;->at(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v1, v0}, Lg/buj;->be(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x15d

    invoke-static {v1, p1}, Lg/buj;->be(II)I

    move-result p1

    add-int/lit16 p1, p1, 0x4cb

    :goto_0
    if-ge p1, v0, :cond_2

    const p1, 0x7f0902b7

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lg/efx;->initView()V

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/b;

    move-result-object p1

    new-instance v0, Lg/bcn;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0}, Lg/bcn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Landroidx/activity/b;->i(Lg/iz;Lg/bcn;)V

    :goto_1
    new-instance p1, Lg/gwf;

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    iget-object v2, p0, Lg/efx;->bg:Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p1, Lg/gwf;->c:Z

    iput-boolean v1, p1, Lg/gwf;->d:Z

    invoke-static {v0}, Lg/fgj;->d(Landroid/content/Context;)Landroid/content/Context;

    iput-object p0, p1, Lg/gwf;->e:Lg/efx;

    invoke-static {v0}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object v3

    iput-object v3, p1, Lg/gwf;->h:Lg/cwz;

    invoke-static {v0}, Lg/cwq;->f(Lg/cms;)Lg/cwq;

    move-result-object v0

    iput-object v0, p1, Lg/gwf;->j:Lg/cwq;

    iput-object v2, v0, Lg/cwq;->c:Ljava/lang/String;

    new-instance v0, Lg/fc;

    const/16 v2, 0xe

    invoke-direct {v0, v2}, Lg/fc;-><init>(I)V

    iput-object v0, p1, Lg/gwf;->b:Lg/fc;

    new-instance v0, Lg/emr;

    const/4 v2, 0x4

    invoke-direct {v0, v2, p1}, Lg/emr;-><init>(ILjava/lang/Object;)V

    iput-object v0, p1, Lg/gwf;->i:Lg/emr;

    new-instance v0, Lg/dgx;

    new-instance v2, Lg/aoi;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2}, Lg/dgx;-><init>(Lg/bsx;Lg/byq;Lg/bwb;)V

    iput-object v0, p1, Lg/gwf;->k:Lg/dgx;

    iput-object p1, p0, Lg/efx;->au:Lg/gwf;

    const-string p1, "TrineaAndroidCommon"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "applist_grid_mode"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/efx;->ba:Z

    invoke-virtual {p0}, Lg/efx;->bl()V

    iget-boolean p1, p0, Lg/efx;->bh:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lg/efx;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lg/efx;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lg/cms;->bannerAdInit(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lg/cms;->bannerAdShow()Z

    :cond_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    invoke-virtual {p0}, Lg/ub;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090303

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/efx;->bp(Landroid/view/MenuItem;)V

    const v0, 0x7f0901c0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "TrineaAndroidCommon"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "applist_grid_mode"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f080145

    goto :goto_0

    :cond_0
    const v3, 0x7f080144

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f090301

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    instance-of v3, p0, Lb/b/b;

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_5

    if-eqz v3, :cond_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lg/efx;->au:Lg/gwf;

    iget-object v3, v3, Lg/gwf;->j:Lg/cwq;

    iget-object v4, v3, Lg/haz;->v:Landroid/content/Context;

    iget-object v3, v3, Lg/cwq;->c:Ljava/lang/String;

    invoke-static {v4, v3}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lg/efx;->bb:Lg/efx;

    const-string v4, "applist_show_recently"

    const/4 v5, -0x1

    invoke-static {v3, v5, v4}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    iget-object v0, p0, Lg/dms;->clickInterval:Lg/fei;

    invoke-virtual {v0}, Lg/fei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0901c0

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lg/efx;->ba:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lg/efx;->ba:Z

    invoke-virtual {p0}, Lg/efx;->bl()V

    iget-boolean v0, p0, Lg/efx;->ba:Z

    if-eqz v0, :cond_1

    const v0, 0x7f080145

    goto :goto_0

    :cond_1
    const v0, 0x7f080144

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v0, "applist_grid_mode"

    iget-boolean v1, p0, Lg/efx;->ba:Z

    invoke-static {p0, v0, v1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_2
    :goto_1
    move-object v4, p0

    goto :goto_4

    :cond_3
    const v1, 0x7f090303

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v0}, Lg/efx;->bk(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lg/efx;->bo(Z)V

    invoke-virtual {p0, p1}, Lg/efx;->bp(Landroid/view/MenuItem;)V

    goto :goto_1

    :cond_4
    const v1, 0x7f090301

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lg/efx;->au:Lg/gwf;

    iget-object v0, v0, Lg/gwf;->j:Lg/cwq;

    iget-object v2, v0, Lg/haz;->v:Landroid/content/Context;

    iget-object v0, v0, Lg/cwq;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    const v1, 0x7f1200b4

    const v2, 0x7f120051

    const v3, 0x7f1200b5

    invoke-static {v0, v3, v1, v2}, Lg/aky;->o(Landroid/app/Activity;III)Ljava/lang/String;

    move-result-object v5

    iget-boolean v0, p0, Lg/efx;->bh:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lg/efx;->f()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lg/eib;->bd(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lg/bxf;Lg/du;)Lg/gqo;

    goto :goto_4

    :cond_6
    move-object v4, p0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, v4, Lg/efx;->au:Lg/gwf;

    iput-boolean v1, v0, Lg/gwf;->d:Z

    iget-object v2, v0, Lg/gwf;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg/gwf;->l(Ljava/lang/String;)V

    const-string v0, "applist_show_recently"

    invoke-static {p0, v1, v0}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    :goto_4
    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const v0, 0x7f090303

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/efx;->bp(Landroid/view/MenuItem;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onStart()V
    .locals 6

    invoke-super {p0}, Lg/ub;->onStart()V

    const-string v0, "applist_grid_mode"

    const-string v1, "TrineaAndroidCommon"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lg/efx;->ba:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lg/efx;->ba:Z

    invoke-virtual {p0}, Lg/efx;->bl()V

    :cond_0
    iget-object v0, p0, Lg/efx;->au:Lg/gwf;

    instance-of v1, p0, Lb/b/b;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lg/gwf;->j:Lg/cwq;

    iget-object v4, v1, Lg/haz;->v:Landroid/content/Context;

    iget-object v1, v1, Lg/cwq;->c:Ljava/lang/String;

    invoke-static {v4, v1}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/efx;->bb:Lg/efx;

    const-string v4, "applist_show_recently"

    const/4 v5, -0x1

    invoke-static {v1, v5, v4}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    iput-boolean v2, v0, Lg/gwf;->d:Z

    iget-object v0, p0, Lg/efx;->au:Lg/gwf;

    iget-object v1, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v1}, Lg/efx;->bk(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lg/gwf;->c:Z

    invoke-virtual {p0}, Lg/ub;->invalidateOptionsMenu()V

    iget-object v0, p0, Lg/efx;->au:Lg/gwf;

    iput-boolean v3, v0, Lg/gwf;->g:Z

    iget-object v1, v0, Lg/gwf;->h:Lg/cwz;

    invoke-virtual {v1}, Lg/haz;->i()V

    iget-object v1, v0, Lg/gwf;->h:Lg/cwz;

    iget-object v2, v0, Lg/gwf;->k:Lg/dgx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lg/dgx;->c:Lg/bwb;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const-class v3, Lg/haz;

    monitor-enter v3

    :try_start_0
    iget-object v1, v1, Lg/haz;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_1
    iget-object v1, v0, Lg/gwf;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/gwf;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/efx;->au:Lg/gwf;

    iget-object v1, v1, Lg/gwf;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lg/efx;->aq:Lg/fvi;

    invoke-virtual {v0}, Lg/fvi;->run()V

    :cond_5
    return-void
.end method

.method public final onStop()V
    .locals 4

    iget-object v0, p0, Lg/efx;->an:Landroid/widget/EditText;

    iget-object v1, p0, Lg/efx;->aq:Lg/fvi;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lg/efx;->ar:Lg/sd;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lg/cle;->ak(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/efx;->ar:Lg/sd;

    :cond_0
    iget-object v0, p0, Lg/efx;->au:Lg/gwf;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/gwf;->g:Z

    iget v1, v0, Lg/gwf;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lg/gwf;->a:I

    iget-object v1, v0, Lg/gwf;->h:Lg/cwz;

    iget-object v2, v0, Lg/gwf;->k:Lg/dgx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lg/dgx;->c:Lg/bwb;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-class v3, Lg/haz;

    monitor-enter v3

    :try_start_0
    iget-object v1, v1, Lg/haz;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    iget-object v0, v0, Lg/gwf;->h:Lg/cwz;

    invoke-virtual {v0}, Lg/haz;->ae()V

    invoke-super {p0}, Lg/ub;->onStop()V

    return-void
.end method
