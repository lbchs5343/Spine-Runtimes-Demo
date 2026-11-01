.class public final Lg/ebb;
.super Lg/ghs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lg/ghs;"
    }
.end annotation


# instance fields
.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Lg/akj;

.field public h:Landroid/view/accessibility/AccessibilityManager;

.field public i:Landroid/view/View;

.field public j:Lg/fin;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Lg/cyy;

.field public n:Lg/edj;

.field public o:Landroidx/recyclerview/widget/RecyclerView;

.field public p:I

.field public q:Lcom/google/android/material/button/MaterialButton;

.field public r:Landroid/view/View;

.field public s:Lg/fxs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/ghs;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lg/ebb;->p:I

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/fin;

    iput-object v0, p0, Lg/ebb;->j:Lg/fin;

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/cyy;

    iput-object v0, p0, Lg/ebb;->m:Lg/cyy;

    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/edj;

    iput-object p1, p0, Lg/ebb;->n:Lg/edj;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lg/ebb;->p:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lg/akj;

    const/4 v1, 0x5

    invoke-direct {v0, p3, v1}, Lg/akj;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lg/ebb;->g:Lg/akj;

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lg/ebb;->h:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lg/ebb;->j:Lg/fin;

    invoke-virtual {v0}, Lg/fin;->getStart()Lg/edj;

    move-result-object v0

    const v1, 0x101020d

    invoke-static {p3, v1}, Lg/gas;->ag(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const v2, 0x7f0c009f

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7f0c009a

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0703b3

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f0703b4

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v6, v2

    const v2, 0x7f0703b2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v6

    const v6, 0x7f0703a3

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lg/ahj;->a:I

    const v8, 0x7f07039e

    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    mul-int v8, v8, v7

    sub-int/2addr v7, v4

    const v9, 0x7f0703b1

    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    mul-int v9, v9, v7

    add-int/2addr v9, v8

    const v7, 0x7f07039b

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/2addr v2, v6

    add-int/2addr v2, v9

    add-int/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    const p2, 0x7f0901ff

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    new-instance v2, Lg/glf;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lg/glf;-><init>(I)V

    invoke-static {p2, v2}, Lg/goi;->ab(Landroid/view/View;Lg/amk;)V

    iget-object v2, p0, Lg/ebb;->j:Lg/fin;

    invoke-virtual {v2}, Lg/fin;->getFirstDayOfWeek()I

    move-result v2

    new-instance v6, Lg/ffq;

    if-lez v2, :cond_1

    invoke-direct {v6, v2}, Lg/ffq;-><init>(I)V

    goto :goto_1

    :cond_1
    invoke-direct {v6}, Lg/ffq;-><init>()V

    :goto_1
    invoke-virtual {p2, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, v0, Lg/edj;->daysInWeek:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x7f090202

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lg/ebj;

    invoke-direct {p2, p0, v5, v5}, Lg/ebj;-><init>(Lg/ebb;II)V

    iget-object v0, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    iget-object p2, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lcom/google/android/material/datepicker/c;

    iget-object v0, p0, Lg/ebb;->j:Lg/fin;

    iget-object v2, p0, Lg/ebb;->m:Lg/cyy;

    new-instance v5, Lg/fc;

    const/16 v6, 0xd

    invoke-direct {v5, v6, p0}, Lg/fc;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p3, v0, v2, v5}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/view/ContextThemeWrapper;Lg/fin;Lg/cyy;Lg/fc;)V

    iget-object v0, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v2, 0x7f090205

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v5, p0, Lg/ebb;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v4, p0, Lg/ebb;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(II)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    iget-object v0, p0, Lg/ebb;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lg/ehd;

    invoke-direct {v3, p0}, Lg/ehd;-><init>(Lg/ebb;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    iget-object v0, p0, Lg/ebb;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lg/vu;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Lg/fau;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    invoke-static {v4}, Lg/fau;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lg/fji;)V

    :cond_2
    const v0, 0x7f0901f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/material/datepicker/c;->b:Lg/fin;

    if-eqz v3, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lg/ebb;->q:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "SELECTOR_TOGGLE_TAG"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lg/ebb;->q:Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lg/akz;

    const/4 v5, 0x4

    invoke-direct {v3, v5, p0}, Lg/akz;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v3}, Lg/goi;->ab(Landroid/view/View;Lg/amk;)V

    const v0, 0x7f0901fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lg/ebb;->i:Landroid/view/View;

    const-string v3, "NAVIGATION_PREV_TAG"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0901f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lg/ebb;->l:Landroid/view/View;

    const-string v3, "NAVIGATION_NEXT_TAG"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lg/ebb;->k:Landroid/view/View;

    const v0, 0x7f0901fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lg/ebb;->r:Landroid/view/View;

    sget-object v0, Lg/fxs;->DAY:Lg/fxs;

    invoke-virtual {p0, v0}, Lg/ebb;->v(Lg/fxs;)V

    iget-object v0, p0, Lg/ebb;->q:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lg/ebb;->n:Lg/edj;

    invoke-virtual {v2}, Lg/edj;->getLongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lg/ahv;

    invoke-direct {v2, p0, p2}, Lg/ahv;-><init>(Lg/ebb;Lcom/google/android/material/datepicker/c;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lg/doi;)V

    iget-object v0, p0, Lg/ebb;->q:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lg/get;

    const/16 v3, 0xa

    invoke-direct {v2, v3, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lg/ebb;->l:Landroid/view/View;

    new-instance v2, Lg/bhp;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p2, v3}, Lg/bhp;-><init>(Lg/ebb;Lcom/google/android/material/datepicker/c;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lg/ebb;->i:Landroid/view/View;

    new-instance v2, Lg/bhp;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lg/bhp;-><init>(Lg/ebb;Lcom/google/android/material/datepicker/c;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lg/ebb;->n:Lg/edj;

    invoke-virtual {v4}, Lg/fin;->getStart()Lg/edj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lg/edj;->monthsUntil(Lg/edj;)I

    move-result p2

    invoke-virtual {p0, p2}, Lg/ebb;->t(I)V

    :cond_3
    invoke-static {p3, v1}, Lg/gas;->ag(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p2, Lg/bnj;

    invoke-direct {p2}, Lg/bnj;-><init>()V

    iget-object p3, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p2, Lg/bnj;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p2, Lg/bnj;->c:Lg/adp;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Lg/doi;)V

    iget-object v0, p2, Lg/bnj;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Lg/gfe;)V

    :cond_5
    iput-object p3, p2, Lg/bnj;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Lg/gfe;

    move-result-object p3

    if-nez p3, :cond_6

    iget-object p3, p2, Lg/bnj;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lg/doi;)V

    iget-object p3, p2, Lg/bnj;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Lg/gfe;)V

    new-instance p3, Landroid/widget/Scroller;

    iget-object v0, p2, Lg/bnj;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p3, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    invoke-virtual {p2}, Lg/bnj;->j()V

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An instance of OnFlingListener already set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    iget-object p2, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lg/ebb;->n:Lg/edj;

    invoke-virtual {v4}, Lg/fin;->getStart()Lg/edj;

    move-result-object v0

    invoke-virtual {v0, p3}, Lg/edj;->monthsUntil(Lg/edj;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p2, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lg/glf;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lg/glf;-><init>(I)V

    invoke-static {p2, p3}, Lg/goi;->ab(Landroid/view/View;Lg/amk;)V

    return-object p1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "THEME_RES_ID_KEY"

    iget v1, p0, Lg/ebb;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GRID_SELECTOR_KEY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v1, p0, Lg/ebb;->j:Lg/fin;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    iget-object v1, p0, Lg/ebb;->m:Lg/cyy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_MONTH_KEY"

    iget-object v1, p0, Lg/ebb;->n:Lg/edj;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final t(I)V
    .locals 5

    iget-object v0, p0, Lg/ebb;->l:Landroid/view/View;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/m;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lg/ebb;->i:Landroid/view/View;

    sub-int/2addr p1, v4

    if-ltz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final u(Lg/edj;)V
    .locals 6

    iget-object v0, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/c;

    iget-object v1, v0, Lcom/google/android/material/datepicker/c;->b:Lg/fin;

    invoke-virtual {v1}, Lg/fin;->getStart()Lg/edj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg/edj;->monthsUntil(Lg/edj;)I

    move-result v1

    iget-object v2, p0, Lg/ebb;->h:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lg/ebb;->n:Lg/edj;

    iget-object p1, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lg/ebb;->n:Lg/edj;

    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->b:Lg/fin;

    invoke-virtual {v0}, Lg/fin;->getStart()Lg/edj;

    move-result-object v0

    invoke-virtual {v0, v2}, Lg/edj;->monthsUntil(Lg/edj;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-le v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-object p1, p0, Lg/ebb;->n:Lg/edj;

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p1, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lg/dj;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lg/dj;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object p1, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p1, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lg/dj;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lg/dj;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lg/dj;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lg/dj;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    invoke-virtual {p0, v1}, Lg/ebb;->t(I)V

    return-void
.end method

.method public final v(Lg/fxs;)V
    .locals 4

    iput-object p1, p0, Lg/ebb;->s:Lg/fxs;

    sget-object v0, Lg/fxs;->YEAR:Lg/fxs;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lg/ebb;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object p1

    iget-object v0, p0, Lg/ebb;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object v0

    check-cast v0, Lg/ehd;

    iget-object v3, p0, Lg/ebb;->n:Lg/edj;

    iget v3, v3, Lg/edj;->year:I

    iget-object v0, v0, Lg/ehd;->a:Lg/ebb;

    iget-object v0, v0, Lg/ebb;->j:Lg/fin;

    invoke-virtual {v0}, Lg/fin;->getStart()Lg/edj;

    move-result-object v0

    iget v0, v0, Lg/edj;->year:I

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/b;->dh(I)V

    iget-object p1, p0, Lg/ebb;->k:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/ebb;->r:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/ebb;->i:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/ebb;->l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    sget-object v0, Lg/fxs;->DAY:Lg/fxs;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lg/ebb;->k:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/ebb;->r:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/ebb;->i:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/ebb;->l:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/ebb;->n:Lg/edj;

    invoke-virtual {p0, p1}, Lg/ebb;->u(Lg/edj;)V

    :cond_1
    return-void
.end method
