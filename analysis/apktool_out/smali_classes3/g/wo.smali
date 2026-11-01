.class public final Lg/wo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ciw;


# instance fields
.field public final a:Lg/cir;

.field public final b:Lg/czj;

.field public final c:Lg/gnz;


# direct methods
.method public constructor <init>(Lg/czj;Lg/gnz;Lg/cir;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/wo;->b:Lg/czj;

    iput-object p2, p0, Lg/wo;->c:Lg/gnz;

    iput-object p3, p0, Lg/wo;->a:Lg/cir;

    return-void
.end method


# virtual methods
.method public final d(Lg/cys;Lg/cys;)Z
    .locals 1

    iget-object v0, p0, Lg/wo;->b:Lg/czj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lg/cys;->zzc:Lg/fjx;

    iget-object p2, p2, Lg/cys;->zzc:Lg/fjx;

    invoke-virtual {p1, p2}, Lg/fjx;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Ljava/lang/Object;Lg/aoy;)V
    .locals 0

    iget-object p2, p0, Lg/wo;->c:Lg/gnz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lg/awf;->e(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lg/wo;->b:Lg/czj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lg/cys;

    iget-object v0, v0, Lg/cys;->zzc:Lg/fjx;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/fjx;->c:Z

    invoke-static {p1}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final g(Ljava/lang/Object;[BIILg/fks;)V
    .locals 0

    move-object p2, p1

    check-cast p2, Lg/cys;

    iget-object p3, p2, Lg/cys;->zzc:Lg/fjx;

    sget-object p4, Lg/fjx;->a:Lg/fjx;

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg/fjx;->g()Lg/fjx;

    move-result-object p3

    iput-object p3, p2, Lg/cys;->zzc:Lg/fjx;

    :goto_0
    invoke-static {p1}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg/wo;->c:Lg/gnz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lg/awf;->e(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final i(Lg/cys;Lg/cys;)V
    .locals 1

    iget-object v0, p0, Lg/wo;->b:Lg/czj;

    invoke-static {v0, p1, p2}, Lg/ave;->q(Lg/czj;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Lg/cys;)I
    .locals 1

    iget-object v0, p0, Lg/wo;->b:Lg/czj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lg/cys;->zzc:Lg/fjx;

    invoke-virtual {p1}, Lg/fjx;->hashCode()I

    move-result p1

    return p1
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 6

    iget-object v0, p0, Lg/wo;->b:Lg/czj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lg/cys;

    iget-object p1, p1, Lg/cys;->zzc:Lg/fjx;

    iget v0, p1, Lg/fjx;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lg/fjx;->d:I

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lg/fjx;->e:[I

    aget v2, v2, v0

    iget-object v3, p1, Lg/fjx;->f:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lg/cyb;

    const/16 v4, 0x8

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-virtual {v3}, Lg/cyb;->c()I

    move-result v3

    add-int/2addr v4, v4

    const/16 v5, 0x10

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    ushr-int/lit8 v2, v2, 0x3

    invoke-static {v2, v5, v4}, Lg/dub;->d(III)I

    move-result v2

    const/16 v4, 0x18

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-static {v3}, Lg/p;->h(I)I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p1, Lg/fjx;->b:I

    move v0, v1

    :cond_1
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/wo;->a:Lg/cir;

    check-cast v0, Lg/cys;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lg/cys;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/crf;

    invoke-virtual {v0}, Lg/crf;->q()Lg/cys;

    move-result-object v0

    return-object v0
.end method
