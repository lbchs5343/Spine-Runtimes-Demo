.class public final Lg/dcf;
.super Lg/ddt;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# instance fields
.field private backing:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private length:I

.field private final offset:I

.field private final parent:Lg/dcf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dcf;"
        }
    .end annotation
.end field

.field private final root:Lg/fsq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/fsq;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;IILg/dcf;Lg/fsq;)V
    .locals 1

    const-string v0, "backing"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p5, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iput p2, p0, Lg/dcf;->offset:I

    iput p3, p0, Lg/dcf;->length:I

    iput-object p4, p0, Lg/dcf;->parent:Lg/dcf;

    iput-object p5, p0, Lg/dcf;->root:Lg/fsq;

    invoke-static {p5}, Lg/fsq;->c(Lg/fsq;)I

    move-result p1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public static final synthetic a(Lg/dcf;)Lg/fsq;
    .locals 0

    iget-object p0, p0, Lg/dcf;->root:Lg/fsq;

    return-object p0
.end method

.method public static final synthetic b(Lg/dcf;)I
    .locals 0

    iget p0, p0, Lg/dcf;->length:I

    return p0
.end method

.method public static final synthetic c(Lg/dcf;)I
    .locals 0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static final synthetic d(Lg/dcf;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic e(Lg/dcf;)I
    .locals 0

    iget p0, p0, Lg/dcf;->offset:I

    return p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/dcf;->root:Lg/fsq;

    invoke-static {v0}, Lg/fsq;->e(Lg/fsq;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lg/diw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/diw;-><init>(Ljava/util/AbstractCollection;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The list cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lg/dcf;->i()V

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->length:I

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    iget v0, p0, Lg/dcf;->offset:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lg/dcf;->n(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {p1, v0, v1, v2}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lg/dcf;->i()V

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->offset:I

    iget v1, p0, Lg/dcf;->length:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lg/dcf;->n(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 3

    const-string v0, "elements"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/dcf;->i()V

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->length:I

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lg/dcf;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2, v0}, Lg/dcf;->l(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {p1, v0, v1, v2}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/dcf;->i()V

    invoke-virtual {p0}, Lg/dcf;->f()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lg/dcf;->offset:I

    iget v2, p0, Lg/dcf;->length:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lg/dcf;->l(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .locals 2

    invoke-virtual {p0}, Lg/dcf;->i()V

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->offset:I

    iget v1, p0, Lg/dcf;->length:I

    invoke-virtual {p0, v0, v1}, Lg/dcf;->h(II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    invoke-virtual {p0}, Lg/dcf;->f()V

    if-eq p1, p0, :cond_3

    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget v2, p0, Lg/dcf;->offset:I

    iget v3, p0, Lg/dcf;->length:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    add-int v5, v2, v4

    aget-object v5, v0, v5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lg/dcf;->root:Lg/fsq;

    invoke-static {v0}, Lg/fsq;->c(Lg/fsq;)I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final g(IILjava/util/Collection;Z)I
    .locals 2

    iget-object v0, p0, Lg/dcf;->parent:Lg/dcf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lg/dcf;->g(IILjava/util/Collection;Z)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/dcf;->root:Lg/fsq;

    sget-object v1, Lg/fsq;->a:Lg/fsq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lg/fsq;->h(IILjava/util/Collection;Z)I

    move-result p1

    :goto_0
    if-lez p1, :cond_1

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    :cond_1
    iget p2, p0, Lg/dcf;->length:I

    sub-int/2addr p2, p1

    iput p2, p0, Lg/dcf;->length:I

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->length:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget v1, p0, Lg/dcf;->offset:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "index: "

    const-string v3, ", size: "

    invoke-static {p1, v0, v2, v3}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final h(II)V
    .locals 2

    if-lez p2, :cond_0

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    iget-object v0, p0, Lg/dcf;->parent:Lg/dcf;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lg/dcf;->h(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/dcf;->root:Lg/fsq;

    sget-object v1, Lg/fsq;->a:Lg/fsq;

    invoke-virtual {v0, p1, p2}, Lg/fsq;->i(II)V

    :goto_0
    iget p1, p0, Lg/dcf;->length:I

    sub-int/2addr p1, p2

    iput p1, p0, Lg/dcf;->length:I

    return-void
.end method

.method public final hashCode()I
    .locals 7

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget-object v0, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget v1, p0, Lg/dcf;->offset:I

    iget v2, p0, Lg/dcf;->length:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    add-int v6, v1, v5

    aget-object v6, v0, v6

    mul-int/lit8 v3, v3, 0x1f

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    add-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lg/dcf;->root:Lg/fsq;

    invoke-static {v0}, Lg/fsq;->e(Lg/fsq;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Lg/dcf;->f()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lg/dcf;->length:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget v2, p0, Lg/dcf;->offset:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/dcf;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final j()I
    .locals 1

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->length:I

    return v0
.end method

.method public final k(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lg/dcf;->parent:Lg/dcf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/dcf;->k(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/dcf;->root:Lg/fsq;

    sget-object v1, Lg/fsq;->a:Lg/fsq;

    invoke-virtual {v0, p1}, Lg/fsq;->l(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget v0, p0, Lg/dcf;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/dcf;->length:I

    return-object p1
.end method

.method public final l(ILjava/util/Collection;I)V
    .locals 2

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lg/dcf;->parent:Lg/dcf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lg/dcf;->l(ILjava/util/Collection;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/dcf;->root:Lg/fsq;

    sget-object v1, Lg/fsq;->a:Lg/fsq;

    invoke-virtual {v0, p1, p2, p3}, Lg/fsq;->f(ILjava/util/Collection;I)V

    :goto_0
    iget-object p1, p0, Lg/dcf;->root:Lg/fsq;

    invoke-static {p1}, Lg/fsq;->d(Lg/fsq;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget p1, p0, Lg/dcf;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Lg/dcf;->length:I

    return-void
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget v2, p0, Lg/dcf;->offset:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/dcf;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 4

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->length:I

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    new-instance v0, Lg/aqx;

    invoke-direct {v0, p0, p1}, Lg/aqx;-><init>(Lg/dcf;I)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "index: "

    const-string v3, ", size: "

    invoke-static {p1, v0, v2, v3}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final m(I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lg/dcf;->i()V

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->length:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lg/dcf;->offset:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lg/dcf;->k(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "index: "

    const-string v3, ", size: "

    invoke-static {p1, v0, v2, v3}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final n(ILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lg/dcf;->parent:Lg/dcf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/dcf;->n(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/dcf;->root:Lg/fsq;

    sget-object v1, Lg/fsq;->a:Lg/fsq;

    invoke-virtual {v0, p1, p2}, Lg/fsq;->n(ILjava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lg/dcf;->root:Lg/fsq;

    invoke-static {p1}, Lg/fsq;->d(Lg/fsq;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget p1, p0, Lg/dcf;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/dcf;->length:I

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lg/dcf;->i()V

    invoke-virtual {p0}, Lg/dcf;->f()V

    invoke-virtual {p0, p1}, Lg/dcf;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lg/dcf;->m(I)Ljava/lang/Object;

    :cond_0
    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/dcf;->i()V

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->offset:I

    iget v1, p0, Lg/dcf;->length:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lg/dcf;->g(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/dcf;->i()V

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->offset:I

    iget v1, p0, Lg/dcf;->length:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lg/dcf;->g(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lg/dcf;->i()V

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget v0, p0, Lg/dcf;->length:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget v1, p0, Lg/dcf;->offset:I

    add-int v2, v1, p1

    aget-object v2, v0, v2

    add-int/2addr v1, p1

    aput-object p2, v0, v1

    return-object v2

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {p1, v0, v1, v2}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final subList(II)Ljava/util/List;
    .locals 7

    iget v0, p0, Lg/dcf;->length:I

    invoke-static {p1, p2, v0}, Lg/ffb;->p(III)V

    new-instance v1, Lg/dcf;

    iget-object v2, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget v0, p0, Lg/dcf;->offset:I

    add-int v3, v0, p1

    sub-int v4, p2, p1

    iget-object v6, p0, Lg/dcf;->root:Lg/fsq;

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lg/dcf;-><init>([Ljava/lang/Object;IILg/dcf;Lg/fsq;)V

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget-object v0, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget v1, p0, Lg/dcf;->offset:I

    iget v2, p0, Lg/dcf;->length:I

    add-int/2addr v2, v1

    invoke-static {v1, v2, v0}, Lg/fuv;->bh(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    const-string v0, "array"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/dcf;->f()V

    array-length v0, p1

    iget v1, p0, Lg/dcf;->length:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget v2, p0, Lg/dcf;->offset:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOfRange(...)"

    invoke-static {p1, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget v2, p0, Lg/dcf;->offset:I

    add-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v3, v2, v1, v0, p1}, Lg/fuv;->bd(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iget v0, p0, Lg/dcf;->length:I

    array-length v1, p1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lg/dcf;->f()V

    iget-object v0, p0, Lg/dcf;->backing:[Ljava/lang/Object;

    iget v1, p0, Lg/dcf;->offset:I

    iget v2, p0, Lg/dcf;->length:I

    invoke-static {v0, v1, v2, p0}, Lg/bff;->ah([Ljava/lang/Object;IILg/ddt;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
