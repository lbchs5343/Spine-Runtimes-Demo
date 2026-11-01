.class public Lg/amu;
.super Landroidx/recyclerview/widget/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public ak:Ljava/lang/Object;

.field public final al:Landroid/widget/TextView;

.field public final am:Landroid/view/View;

.field public final synthetic an:Lg/cuz;

.field public final ao:Landroid/widget/TextView;

.field public final ap:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lg/cuz;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lg/amu;->an:Lg/cuz;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0901ab

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/amu;->am:Landroid/view/View;

    const p1, 0x7f090215

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg/amu;->al:Landroid/widget/TextView;

    const p1, 0x7f090307

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg/amu;->ap:Landroid/widget/TextView;

    const p1, 0x7f090238

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg/amu;->ao:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lg/amu;->an:Lg/cuz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/amu;->ak:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/amu;->ak:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lg/cuz;->ah(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lg/amu;->an:Lg/cuz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return p1
.end method
