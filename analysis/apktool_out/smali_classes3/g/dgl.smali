.class public final Lg/dgl;
.super Lg/dbh;
.source "SourceFile"


# instance fields
.field public a:Lg/fcw;

.field public b:Lcom/google/android/gms/internal/ads/zzadc;


# virtual methods
.method public final g(Lcom/google/android/gms/internal/ads/zzed;)J
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x4

    shr-int/2addr v0, v2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    const/4 v0, 0x7

    :cond_0
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzx()J

    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzacy;->zza(Lcom/google/android/gms/internal/ads/zzed;I)I

    move-result v0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    int-to-long v0, v0

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final h(Z)V
    .locals 0

    invoke-super {p0, p1}, Lg/dbh;->h(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lg/dgl;->b:Lcom/google/android/gms/internal/ads/zzadc;

    iput-object p1, p0, Lg/dgl;->a:Lg/fcw;

    :cond_0
    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/zzed;JLg/ffr;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    iget-object v1, p0, Lg/dgl;->b:Lcom/google/android/gms/internal/ads/zzadc;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzadc;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzadc;-><init>([BI)V

    iput-object p2, p0, Lg/dgl;->b:Lcom/google/android/gms/internal/ads/zzadc;

    const/16 p3, 0x9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result p1

    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzadc;->zzc([BLcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p1

    iput-object p1, p4, Lg/ffr;->f:Ljava/lang/Object;

    return v2

    :cond_0
    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit8 v4, v0, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacz;->zzb(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzadb;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzadc;->zzf(Lcom/google/android/gms/internal/ads/zzadb;)Lcom/google/android/gms/internal/ads/zzadc;

    move-result-object p2

    iput-object p2, p0, Lg/dgl;->b:Lcom/google/android/gms/internal/ads/zzadc;

    new-instance p3, Lg/fcw;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p2, p3, Lg/fcw;->a:Ljava/lang/Object;

    iput-object p1, p3, Lg/fcw;->b:Ljava/lang/Object;

    const-wide/16 p1, -0x1

    iput-wide p1, p3, Lg/fcw;->d:J

    iput-wide p1, p3, Lg/fcw;->e:J

    iput-object p3, p0, Lg/dgl;->a:Lg/fcw;

    return v2

    :cond_1
    const/4 p1, -0x1

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lg/dgl;->a:Lg/fcw;

    if-eqz p1, :cond_2

    iput-wide p2, p1, Lg/fcw;->d:J

    iput-object p1, p4, Lg/ffr;->c:Ljava/lang/Object;

    :cond_2
    iget-object p1, p4, Lg/ffr;->f:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v3

    :cond_3
    return v2
.end method
