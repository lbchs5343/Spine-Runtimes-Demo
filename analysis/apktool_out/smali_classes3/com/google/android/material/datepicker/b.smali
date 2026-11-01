.class public final Lcom/google/android/material/datepicker/b;
.super Landroidx/recyclerview/widget/p;
.source "SourceFile"


# instance fields
.field public final ak:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field public final al:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 8

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/b;->al:Landroid/widget/TextView;

    sget-object v1, Lg/goi;->c:Ljava/util/WeakHashMap;

    new-instance v2, Lg/hej;

    const/4 v5, 0x0

    const/4 v7, 0x3

    const v3, 0x7f090332

    const-class v4, Ljava/lang/Boolean;

    const/16 v6, 0x1c

    invoke-direct/range {v2 .. v7}, Lg/hej;-><init>(ILjava/lang/Class;III)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v1}, Lg/bwp;->f(Landroid/view/View;Ljava/lang/Object;)V

    const v1, 0x7f0901f6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object p1, p0, Lcom/google/android/material/datepicker/b;->ak:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    if-nez p2, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
