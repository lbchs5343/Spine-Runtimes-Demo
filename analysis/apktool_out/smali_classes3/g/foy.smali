.class public final Lg/foy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzady;

.field public b:I

.field public final c:Lcom/google/android/gms/internal/ads/zzaje;

.field public final d:Lcom/google/android/gms/internal/ads/zzajh;

.field public final e:Lcom/google/android/gms/internal/ads/zzadx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaje;Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzadx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/foy;->c:Lcom/google/android/gms/internal/ads/zzaje;

    iput-object p2, p0, Lg/foy;->d:Lcom/google/android/gms/internal/ads/zzajh;

    iput-object p3, p0, Lg/foy;->e:Lcom/google/android/gms/internal/ads/zzadx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzady;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzady;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lg/foy;->a:Lcom/google/android/gms/internal/ads/zzady;

    return-void
.end method
