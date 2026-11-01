.class public final Lg/dyw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Z

.field public c:[I

.field public d:I

.field public e:[F

.field public f:[I

.field public g:I

.field public h:I

.field public i:[I

.field public j:[I

.field public k:I

.field public l:[I


# virtual methods
.method public final m(IZ)V
    .locals 3

    iget v0, p0, Lg/dyw;->d:I

    iget-object v1, p0, Lg/dyw;->j:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lg/dyw;->j:[I

    iget-object v0, p0, Lg/dyw;->b:[Z

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lg/dyw;->b:[Z

    :cond_0
    iget-object v0, p0, Lg/dyw;->j:[I

    iget v1, p0, Lg/dyw;->d:I

    aput p1, v0, v1

    iget-object p1, p0, Lg/dyw;->b:[Z

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lg/dyw;->d:I

    aput-boolean p2, p1, v1

    return-void
.end method

.method public final n(IF)V
    .locals 3

    iget v0, p0, Lg/dyw;->g:I

    iget-object v1, p0, Lg/dyw;->c:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lg/dyw;->c:[I

    iget-object v0, p0, Lg/dyw;->e:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lg/dyw;->e:[F

    :cond_0
    iget-object v0, p0, Lg/dyw;->c:[I

    iget v1, p0, Lg/dyw;->g:I

    aput p1, v0, v1

    iget-object p1, p0, Lg/dyw;->e:[F

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lg/dyw;->g:I

    aput p2, p1, v1

    return-void
.end method

.method public final o(II)V
    .locals 3

    iget v0, p0, Lg/dyw;->k:I

    iget-object v1, p0, Lg/dyw;->f:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lg/dyw;->f:[I

    iget-object v0, p0, Lg/dyw;->i:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lg/dyw;->i:[I

    :cond_0
    iget-object v0, p0, Lg/dyw;->f:[I

    iget v1, p0, Lg/dyw;->k:I

    aput p1, v0, v1

    iget-object p1, p0, Lg/dyw;->i:[I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lg/dyw;->k:I

    aput p2, p1, v1

    return-void
.end method

.method public final p(ILjava/lang/String;)V
    .locals 3

    iget v0, p0, Lg/dyw;->h:I

    iget-object v1, p0, Lg/dyw;->l:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lg/dyw;->l:[I

    iget-object v0, p0, Lg/dyw;->a:[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lg/dyw;->a:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lg/dyw;->l:[I

    iget v1, p0, Lg/dyw;->h:I

    aput p1, v0, v1

    iget-object p1, p0, Lg/dyw;->a:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lg/dyw;->h:I

    aput-object p2, p1, v1

    return-void
.end method
