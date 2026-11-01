.class public final Lg/fzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lg/fzq;


# instance fields
.field private entriesView:Lg/dsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dsm;"
        }
    .end annotation
.end field

.field private hashArray:[I

.field private hashShift:I

.field private isReadOnly:Z

.field private keysArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private keysView:Lg/eqy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/eqy;"
        }
    .end annotation
.end field

.field private length:I

.field private maxProbeDistance:I

.field private modCount:I

.field private presenceArray:[I

.field private size:I

.field private valuesArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private valuesView:Lg/afc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/afc;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fzq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/fzq;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/fzq;->isReadOnly:Z

    sput-object v0, Lg/fzq;->a:Lg/fzq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lg/fzq;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    if-ltz p1, :cond_1

    new-array v0, p1, [Ljava/lang/Object;

    new-array v1, p1, [I

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    const/4 p1, 0x1

    :cond_0
    mul-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    new-array v3, p1, [I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    iput-object v1, p0, Lg/fzq;->presenceArray:[I

    iput-object v3, p0, Lg/fzq;->hashArray:[I

    const/4 v0, 0x2

    iput v0, p0, Lg/fzq;->maxProbeDistance:I

    const/4 v0, 0x0

    iput v0, p0, Lg/fzq;->length:I

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    add-int/2addr p1, v2

    iput p1, p0, Lg/fzq;->hashShift:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity must be non-negative."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic b(Lg/fzq;)[I
    .locals 0

    iget-object p0, p0, Lg/fzq;->presenceArray:[I

    return-object p0
.end method

.method public static final synthetic c(Lg/fzq;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic d(Lg/fzq;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic e(Lg/fzq;)I
    .locals 0

    iget p0, p0, Lg/fzq;->length:I

    return p0
.end method

.method public static final synthetic f(Lg/fzq;)I
    .locals 0

    iget p0, p0, Lg/fzq;->modCount:I

    return p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lg/fzq;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Lg/hbd;

    invoke-direct {v0, p0}, Lg/hbd;-><init>(Lg/fzq;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The map cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()V
    .locals 6

    invoke-virtual {p0}, Lg/fzq;->p()V

    iget v0, p0, Lg/fzq;->length:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lg/fzq;->presenceArray:[I

    aget v4, v3, v2

    if-ltz v4, :cond_0

    iget-object v5, p0, Lg/fzq;->hashArray:[I

    aput v1, v5, v4

    const/4 v4, -0x1

    aput v4, v3, v2

    :cond_0
    if-eq v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    iget v2, p0, Lg/fzq;->length:I

    invoke-static {v1, v2, v0}, Lg/bff;->an(II[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v2, p0, Lg/fzq;->length:I

    invoke-static {v1, v2, v0}, Lg/bff;->an(II[Ljava/lang/Object;)V

    :cond_2
    iput v1, p0, Lg/fzq;->size:I

    iput v1, p0, Lg/fzq;->length:I

    iget v0, p0, Lg/fzq;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/fzq;->modCount:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lg/fzq;->j(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lg/fzq;->i(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lg/fzq;->entriesView:Lg/dsm;

    if-nez v0, :cond_0

    new-instance v0, Lg/dsm;

    invoke-direct {v0, p0}, Lg/dsm;-><init>(Lg/fzq;)V

    iput-object v0, p0, Lg/fzq;->entriesView:Lg/dsm;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    iget v0, p0, Lg/fzq;->size:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/fzq;->h(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final g()Lg/fzq;
    .locals 2

    invoke-virtual {p0}, Lg/fzq;->p()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fzq;->isReadOnly:Z

    iget v0, p0, Lg/fzq;->size:I

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>"

    sget-object v1, Lg/fzq;->a:Lg/fzq;

    invoke-static {v1, v0}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lg/fzq;->j(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final h(Ljava/util/Collection;)Z
    .locals 2

    const-string v0, "m"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lg/fzq;->k(Ljava/util/Map$Entry;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    nop

    :catch_0
    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 6

    new-instance v0, Lg/gwl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/gwl;-><init>(Lg/fzq;I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lg/bwp;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Lg/bwp;->c:I

    iget-object v4, v0, Lg/bwp;->b:Ljava/io/Serializable;

    check-cast v4, Lg/fzq;

    invoke-static {v4}, Lg/fzq;->e(Lg/fzq;)I

    move-result v5

    if-ge v3, v5, :cond_2

    iget v3, v0, Lg/bwp;->c:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lg/bwp;->c:I

    iput v3, v0, Lg/bwp;->d:I

    invoke-static {v4}, Lg/fzq;->d(Lg/fzq;)[Ljava/lang/Object;

    move-result-object v3

    iget v5, v0, Lg/bwp;->d:I

    aget-object v3, v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v4}, Lg/fzq;->c(Lg/fzq;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lg/bff;->d(Ljava/lang/Object;)V

    iget v5, v0, Lg/bwp;->d:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    xor-int/2addr v3, v4

    invoke-virtual {v0}, Lg/bwp;->e()V

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_3
    return v2
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lg/fzq;->length:I

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lg/fzq;->presenceArray:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_1
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lg/fzq;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 5

    invoke-virtual {p0, p1}, Lg/fzq;->n(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lg/fzq;->maxProbeDistance:I

    :goto_0
    iget-object v2, p0, Lg/fzq;->hashArray:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-lez v2, :cond_1

    iget-object v4, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/2addr v1, v3

    if-gez v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/fzq;->hashArray:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final k(Ljava/util/Map$Entry;)Z
    .locals 2

    const-string v0, "entry"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/fzq;->j(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    aget-object v0, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lg/fzq;->keysView:Lg/eqy;

    if-nez v0, :cond_0

    new-instance v0, Lg/eqy;

    invoke-direct {v0, p0}, Lg/eqy;-><init>(Lg/fzq;)V

    iput-object v0, p0, Lg/fzq;->keysView:Lg/eqy;

    :cond_0
    return-object v0
.end method

.method public final l(Ljava/lang/Object;)I
    .locals 7

    invoke-virtual {p0}, Lg/fzq;->p()V

    :goto_0
    invoke-virtual {p0, p1}, Lg/fzq;->n(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lg/fzq;->maxProbeDistance:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lg/fzq;->hashArray:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lg/fzq;->hashArray:[I

    aget v4, v3, v0

    const/4 v5, 0x1

    if-gtz v4, :cond_3

    iget v1, p0, Lg/fzq;->length:I

    iget-object v4, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    array-length v6, v4

    if-lt v1, v6, :cond_1

    invoke-virtual {p0, v5}, Lg/fzq;->o(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lg/fzq;->length:I

    aput-object p1, v4, v1

    iget-object p1, p0, Lg/fzq;->presenceArray:[I

    aput v0, p1, v1

    aput v6, v3, v0

    iget p1, p0, Lg/fzq;->size:I

    add-int/2addr p1, v5

    iput p1, p0, Lg/fzq;->size:I

    iget p1, p0, Lg/fzq;->modCount:I

    add-int/2addr p1, v5

    iput p1, p0, Lg/fzq;->modCount:I

    iget p1, p0, Lg/fzq;->maxProbeDistance:I

    if-le v2, p1, :cond_2

    iput v2, p0, Lg/fzq;->maxProbeDistance:I

    :cond_2
    return v1

    :cond_3
    iget-object v3, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v6, v4, -0x1

    aget-object v3, v3, v6

    invoke-static {v3, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    neg-int p1, v4

    return p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_5

    iget-object v0, p0, Lg/fzq;->hashArray:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lg/fzq;->u(I)V

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lg/fzq;->hashArray:[I

    array-length v0, v0

    sub-int/2addr v0, v5

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method public final m(Ljava/util/Map$Entry;)Z
    .locals 2

    const-string v0, "entry"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fzq;->p()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/fzq;->j(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0, v0}, Lg/fzq;->s(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final n(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, -0x61c88647

    mul-int p1, p1, v0

    iget v0, p0, Lg/fzq;->hashShift:I

    ushr-int/2addr p1, v0

    return p1
.end method

.method public final o(I)V
    .locals 5

    iget-object v0, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lg/fzq;->length:I

    sub-int/2addr v1, v2

    iget v3, p0, Lg/fzq;->size:I

    sub-int v3, v2, v3

    const/4 v4, 0x1

    if-ge v1, p1, :cond_0

    add-int/2addr v1, v3

    if-lt v1, p1, :cond_0

    array-length v1, v0

    div-int/lit8 v1, v1, 0x4

    if-lt v3, v1, :cond_0

    invoke-virtual {p0, v4}, Lg/fzq;->q(Z)V

    return-void

    :cond_0
    add-int/2addr v2, p1

    if-ltz v2, :cond_7

    array-length p1, v0

    if-le v2, p1, :cond_6

    array-length p1, v0

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr p1, v1

    sub-int v1, p1, v2

    if-gez v1, :cond_1

    move p1, v2

    :cond_1
    const v1, 0x7ffffff7

    sub-int v3, p1, v1

    if-lez v3, :cond_3

    if-le v2, v1, :cond_2

    const p1, 0x7fffffff

    goto :goto_0

    :cond_2
    const p1, 0x7ffffff7

    :cond_3
    :goto_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    iget-object v0, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_4

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    iget-object v0, p0, Lg/fzq;->presenceArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lg/fzq;->presenceArray:[I

    if-ge p1, v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, p1

    :goto_2
    mul-int/lit8 v4, v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    iget-object v0, p0, Lg/fzq;->hashArray:[I

    array-length v0, v0

    if-le p1, v0, :cond_6

    invoke-virtual {p0, p1}, Lg/fzq;->u(I)V

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final p()V
    .locals 1

    iget-boolean v0, p0, Lg/fzq;->isReadOnly:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lg/fzq;->p()V

    invoke-virtual {p0, p1}, Lg/fzq;->l(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0}, Lg/fzq;->t()[Ljava/lang/Object;

    move-result-object v0

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1

    :cond_0
    aput-object p2, v0, p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 5

    const-string v0, "from"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fzq;->p()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lg/fzq;->o(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lg/fzq;->l(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, Lg/fzq;->t()[Ljava/lang/Object;

    move-result-object v2

    if-ltz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0

    :cond_2
    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v3, v2, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final q(Z)V
    .locals 7

    iget-object v0, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lg/fzq;->length:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lg/fzq;->presenceArray:[I

    aget v4, v3, v1

    if-ltz v4, :cond_2

    iget-object v5, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    aget-object v6, v5, v1

    aput-object v6, v5, v2

    if-eqz v0, :cond_0

    aget-object v5, v0, v1

    aput-object v5, v0, v2

    :cond_0
    if-eqz p1, :cond_1

    aput v4, v3, v2

    iget-object v3, p0, Lg/fzq;->hashArray:[I

    add-int/lit8 v5, v2, 0x1

    aput v5, v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    invoke-static {v2, v3, p1}, Lg/bff;->an(II[Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    iget p1, p0, Lg/fzq;->length:I

    invoke-static {v2, p1, v0}, Lg/bff;->an(II[Ljava/lang/Object;)V

    :cond_4
    iput v2, p0, Lg/fzq;->length:I

    return-void
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Lg/fzq;->isReadOnly:Z

    return v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/fzq;->p()V

    invoke-virtual {p0, p1}, Lg/fzq;->j(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    aget-object v0, v0, p1

    invoke-virtual {p0, p1}, Lg/fzq;->s(I)V

    return-object v0
.end method

.method public final s(I)V
    .locals 11

    iget-object v0, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    aput-object v1, v0, p1

    :cond_0
    iget-object v0, p0, Lg/fzq;->presenceArray:[I

    aget v0, v0, p1

    iget v1, p0, Lg/fzq;->maxProbeDistance:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lg/fzq;->hashArray:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    move v1, v2

    :cond_1
    const/4 v2, 0x0

    move v3, v1

    const/4 v4, 0x0

    move v1, v0

    :cond_2
    add-int/lit8 v5, v0, -0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/fzq;->hashArray:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_0
    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lg/fzq;->maxProbeDistance:I

    const/4 v6, -0x1

    if-le v4, v5, :cond_4

    iget-object v0, p0, Lg/fzq;->hashArray:[I

    aput v2, v0, v1

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lg/fzq;->hashArray:[I

    aget v7, v5, v0

    if-nez v7, :cond_5

    aput v2, v5, v1

    goto :goto_3

    :cond_5
    if-gez v7, :cond_6

    aput v6, v5, v1

    :goto_1
    move v1, v0

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v8, v7, -0x1

    aget-object v5, v5, v8

    invoke-virtual {p0, v5}, Lg/fzq;->n(Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v5, v0

    iget-object v9, p0, Lg/fzq;->hashArray:[I

    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    and-int/2addr v5, v10

    if-lt v5, v4, :cond_7

    aput v7, v9, v1

    iget-object v4, p0, Lg/fzq;->presenceArray:[I

    aput v1, v4, v8

    goto :goto_1

    :cond_7
    :goto_2
    add-int/2addr v3, v6

    if-gez v3, :cond_2

    iget-object v0, p0, Lg/fzq;->hashArray:[I

    aput v6, v0, v1

    :goto_3
    iget-object v0, p0, Lg/fzq;->presenceArray:[I

    aput v6, v0, p1

    iget p1, p0, Lg/fzq;->size:I

    add-int/2addr p1, v6

    iput p1, p0, Lg/fzq;->size:I

    iget p1, p0, Lg/fzq;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/fzq;->modCount:I

    return-void
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lg/fzq;->size:I

    return v0
.end method

.method public final t()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    array-length v0, v0

    if-ltz v0, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lg/fzq;->valuesArray:[Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be non-negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lg/fzq;->size:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lg/gwl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/gwl;-><init>(Lg/fzq;I)V

    :goto_0
    invoke-virtual {v1}, Lg/bwp;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    if-lez v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v3, v1, Lg/bwp;->c:I

    iget-object v4, v1, Lg/bwp;->b:Ljava/io/Serializable;

    check-cast v4, Lg/fzq;

    invoke-static {v4}, Lg/fzq;->e(Lg/fzq;)I

    move-result v5

    if-ge v3, v5, :cond_3

    iget v3, v1, Lg/bwp;->c:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lg/bwp;->c:I

    iput v3, v1, Lg/bwp;->d:I

    invoke-static {v4}, Lg/fzq;->d(Lg/fzq;)[Ljava/lang/Object;

    move-result-object v3

    iget v5, v1, Lg/bwp;->d:I

    aget-object v3, v3, v5

    const-string v5, "(this Map)"

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lg/fzq;->c(Lg/fzq;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lg/bff;->d(Ljava/lang/Object;)V

    iget v6, v1, Lg/bwp;->d:I

    aget-object v3, v3, v6

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v1}, Lg/bwp;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final u(I)V
    .locals 5

    iget v0, p0, Lg/fzq;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/fzq;->modCount:I

    iget v0, p0, Lg/fzq;->length:I

    iget v1, p0, Lg/fzq;->size:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lg/fzq;->q(Z)V

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lg/fzq;->hashArray:[I

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/fzq;->hashShift:I

    :goto_0
    iget p1, p0, Lg/fzq;->length:I

    if-ge v2, p1, :cond_4

    add-int/lit8 p1, v2, 0x1

    iget-object v0, p0, Lg/fzq;->keysArray:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lg/fzq;->n(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lg/fzq;->maxProbeDistance:I

    :goto_1
    iget-object v3, p0, Lg/fzq;->hashArray:[I

    aget v4, v3, v0

    if-nez v4, :cond_1

    aput p1, v3, v0

    iget-object v1, p0, Lg/fzq;->presenceArray:[I

    aput v0, v1, v2

    move v2, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    add-int/lit8 v4, v0, -0x1

    if-nez v0, :cond_2

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lg/fzq;->valuesView:Lg/afc;

    if-nez v0, :cond_0

    new-instance v0, Lg/afc;

    invoke-direct {v0, p0}, Lg/afc;-><init>(Lg/fzq;)V

    iput-object v0, p0, Lg/fzq;->valuesView:Lg/afc;

    :cond_0
    return-object v0
.end method
