.class public final Lg/dxl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ekf;


# instance fields
.field public final synthetic c:I

.field public d:I

.field public e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/dxl;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/amy;Landroid/content/Context;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lg/dxl;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dxl;->e:Landroid/content/Context;

    const/4 p1, -0x1

    iput p1, p0, Lg/dxl;->d:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/p;
    .locals 3

    iget v0, p0, Lg/dxl;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/dtr;

    iget v1, p0, Lg/dxl;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0c006b

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    const p2, 0x7f0901b3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, v0, Lg/dtr;->ak:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lg/eql;

    iget v1, p0, Lg/dxl;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x7f0c006b

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    const p2, 0x7f0901b3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lg/eql;->ak:Landroid/widget/TextView;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/recyclerview/widget/p;Lg/cng;)V
    .locals 4

    iget v0, p0, Lg/dxl;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/dtr;

    iget-object v0, p0, Lg/dxl;->e:Landroid/content/Context;

    check-cast p2, Lg/brq;

    iget-object v1, p1, Lg/dtr;->ak:Landroid/widget/TextView;

    iget-object v2, p2, Lg/brq;->a:Landroid/content/pm/ComponentInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lg/anh;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p2, v3}, Lg/anh;-><init>(Landroid/content/Context;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLongClickable(Z)V

    return-void

    :pswitch_0
    move-object v0, p1

    check-cast v0, Lg/eql;

    move-object v1, p2

    check-cast v1, Lg/ce;

    iget-object v0, v0, Lg/eql;->ak:Landroid/widget/TextView;

    iget-object v1, v1, Lg/ce;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast p2, Lg/dpj;

    iget-object p2, p2, Lg/ce;->a:Ljava/lang/String;

    iget-object p1, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    const v0, 0x7f0901b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lg/dxl;->e:Landroid/content/Context;

    check-cast v0, Lg/amy;

    invoke-virtual {v0, p1, p2}, Lg/amy;->o(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
