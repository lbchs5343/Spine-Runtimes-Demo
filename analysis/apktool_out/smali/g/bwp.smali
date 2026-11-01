.class public abstract Lg/bwp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/io/Serializable;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/bwp;->c:I

    iput-object p2, p0, Lg/bwp;->b:Ljava/io/Serializable;

    iput p3, p0, Lg/bwp;->a:I

    iput p4, p0, Lg/bwp;->d:I

    return-void
.end method

.method public constructor <init>(Lg/fzq;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bwp;->b:Ljava/io/Serializable;

    const/4 v0, -0x1

    iput v0, p0, Lg/bwp;->d:I

    invoke-static {p1}, Lg/fzq;->f(Lg/fzq;)I

    move-result p1

    iput p1, p0, Lg/bwp;->a:I

    invoke-virtual {p0}, Lg/bwp;->e()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    iget-object v0, p0, Lg/bwp;->b:Ljava/io/Serializable;

    check-cast v0, Lg/fzq;

    :goto_0
    iget v1, p0, Lg/bwp;->c:I

    invoke-static {v0}, Lg/fzq;->e(Lg/fzq;)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Lg/fzq;->b(Lg/fzq;)[I

    move-result-object v1

    iget v2, p0, Lg/bwp;->c:I

    aget v1, v1, v2

    if-gez v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lg/bwp;->c:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lg/bwp;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lg/bwp;->j(Landroid/view/View;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lg/bwp;->d:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lg/bwp;->i(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lg/bwp;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lg/bwp;->b:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lg/bwp;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lg/goi;->l(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lg/dln;

    if-eqz v1, :cond_4

    check-cast v0, Lg/dln;

    iget-object v0, v0, Lg/dln;->a:Lg/amk;

    goto :goto_1

    :cond_4
    new-instance v1, Lg/amk;

    invoke-direct {v1, v0}, Lg/amk;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_5

    new-instance v0, Lg/amk;

    invoke-direct {v0}, Lg/amk;-><init>()V

    :cond_5
    invoke-static {p1, v0}, Lg/goi;->ab(Landroid/view/View;Lg/amk;)V

    iget v0, p0, Lg/bwp;->c:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget p2, p0, Lg/bwp;->a:I

    invoke-static {p2, p1}, Lg/goi;->w(ILandroid/view/View;)V

    :cond_6
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lg/bwp;->b:Ljava/io/Serializable;

    check-cast v0, Lg/fzq;

    invoke-static {v0}, Lg/fzq;->f(Lg/fzq;)I

    move-result v0

    iget v1, p0, Lg/bwp;->a:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public abstract h(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lg/bwp;->c:I

    iget-object v1, p0, Lg/bwp;->b:Ljava/io/Serializable;

    check-cast v1, Lg/fzq;

    invoke-static {v1}, Lg/fzq;->e(Lg/fzq;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract i(Landroid/view/View;)Ljava/lang/Object;
.end method

.method public abstract j(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lg/bwp;->b:Ljava/io/Serializable;

    check-cast v0, Lg/fzq;

    invoke-virtual {p0}, Lg/bwp;->g()V

    iget v1, p0, Lg/bwp;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lg/fzq;->p()V

    iget v1, p0, Lg/bwp;->d:I

    invoke-virtual {v0, v1}, Lg/fzq;->s(I)V

    iput v2, p0, Lg/bwp;->d:I

    invoke-static {v0}, Lg/fzq;->f(Lg/fzq;)I

    move-result v0

    iput v0, p0, Lg/bwp;->a:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() before removing element from the iterator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
