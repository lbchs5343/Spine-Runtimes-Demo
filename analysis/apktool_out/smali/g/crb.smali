.class public final Lg/crb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:[F

.field public final b:[F

.field public c:[Lg/gz;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:F

.field public i:Z

.field public j:Lg/gdo;

.field public k:I

.field public l:Z


# direct methods
.method public constructor <init>(Lg/gdo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/crb;->k:I

    iput v0, p0, Lg/crb;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lg/crb;->g:I

    iput-boolean v0, p0, Lg/crb;->l:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    iput-object v2, p0, Lg/crb;->b:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lg/crb;->a:[F

    const/16 v1, 0x10

    new-array v1, v1, [Lg/gz;

    iput-object v1, p0, Lg/crb;->c:[Lg/gz;

    iput v0, p0, Lg/crb;->f:I

    iput v0, p0, Lg/crb;->e:I

    iput-object p1, p0, Lg/crb;->j:Lg/gdo;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lg/crb;

    iget v0, p0, Lg/crb;->k:I

    iget p1, p1, Lg/crb;->k:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final m(Lg/bwo;F)V
    .locals 3

    iput p2, p0, Lg/crb;->h:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lg/crb;->l:Z

    iget p2, p0, Lg/crb;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lg/crb;->d:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lg/crb;->c:[Lg/gz;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p0, v0}, Lg/gz;->f(Lg/bwo;Lg/crb;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lg/crb;->f:I

    return-void
.end method

.method public final n(Lg/bwo;Lg/gz;)V
    .locals 4

    iget v0, p0, Lg/crb;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lg/crb;->c:[Lg/gz;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Lg/gz;->k(Lg/bwo;Lg/gz;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lg/crb;->f:I

    return-void
.end method

.method public final o(Lg/gz;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lg/crb;->f:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lg/crb;->c:[Lg/gz;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/crb;->c:[Lg/gz;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gz;

    iput-object v0, p0, Lg/crb;->c:[Lg/gz;

    :cond_2
    iget-object v0, p0, Lg/crb;->c:[Lg/gz;

    iget v1, p0, Lg/crb;->f:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lg/crb;->f:I

    return-void
.end method

.method public final p(Lg/gz;)V
    .locals 4

    iget v0, p0, Lg/crb;->f:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lg/crb;->c:[Lg/gz;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Lg/crb;->c:[Lg/gz;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_1

    :cond_0
    iget p1, p0, Lg/crb;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lg/crb;->f:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final q()V
    .locals 6

    sget-object v0, Lg/gdo;->UNKNOWN:Lg/gdo;

    iput-object v0, p0, Lg/crb;->j:Lg/gdo;

    const/4 v0, 0x0

    iput v0, p0, Lg/crb;->g:I

    const/4 v1, -0x1

    iput v1, p0, Lg/crb;->k:I

    iput v1, p0, Lg/crb;->d:I

    const/4 v1, 0x0

    iput v1, p0, Lg/crb;->h:F

    iput-boolean v0, p0, Lg/crb;->l:Z

    iget v2, p0, Lg/crb;->f:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lg/crb;->c:[Lg/gz;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lg/crb;->f:I

    iput v0, p0, Lg/crb;->e:I

    iput-boolean v0, p0, Lg/crb;->i:Z

    iget-object v0, p0, Lg/crb;->a:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/crb;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
