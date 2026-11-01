.class public final Lg/ggu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/cpd;

.field public final b:Ljava/util/Set;

.field public final c:Lg/eau;

.field public final d:Lg/cmv;

.field public final e:Ljava/util/HashMap;

.field public f:Z

.field public final g:Lg/gqc;

.field public final h:I

.field public i:Lg/fce;


# direct methods
.method public constructor <init>(Lg/cmv;Lg/gqc;ILjava/util/Set;Lg/eau;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/ggu;->e:Ljava/util/HashMap;

    iput-object p1, p0, Lg/ggu;->d:Lg/cmv;

    iput-object p2, p0, Lg/ggu;->g:Lg/gqc;

    iput p3, p0, Lg/ggu;->h:I

    iput-object p4, p0, Lg/ggu;->b:Ljava/util/Set;

    new-instance p1, Lg/cpd;

    invoke-direct {p1, p3}, Lg/cpd;-><init>(I)V

    iput-object p1, p0, Lg/ggu;->a:Lg/cpd;

    sget-object p1, Lg/eau;->a:Lg/eau;

    sget-object p2, Lg/evh;->a:Ljava/lang/String;

    if-nez p5, :cond_0

    move-object p5, p1

    :cond_0
    iput-object p5, p0, Lg/ggu;->c:Lg/eau;

    return-void
.end method


# virtual methods
.method public final j(ILg/cqz;)V
    .locals 2

    iget-object v0, p0, Lg/ggu;->i:Lg/fce;

    iget-object v1, p0, Lg/ggu;->a:Lg/cpd;

    invoke-virtual {v1, p2}, Lg/cpd;->d(Lg/cqz;)I

    move-result p2

    iget-object v0, v0, Lg/fce;->x:[I

    aput p2, v0, p1

    return-void
.end method

.method public final k(II)V
    .locals 2

    iget-object v0, p0, Lg/ggu;->i:Lg/fce;

    iget v1, p0, Lg/ggu;->h:I

    add-int/2addr v1, p2

    iget-object p2, v0, Lg/fce;->x:[I

    aput v1, p2, p1

    return-void
.end method

.method public final l(II)V
    .locals 2

    iget-object v0, p0, Lg/ggu;->i:Lg/fce;

    iget-object v1, p0, Lg/ggu;->a:Lg/cpd;

    iget v1, v1, Lg/cpd;->a:I

    sub-int/2addr v1, p1

    iget-object p1, v0, Lg/fce;->x:[I

    aput v1, p1, p2

    return-void
.end method

.method public final m()Lg/cqz;
    .locals 4

    iget-object v0, p0, Lg/ggu;->i:Lg/fce;

    invoke-virtual {v0}, Lg/fce;->ac()Lg/gkr;

    move-result-object v0

    iget-object v1, p0, Lg/ggu;->i:Lg/fce;

    iget v1, v1, Lg/fce;->w:I

    invoke-virtual {v0, v1}, Lg/gkr;->k(I)V

    iget-object v1, v0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v1, Lg/gqc;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lg/gqc;->at(I)V

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v3

    invoke-virtual {v0, v3}, Lg/gkr;->k(I)V

    invoke-virtual {v1, v2}, Lg/gqc;->at(I)V

    invoke-virtual {v1}, Lg/gqc;->ai()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lg/cqz;->NARROW:Lg/cqz;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lg/cqz;->WIDE:Lg/cqz;

    return-object v0
.end method

.method public final n(I)V
    .locals 4

    iget-object v0, p0, Lg/ggu;->i:Lg/fce;

    iget-object v1, p0, Lg/ggu;->a:Lg/cpd;

    iget v2, v1, Lg/cpd;->a:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v1, Lg/cpd;->a:I

    iget-object v0, v0, Lg/fce;->x:[I

    aput v2, v0, p1

    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lg/ggu;->i:Lg/fce;

    iget-object v1, p0, Lg/ggu;->a:Lg/cpd;

    sget-object v2, Lg/cqz;->WIDE:Lg/cqz;

    invoke-virtual {v1, v2}, Lg/cpd;->d(Lg/cqz;)I

    move-result v1

    iget-object v0, v0, Lg/fce;->x:[I

    const/4 v2, 0x0

    aput v1, v0, v2

    return-void
.end method

.method public final p(ILg/cqz;)V
    .locals 4

    iget-object v0, p0, Lg/ggu;->a:Lg/cpd;

    iget v1, v0, Lg/cpd;->a:I

    sub-int/2addr v1, p1

    iget-object v2, v0, Lg/cpd;->b:[Lg/cqz;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v1, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v2, v1

    iget p1, v0, Lg/cpd;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lg/cpd;->a:I

    return-void
.end method

.method public final q(I)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lg/ggu;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lg/ggu;->a:Lg/cpd;

    new-instance v2, Lg/cpd;

    iget v3, v1, Lg/cpd;->a:I

    iget-object v1, v1, Lg/cpd;->b:[Lg/cqz;

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg/cqz;

    invoke-direct {v2, v3, v1}, Lg/cpd;-><init>(I[Lg/cqz;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final r(I)V
    .locals 2

    iget-object v0, p0, Lg/ggu;->i:Lg/fce;

    iget v1, v0, Lg/fce;->ab:I

    add-int/2addr v1, p1

    iput v1, v0, Lg/fce;->s:I

    invoke-virtual {p0, v1}, Lg/ggu;->q(I)V

    return-void
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lg/ggu;->i:Lg/fce;

    iget-object v1, p0, Lg/ggu;->a:Lg/cpd;

    sget-object v2, Lg/cqz;->NARROW:Lg/cqz;

    invoke-virtual {v1, v2}, Lg/cpd;->d(Lg/cqz;)I

    move-result v1

    iget-object v0, v0, Lg/fce;->x:[I

    const/4 v2, 0x0

    aput v1, v0, v2

    return-void
.end method
