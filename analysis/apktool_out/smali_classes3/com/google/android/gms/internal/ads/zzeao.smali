.class public final Lcom/google/android/gms/internal/ads/zzeao;
.super Lcom/google/android/gms/internal/ads/zzbvl;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzeap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeao;->a:Lcom/google/android/gms/internal/ads/zzeap;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lg/gvi;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeao;->a:Lcom/google/android/gms/internal/ads/zzeap;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeap;->f:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {p1}, Lg/gvi;->zza()Lg/gya;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzf(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeao;->a:Lcom/google/android/gms/internal/ads/zzeap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeap;->f:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
