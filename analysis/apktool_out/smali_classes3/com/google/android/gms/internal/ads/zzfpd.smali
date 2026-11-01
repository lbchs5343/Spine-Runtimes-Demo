.class public abstract Lcom/google/android/gms/internal/ads/zzfpd;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public d:Lcom/google/android/gms/internal/ads/zzfpe;

.field public final e:Lcom/google/android/gms/internal/ads/zzfov;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfov;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpd;->e:Lcom/google/android/gms/internal/ads/zzfov;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpd;->d:Lcom/google/android/gms/internal/ads/zzfpe;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfpe;->zza(Lcom/google/android/gms/internal/ads/zzfpd;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfpd;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfpe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpd;->d:Lcom/google/android/gms/internal/ads/zzfpe;

    return-void
.end method
