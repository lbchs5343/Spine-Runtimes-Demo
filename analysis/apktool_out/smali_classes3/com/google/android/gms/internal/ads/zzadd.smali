.class public Lcom/google/android/gms/internal/ads/zzadd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacs;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzacs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzacs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzacs;->zza([BII)I

    move-result p1

    return p1
.end method

.method public final zzb([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzacs;->zzb([BII)I

    move-result p1

    return p1
.end method

.method public final zzc(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzc(I)I

    move-result p1

    return p1
.end method

.method public zzd()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public zze()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzf()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzg(I)V

    return-void
.end method

.method public final zzh([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    return-void
.end method

.method public final zzi([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    return-void
.end method

.method public final zzj()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    return-void
.end method

.method public final zzk(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    return-void
.end method

.method public final zzm([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzacs;->zzm([BIIZ)Z

    move-result p1

    return p1
.end method

.method public final zzn([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzadd;->a:Lcom/google/android/gms/internal/ads/zzacs;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzacs;->zzn([BIIZ)Z

    move-result p1

    return p1
.end method
