.class public final Lg/fwl;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzov;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzov;)V
    .locals 0

    iput-object p1, p0, Lg/fwl;->a:Lcom/google/android/gms/internal/ads/zzov;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 2

    iget-object p1, p0, Lg/fwl;->a:Lcom/google/android/gms/internal/ads/zzov;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzov;->d:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzov;->a:Lcom/google/android/gms/internal/ads/zzg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzov;->j:Lg/fqp;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzop;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzg;Lg/fqp;)Lcom/google/android/gms/internal/ads/zzop;

    move-result-object p1

    iget-object v0, p0, Lg/fwl;->a:Lcom/google/android/gms/internal/ads/zzov;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzov;->k(Lcom/google/android/gms/internal/ads/zzop;)V

    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 4

    iget-object v0, p0, Lg/fwl;->a:Lcom/google/android/gms/internal/ads/zzov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzov;->j:Lg/fqp;

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-static {v3, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lg/fwl;->a:Lcom/google/android/gms/internal/ads/zzov;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzov;->j:Lg/fqp;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lg/fwl;->a:Lcom/google/android/gms/internal/ads/zzov;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzov;->d:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzov;->a:Lcom/google/android/gms/internal/ads/zzg;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzov;->j:Lg/fqp;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzop;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzg;Lg/fqp;)Lcom/google/android/gms/internal/ads/zzop;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzov;->k(Lcom/google/android/gms/internal/ads/zzop;)V

    return-void
.end method
