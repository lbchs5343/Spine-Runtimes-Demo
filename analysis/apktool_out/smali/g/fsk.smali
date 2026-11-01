.class public final Lg/fsk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ekf;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/fsk;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Landroidx/recyclerview/widget/p;Lg/cng;)V
    .locals 0

    return-void
.end method

.method private final e(Landroidx/recyclerview/widget/p;Lg/cng;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/p;
    .locals 3

    iget v0, p0, Lg/fsk;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/cgx;

    const v1, 0x7f0c006f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    const p2, 0x7f090137

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, v0, Lg/cgx;->al:Landroid/widget/TextView;

    const p2, 0x7f0901a3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lg/cgx;->ak:Landroid/widget/TextView;

    return-object v0

    :pswitch_0
    new-instance v0, Lg/erb;

    const v1, 0x7f0c006d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    const p2, 0x7f090359

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lg/erb;->ak:Landroid/widget/TextView;

    return-object v0

    :pswitch_1
    new-instance v0, Lg/bpq;

    const v1, 0x7f0c00d8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lg/bpq;

    const v1, 0x7f0c00cf

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/recyclerview/widget/p;Lg/cng;)V
    .locals 5

    iget v0, p0, Lg/fsk;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/cgx;

    check-cast p2, Lg/ahx;

    iget-object v0, p1, Lg/cgx;->ak:Landroid/widget/TextView;

    iget-object p1, p1, Lg/cgx;->al:Landroid/widget/TextView;

    iget-object v1, p2, Lg/ahx;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p2, Lg/ahx;->d:I

    if-lez p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dp"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p2, p1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p2, v1

    div-int/lit16 p1, p1, 0xa0

    int-to-float v1, p1

    invoke-static {p2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const-string v2, "x)"

    const-string v3, " "

    if-nez v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-double v3, p2

    const/4 p2, 0x1

    invoke-static {v3, v4, p2}, Lg/erl;->ax(DI)D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Lg/erb;

    check-cast p2, Lg/byz;

    iget-object p1, p1, Lg/erb;->ak:Landroid/widget/TextView;

    iget p2, p2, Lg/byz;->d:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
