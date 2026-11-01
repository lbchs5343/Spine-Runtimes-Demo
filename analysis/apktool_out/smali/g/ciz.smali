.class public Lg/ciz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ekf;


# instance fields
.field public c:Z

.field public d:I

.field public final e:Landroid/content/Context;

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/ciz;->f:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/ciz;->g:Z

    iput-boolean v1, p0, Lg/ciz;->c:Z

    iput v0, p0, Lg/ciz;->d:I

    iput-object p1, p0, Lg/ciz;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/p;
    .locals 6

    new-instance v0, Lg/eds;

    iget v1, p0, Lg/ciz;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0067

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p0, Lg/ciz;->g:Z

    iget-boolean v1, p0, Lg/ciz;->c:Z

    iget v3, p0, Lg/ciz;->d:I

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/p;-><init>(Landroid/view/View;)V

    const v4, 0x7f0901b3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lg/eds;->al:Landroid/widget/TextView;

    if-eq v3, v2, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, p0, Lg/ciz;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const v2, 0x7f09039b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lg/eds;->ak:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_2
    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v0
.end method

.method public b(Landroidx/recyclerview/widget/p;Lg/cng;)V
    .locals 2

    check-cast p1, Lg/eds;

    check-cast p2, Lg/th;

    iget-object v0, p1, Lg/eds;->al:Landroid/widget/TextView;

    iget-object v1, p2, Lg/th;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lg/eds;->ak:Landroid/widget/TextView;

    iget-object p2, p2, Lg/th;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
