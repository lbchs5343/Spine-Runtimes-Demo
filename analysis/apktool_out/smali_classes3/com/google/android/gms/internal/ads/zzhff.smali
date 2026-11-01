.class public Lcom/google/android/gms/internal/ads/zzhff;
.super Lcom/google/android/gms/internal/ads/zzhfi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzarc;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhfi;-><init>()V

    const-string p1, "moov"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhff;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhff;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhfj;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzaqz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhfj;->zzb()J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhfi;->g:Lcom/google/android/gms/internal/ads/zzhfj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhfj;->zzb()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhfi;->d:J

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhfj;->zzb()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhfj;->zze(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhfj;->zzb()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhfi;->e:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhfi;->f:Lcom/google/android/gms/internal/ads/zzaqz;

    return-void
.end method
