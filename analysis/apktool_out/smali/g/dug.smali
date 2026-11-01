.class public final Lg/dug;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public a:I

.field public aa:I

.field public ab:Z

.field public ac:Z

.field public ad:Z

.field public ae:I

.field public af:Lg/asv;

.field public ag:Landroid/graphics/PorterDuff$Mode;

.field public ah:I

.field public ai:[Landroid/graphics/drawable/Drawable;

.field public aj:Z

.field public b:I

.field public c:Landroid/graphics/Rect;

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:Landroid/graphics/ColorFilter;

.field public k:Z

.field public l:I

.field public final m:Lg/cpy;

.field public n:Z

.field public o:Landroid/content/res/ColorStateList;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Landroid/util/SparseArray;

.field public t:Lg/gob;

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Landroid/content/res/Resources;

.field public z:Z


# direct methods
.method public constructor <init>(Lg/dug;Lg/fam;Landroid/content/res/Resources;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/dug;->x:Z

    iput-boolean v0, p0, Lg/dug;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/dug;->r:Z

    iput v0, p0, Lg/dug;->f:I

    iput v0, p0, Lg/dug;->a:I

    iput-object p2, p0, Lg/dug;->m:Lg/cpy;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p1, Lg/dug;->y:Landroid/content/res/Resources;

    goto :goto_0

    :cond_1
    move-object v2, p2

    :goto_0
    iput-object v2, p0, Lg/dug;->y:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    iget v2, p1, Lg/dug;->ae:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    sget v3, Lg/cpy;->a:I

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v2, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_2
    if-nez v2, :cond_4

    const/16 v2, 0xa0

    :cond_4
    iput v2, p0, Lg/dug;->ae:I

    if-eqz p1, :cond_d

    iget p3, p1, Lg/dug;->i:I

    iput p3, p0, Lg/dug;->i:I

    iget p3, p1, Lg/dug;->l:I

    iput p3, p0, Lg/dug;->l:I

    iput-boolean v1, p0, Lg/dug;->n:Z

    iput-boolean v1, p0, Lg/dug;->q:Z

    iget-boolean p3, p1, Lg/dug;->x:Z

    iput-boolean p3, p0, Lg/dug;->x:Z

    iget-boolean p3, p1, Lg/dug;->k:Z

    iput-boolean p3, p0, Lg/dug;->k:Z

    iget-boolean p3, p1, Lg/dug;->r:Z

    iput-boolean p3, p0, Lg/dug;->r:Z

    iget p3, p1, Lg/dug;->ah:I

    iput p3, p0, Lg/dug;->ah:I

    iget p3, p1, Lg/dug;->f:I

    iput p3, p0, Lg/dug;->f:I

    iget p3, p1, Lg/dug;->a:I

    iput p3, p0, Lg/dug;->a:I

    iget-boolean p3, p1, Lg/dug;->ab:Z

    iput-boolean p3, p0, Lg/dug;->ab:Z

    iget-object p3, p1, Lg/dug;->j:Landroid/graphics/ColorFilter;

    iput-object p3, p0, Lg/dug;->j:Landroid/graphics/ColorFilter;

    iget-boolean p3, p1, Lg/dug;->p:Z

    iput-boolean p3, p0, Lg/dug;->p:Z

    iget-object p3, p1, Lg/dug;->o:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lg/dug;->o:Landroid/content/res/ColorStateList;

    iget-object p3, p1, Lg/dug;->ag:Landroid/graphics/PorterDuff$Mode;

    iput-object p3, p0, Lg/dug;->ag:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p3, p1, Lg/dug;->ad:Z

    iput-boolean p3, p0, Lg/dug;->ad:Z

    iget-boolean p3, p1, Lg/dug;->g:Z

    iput-boolean p3, p0, Lg/dug;->g:Z

    iget p3, p1, Lg/dug;->ae:I

    if-ne p3, v2, :cond_7

    iget-boolean p3, p1, Lg/dug;->z:Z

    if-eqz p3, :cond_6

    iget-object p3, p1, Lg/dug;->c:Landroid/graphics/Rect;

    if-eqz p3, :cond_5

    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p1, Lg/dug;->c:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_5
    iput-object p2, p0, Lg/dug;->c:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lg/dug;->z:Z

    :cond_6
    iget-boolean p2, p1, Lg/dug;->w:Z

    if-eqz p2, :cond_7

    iget p2, p1, Lg/dug;->h:I

    iput p2, p0, Lg/dug;->h:I

    iget p2, p1, Lg/dug;->e:I

    iput p2, p0, Lg/dug;->e:I

    iget p2, p1, Lg/dug;->v:I

    iput p2, p0, Lg/dug;->v:I

    iget p2, p1, Lg/dug;->aa:I

    iput p2, p0, Lg/dug;->aa:I

    iput-boolean v1, p0, Lg/dug;->w:Z

    :cond_7
    iget-boolean p2, p1, Lg/dug;->aj:Z

    if-eqz p2, :cond_8

    iget p2, p1, Lg/dug;->u:I

    iput p2, p0, Lg/dug;->u:I

    iput-boolean v1, p0, Lg/dug;->aj:Z

    :cond_8
    iget-boolean p2, p1, Lg/dug;->ac:Z

    if-eqz p2, :cond_9

    iput-boolean v1, p0, Lg/dug;->ac:Z

    :cond_9
    iget-object p2, p1, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    array-length p3, p2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    iget p3, p1, Lg/dug;->b:I

    iput p3, p0, Lg/dug;->b:I

    iget-object p3, p1, Lg/dug;->s:Landroid/util/SparseArray;

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p3

    iput-object p3, p0, Lg/dug;->s:Landroid/util/SparseArray;

    goto :goto_3

    :cond_a
    new-instance p3, Landroid/util/SparseArray;

    iget v1, p0, Lg/dug;->b:I

    invoke-direct {p3, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p3, p0, Lg/dug;->s:Landroid/util/SparseArray;

    :goto_3
    iget p3, p0, Lg/dug;->b:I

    :goto_4
    if-ge v0, p3, :cond_e

    aget-object v1, p2, v0

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, p0, Lg/dug;->s:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    aget-object v2, p2, v0

    aput-object v2, v1, v0

    :cond_c
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    const/16 p2, 0xa

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lg/dug;->b:I

    :cond_e
    if-eqz p1, :cond_f

    iget-object p2, p1, Lg/dug;->d:[[I

    iput-object p2, p0, Lg/dug;->d:[[I

    goto :goto_6

    :cond_f
    iget-object p2, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    array-length p2, p2

    new-array p2, p2, [[I

    iput-object p2, p0, Lg/dug;->d:[[I

    :goto_6
    if-eqz p1, :cond_10

    iget-object p2, p1, Lg/dug;->af:Lg/asv;

    iput-object p2, p0, Lg/dug;->af:Lg/asv;

    iget-object p1, p1, Lg/dug;->t:Lg/gob;

    iput-object p1, p0, Lg/dug;->t:Lg/gob;

    return-void

    :cond_10
    new-instance p1, Lg/asv;

    invoke-direct {p1}, Lg/asv;-><init>()V

    iput-object p1, p0, Lg/dug;->af:Lg/asv;

    new-instance p1, Lg/gob;

    invoke-direct {p1}, Lg/gob;-><init>()V

    iput-object p1, p0, Lg/dug;->t:Lg/gob;

    return-void
.end method


# virtual methods
.method public final ak(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/dug;->s:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v2, p0, Lg/dug;->s:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v3, p0, Lg/dug;->y:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    iget v3, p0, Lg/dug;->ah:I

    invoke-static {v2, v3}, Lg/dzm;->bb(Landroid/graphics/drawable/Drawable;I)Z

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lg/dug;->m:Lg/cpy;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, p1

    iget-object p1, p0, Lg/dug;->s:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object p1, p0, Lg/dug;->s:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iput-object v1, p0, Lg/dug;->s:Landroid/util/SparseArray;

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method public final al(I)I
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lg/dug;->t:Lg/gob;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, v1, Lg/gob;->d:[I

    iget v3, v1, Lg/gob;->b:I

    invoke-static {v3, p1, v2}, Lg/erl;->w(II[I)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v1, v1, Lg/gob;->a:[Ljava/lang/Object;

    aget-object p1, v1, p1

    sget-object v1, Lg/bfc;->c:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final am(Landroid/graphics/drawable/Drawable;)I
    .locals 5

    iget v0, p0, Lg/dug;->b:I

    iget-object v1, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, 0xa

    new-array v3, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput-object v3, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    new-array v1, v1, [[I

    iget-object v3, p0, Lg/dug;->d:[[I

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lg/dug;->d:[[I

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v3, p0, Lg/dug;->m:Lg/cpy;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    iget v3, p0, Lg/dug;->b:I

    add-int/2addr v3, v1

    iput v3, p0, Lg/dug;->b:I

    iget v1, p0, Lg/dug;->l:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, p0, Lg/dug;->l:I

    iput-boolean v2, p0, Lg/dug;->aj:Z

    iput-boolean v2, p0, Lg/dug;->ac:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lg/dug;->c:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lg/dug;->z:Z

    iput-boolean v2, p0, Lg/dug;->w:Z

    iput-boolean v2, p0, Lg/dug;->n:Z

    return v0
.end method

.method public final an([I)I
    .locals 4

    iget-object v0, p0, Lg/dug;->d:[[I

    iget v1, p0, Lg/dug;->b:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final ao()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dug;->w:Z

    invoke-virtual {p0}, Lg/dug;->ap()V

    iget v0, p0, Lg/dug;->b:I

    iget-object v1, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    iput v2, p0, Lg/dug;->e:I

    iput v2, p0, Lg/dug;->h:I

    const/4 v2, 0x0

    iput v2, p0, Lg/dug;->aa:I

    iput v2, p0, Lg/dug;->v:I

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lg/dug;->h:I

    if-le v4, v5, :cond_0

    iput v4, p0, Lg/dug;->h:I

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lg/dug;->e:I

    if-le v4, v5, :cond_1

    iput v4, p0, Lg/dug;->e:I

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iget v5, p0, Lg/dug;->v:I

    if-le v4, v5, :cond_2

    iput v4, p0, Lg/dug;->v:I

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    iget v4, p0, Lg/dug;->aa:I

    if-le v3, v4, :cond_3

    iput v3, p0, Lg/dug;->aa:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final ap()V
    .locals 7

    iget-object v0, p0, Lg/dug;->s:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lg/dug;->s:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lg/dug;->s:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v4, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lg/dug;->y:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    iget v5, p0, Lg/dug;->ah:I

    invoke-static {v3, v5}, Lg/dzm;->bb(Landroid/graphics/drawable/Drawable;I)Z

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lg/dug;->m:Lg/cpy;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lg/dug;->s:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method public final canApplyTheme()Z
    .locals 6

    iget v0, p0, Lg/dug;->b:I

    iget-object v1, p0, Lg/dug;->ai:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_0
    iget-object v4, p0, Lg/dug;->s:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final getChangingConfigurations()I
    .locals 2

    iget v0, p0, Lg/dug;->i:I

    iget v1, p0, Lg/dug;->l:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lg/fam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/fam;-><init>(Lg/dug;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lg/fam;

    invoke-direct {v0, p0, p1}, Lg/fam;-><init>(Lg/dug;Landroid/content/res/Resources;)V

    return-object v0
.end method
