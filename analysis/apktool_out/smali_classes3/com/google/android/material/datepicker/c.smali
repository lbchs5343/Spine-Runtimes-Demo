.class public final Lcom/google/android/material/datepicker/c;
.super Landroidx/recyclerview/widget/m;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lg/fin;

.field public final c:Lg/cyy;

.field public final d:Lg/fc;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;Lg/fin;Lg/cyy;Lg/fc;)V
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/m;-><init>()V

    invoke-virtual {p2}, Lg/fin;->getStart()Lg/edj;

    move-result-object v0

    invoke-virtual {p2}, Lg/fin;->getEnd()Lg/edj;

    move-result-object v1

    invoke-virtual {p2}, Lg/fin;->getOpenAt()Lg/edj;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/edj;->compareTo(Lg/edj;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {v2, v1}, Lg/edj;->compareTo(Lg/edj;)I

    move-result v0

    if-gtz v0, :cond_1

    sget v0, Lg/ahj;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07039e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int v1, v1, v0

    const v0, 0x101020d

    invoke-static {p1, v0}, Lg/gas;->ag(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/datepicker/c;->a:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/c;->b:Lg/fin;

    iput-object p3, p0, Lcom/google/android/material/datepicker/c;->c:Lg/cyy;

    iput-object p4, p0, Lcom/google/android/material/datepicker/c;->d:Lg/fc;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/m;->setHasStableIds(Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "currentPage cannot be after lastPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstPage cannot be after currentPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->b:Lg/fin;

    invoke-virtual {v0}, Lg/fin;->getMonthSpan()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->b:Lg/fin;

    invoke-virtual {v0}, Lg/fin;->getStart()Lg/edj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/edj;->monthsLater(I)Lg/edj;

    move-result-object p1

    invoke-virtual {p1}, Lg/edj;->getStableId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p;I)V
    .locals 3

    check-cast p1, Lcom/google/android/material/datepicker/b;

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->b:Lg/fin;

    invoke-virtual {v0}, Lg/fin;->getStart()Lg/edj;

    move-result-object v1

    invoke-virtual {v1, p2}, Lg/edj;->monthsLater(I)Lg/edj;

    move-result-object p2

    iget-object v1, p1, Lcom/google/android/material/datepicker/b;->al:Landroid/widget/TextView;

    invoke-virtual {p2}, Lg/edj;->getLongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/google/android/material/datepicker/b;->ak:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    const v1, 0x7f0901f6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lg/ahj;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lg/ahj;

    move-result-object v1

    iget-object v1, v1, Lg/ahj;->c:Lg/edj;

    invoke-virtual {p2, v1}, Lg/edj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lg/ahj;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1

    :cond_0
    new-instance p1, Lg/ahj;

    iget-object v1, p0, Lcom/google/android/material/datepicker/c;->c:Lg/cyy;

    invoke-direct {p1, p2, v0, v1}, Lg/ahj;-><init>(Lg/edj;Lg/fin;Lg/cyy;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c009c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x101020d

    invoke-static {p1, v0}, Lg/gas;->ag(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lg/yx;

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/material/datepicker/c;->a:I

    invoke-direct {p1, v0, v1}, Lg/yx;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/google/android/material/datepicker/b;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/datepicker/b;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/material/datepicker/b;

    invoke-direct {p1, p2, v1}, Lcom/google/android/material/datepicker/b;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p1
.end method
