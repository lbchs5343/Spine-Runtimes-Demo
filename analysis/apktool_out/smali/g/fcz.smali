.class public final Lg/fcz;
.super Lg/ect;
.source "SourceFile"


# instance fields
.field public final a:Lg/ctx;

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lg/ctx;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/m;-><init>()V

    iput-object p1, p0, Lg/fcz;->a:Lg/ctx;

    iput-object p2, p0, Lg/fcz;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lg/fcz;->b:Ljava/util/List;

    invoke-static {v0}, Lg/acw;->bo(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lg/ect;->onBindViewHolder(Landroidx/recyclerview/widget/p;I)V

    check-cast p1, Lg/cgs;

    iget-object v0, p0, Lg/fcz;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/fwx;

    iget-object v0, p1, Lg/cgs;->ak:Landroid/widget/Button;

    invoke-static {}, Lg/akf;->k()Lg/akf;

    move-result-object v1

    invoke-virtual {p2}, Lg/fwx;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/akf;->l(Ljava/lang/String;)Lg/ekl;

    move-result-object v1

    iget-object v2, p1, Lg/cgs;->al:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lg/ekl;->d(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lg/cgs;->ao:Landroid/widget/TextView;

    invoke-virtual {p2}, Lg/fwx;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lg/cgs;->an:Landroid/widget/TextView;

    invoke-virtual {p2}, Lg/fwx;->getAttraction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lg/fwx;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f120090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lg/ded;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lg/ded;-><init>(Lg/cgs;Lg/fwx;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lg/fwx;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const v1, 0x7f120092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lg/ded;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lg/ded;-><init>(Lg/cgs;Lg/fwx;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const v1, 0x7f12008f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lg/ded;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, v2}, Lg/ded;-><init>(Lg/cgs;Lg/fwx;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p;
    .locals 4

    new-instance p2, Lg/cgs;

    iget-object v0, p0, Lg/fcz;->a:Lg/ctx;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c005a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    iput-object v0, p2, Lg/cgs;->am:Lg/ctx;

    const v0, 0x7f090196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lg/cgs;->al:Landroid/widget/ImageView;

    const v0, 0x7f090215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lg/cgs;->ao:Landroid/widget/TextView;

    const v0, 0x7f090120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lg/cgs;->an:Landroid/widget/TextView;

    const v0, 0x7f0901a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p2, Lg/cgs;->ak:Landroid/widget/Button;

    return-object p2
.end method
