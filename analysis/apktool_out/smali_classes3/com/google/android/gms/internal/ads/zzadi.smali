.class public final Lcom/google/android/gms/internal/ads/zzadi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadq;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzdu;

.field public final b:Lcom/google/android/gms/internal/ads/zzdu;

.field public final c:J


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    if-lez v1, :cond_1

    aget-wide v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    add-int/2addr v1, v3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdu;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadi;->a:Lcom/google/android/gms/internal/ads/zzdu;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdu;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdu;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzadi;->b:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzdu;->zzc(J)V

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdu;->zzc(J)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdu;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadi;->a:Lcom/google/android/gms/internal/ads/zzdu;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdu;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadi;->b:Lcom/google/android/gms/internal/ads/zzdu;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadi;->a:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdu;->zzd([J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadi;->b:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdu;->zzd([J)V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzadi;->c:J

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadi;->c:J

    return-wide v0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzado;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadi;->b:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdu;->zza()I

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzado;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzadr;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object p1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzb(Lcom/google/android/gms/internal/ads/zzdu;JZZ)I

    move-result v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdu;->zzb(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzadi;->a:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzdu;->zzb(I)J

    move-result-wide v7

    invoke-direct {v3, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzadr;->zzb:J

    cmp-long v7, v4, p1

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdu;->zza()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdu;->zzb(I)J

    move-result-wide v0

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzdu;->zzb(I)J

    move-result-wide v4

    invoke-direct {p1, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object p2

    :cond_2
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object p1
.end method

.method public final zzh()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadi;->b:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdu;->zza()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
