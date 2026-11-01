.class public final Lcom/google/android/gms/internal/ads/zzgg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public b:I

.field public c:Landroid/net/Uri;

.field public d:Ljava/util/Map;

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->d:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgi;->zza:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->c:Landroid/net/Uri;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgi;->zzd:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->d:Ljava/util/Map;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzgi;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->e:J

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzgi;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->a:J

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgi;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgg;->b:I

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzgg;
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgg;->b:I

    return-object p0
.end method

.method public final zzb(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgg;->d:Ljava/util/Map;

    return-object p0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzgg;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgg;->e:J

    return-object p0
.end method

.method public final zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzgg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgg;->c:Landroid/net/Uri;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgi;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->c:Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgg;->c:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgg;->d:Ljava/util/Map;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgg;->e:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzgg;->a:J

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzgg;->b:I

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(Landroid/net/Uri;Ljava/util/Map;JJI)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The uri must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
