.class public final Lg/gtm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dxm;


# instance fields
.field public final a:Lg/bsv;

.field public final b:Lg/cuf;


# direct methods
.method public constructor <init>(Lg/cuf;Lg/bsv;)V
    .locals 1

    sget-object v0, Lg/dgp;->a:Lg/gpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gtm;->b:Lg/cuf;

    iput-object p2, p0, Lg/gtm;->a:Lg/bsv;

    return-void
.end method


# virtual methods
.method public final aa(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lg/gtm;->b:Lg/cuf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lg/fsu;

    iget-object v0, v0, Lg/fsu;->zzc:Lg/wl;

    iget-boolean v1, v0, Lg/wl;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/wl;->c:Z

    :cond_0
    sget-object v0, Lg/dgp;->a:Lg/gpu;

    invoke-static {p1}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ad(Ljava/lang/Object;Lg/dnb;)V
    .locals 0

    invoke-static {p1}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ai(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final al(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lg/gog;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final an(Lg/bsv;)I
    .locals 6

    check-cast p1, Lg/fsu;

    iget-object p1, p1, Lg/fsu;->zzc:Lg/wl;

    iget v0, p1, Lg/wl;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lg/wl;->d:I

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lg/wl;->e:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    iget-object v3, p1, Lg/wl;->f:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lg/aki;

    const/16 v4, 0x8

    invoke-static {v4}, Lg/ctv;->i(I)I

    move-result v4

    add-int/2addr v4, v4

    const/16 v5, 0x10

    invoke-static {v5}, Lg/ctv;->i(I)I

    move-result v5

    invoke-static {v2}, Lg/ctv;->i(I)I

    move-result v2

    add-int/2addr v2, v5

    const/16 v5, 0x18

    invoke-static {v5}, Lg/ctv;->i(I)I

    move-result v5

    invoke-virtual {v3}, Lg/aki;->g()I

    move-result v3

    invoke-static {v3, v3, v5}, Lg/dub;->h(III)I

    move-result v3

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p1, Lg/wl;->b:I

    return v1

    :cond_1
    return v0
.end method

.method public final s(Lg/fsu;)I
    .locals 0

    iget-object p1, p1, Lg/fsu;->zzc:Lg/wl;

    invoke-virtual {p1}, Lg/wl;->hashCode()I

    move-result p1

    return p1
.end method

.method public final w(Ljava/lang/Object;[BIILg/dsc;)V
    .locals 0

    move-object p2, p1

    check-cast p2, Lg/fsu;

    iget-object p3, p2, Lg/fsu;->zzc:Lg/wl;

    sget-object p4, Lg/wl;->a:Lg/wl;

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg/wl;->g()Lg/wl;

    move-result-object p3

    iput-object p3, p2, Lg/fsu;->zzc:Lg/wl;

    :goto_0
    invoke-static {p1}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final z(Lg/fsu;Lg/fsu;)Z
    .locals 0

    iget-object p1, p1, Lg/fsu;->zzc:Lg/wl;

    iget-object p2, p2, Lg/fsu;->zzc:Lg/wl;

    invoke-virtual {p1, p2}, Lg/wl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zze()Lg/fsu;
    .locals 2

    iget-object v0, p0, Lg/gtm;->a:Lg/bsv;

    instance-of v1, v0, Lg/fsu;

    if-eqz v1, :cond_0

    check-cast v0, Lg/fsu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lg/fsu;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fsu;

    return-object v0

    :cond_0
    check-cast v0, Lg/fsu;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lg/fsu;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dtx;

    invoke-virtual {v0}, Lg/dtx;->e()Lg/fsu;

    move-result-object v0

    return-object v0
.end method
