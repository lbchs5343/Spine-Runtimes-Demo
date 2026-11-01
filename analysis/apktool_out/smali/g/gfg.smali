.class public final Lg/gfg;
.super Landroidx/recyclerview/widget/p;
.source "SourceFile"


# instance fields
.field public final ak:Landroid/widget/TextView;

.field public final al:Landroid/widget/TextView;

.field public final synthetic am:Lg/la;

.field public final an:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lg/la;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lg/gfg;->am:Lg/la;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    const p1, 0x7f09033f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg/gfg;->al:Landroid/widget/TextView;

    const p1, 0x7f090120

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg/gfg;->ak:Landroid/widget/TextView;

    const p1, 0x7f090041

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lg/gfg;->an:Landroid/widget/ImageView;

    return-void
.end method
