.class public final Lg/bxl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/bxl;->a:I

    iput-object p2, p0, Lg/bxl;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    iget p1, p0, Lg/bxl;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    iget p1, p0, Lg/bxl;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final clear()V
    .locals 1

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/akj;

    iget-object v0, v0, Lg/akj;->f:Ljava/lang/Object;

    check-cast v0, Lg/cmg;

    invoke-virtual {v0}, Lg/cmg;->clear()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    invoke-virtual {v0}, Lg/bcp;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/akj;

    iget-object v0, v0, Lg/akj;->f:Ljava/lang/Object;

    check-cast v0, Lg/cmg;

    invoke-virtual {v0, p1}, Lg/cmg;->n(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_0
    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast p1, Lg/akj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    invoke-virtual {v0, p1}, Lg/tl;->f(Ljava/util/Collection;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-virtual {p0}, Lg/bxl;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lg/bxl;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    :pswitch_0
    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/util/Set;

    :try_start_1
    iget v1, v0, Lg/bcp;->g:I

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, p1}, Lg/tl;->f(Ljava/util/Collection;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_3

    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    :catch_1
    :cond_3
    const/4 p1, 0x0

    :goto_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/akj;

    iget-object v1, v0, Lg/akj;->f:Ljava/lang/Object;

    check-cast v1, Lg/cmg;

    iget v1, v1, Lg/cmg;->g:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v4, v0, Lg/akj;->f:Ljava/lang/Object;

    check-cast v4, Lg/cmg;

    iget-object v4, v4, Lg/cmg;->j:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v3

    :pswitch_0
    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    iget v1, v0, Lg/bcp;->g:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Lg/bcp;->n(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/akj;

    iget-object v0, v0, Lg/akj;->f:Ljava/lang/Object;

    check-cast v0, Lg/cmg;

    iget v0, v0, Lg/cmg;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    invoke-virtual {v0}, Lg/bcp;->isEmpty()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/duj;

    iget-object v1, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v1, Lg/akj;

    invoke-direct {v0, v1}, Lg/duj;-><init>(Lg/akj;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lg/hx;

    iget-object v1, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v1, Lg/tl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/hx;-><init>(Lg/tl;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/akj;

    iget-object v1, v0, Lg/akj;->f:Ljava/lang/Object;

    check-cast v1, Lg/cmg;

    invoke-virtual {v1, p1}, Lg/cmg;->n(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, v0, Lg/akj;->f:Ljava/lang/Object;

    check-cast v0, Lg/cmg;

    invoke-virtual {v0, p1}, Lg/cmg;->m(I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_0
    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    invoke-virtual {v0, p1}, Lg/bcp;->k(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {v0, p1}, Lg/bcp;->r(I)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast p1, Lg/akj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    invoke-virtual {v0, p1}, Lg/tl;->d(Ljava/util/Collection;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast p1, Lg/akj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    invoke-virtual {v0, p1}, Lg/tl;->e(Ljava/util/Collection;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/akj;

    iget-object v0, v0, Lg/akj;->f:Ljava/lang/Object;

    check-cast v0, Lg/cmg;

    iget v0, v0, Lg/cmg;->g:I

    return v0

    :pswitch_0
    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    iget v0, v0, Lg/bcp;->g:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/akj;

    iget-object v1, v0, Lg/akj;->f:Ljava/lang/Object;

    check-cast v1, Lg/cmg;

    iget v1, v1, Lg/cmg;->g:I

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Lg/akj;->f:Ljava/lang/Object;

    check-cast v4, Lg/cmg;

    iget-object v4, v4, Lg/cmg;->j:[Ljava/lang/Object;

    aget-object v4, v4, v3

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :pswitch_0
    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    iget v1, v0, Lg/bcp;->g:I

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lg/bcp;->n(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lg/bxl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/akj;

    iget-object v1, v0, Lg/akj;->f:Ljava/lang/Object;

    check-cast v1, Lg/cmg;

    iget v1, v1, Lg/cmg;->g:I

    array-length v2, p1

    if-ge v2, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Lg/akj;->f:Ljava/lang/Object;

    check-cast v3, Lg/cmg;

    iget-object v3, v3, Lg/cmg;->j:[Ljava/lang/Object;

    aget-object v3, v3, v2

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_2
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lg/bxl;->b:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    iget v1, v0, Lg/bcp;->g:I

    array-length v2, p1

    if-ge v2, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Lg/bcp;->n(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    array-length v0, p1

    if-le v0, v1, :cond_5

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_5
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
