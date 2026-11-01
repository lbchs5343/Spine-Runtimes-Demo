.class public final Lg/gmy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/media/AudioTrack;

.field public final b:Lcom/google/android/gms/internal/ads/zzov;

.field public c:Lcom/google/android/gms/internal/ads/zzqo;


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzov;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gmy;->a:Landroid/media/AudioTrack;

    iput-object p2, p0, Lg/gmy;->b:Lcom/google/android/gms/internal/ads/zzov;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzqo;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Lg/gmy;)V

    iput-object p2, p0, Lg/gmy;->c:Lcom/google/android/gms/internal/ads/zzqo;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lg/gmy;->c:Lcom/google/android/gms/internal/ads/zzqo;

    invoke-static {p1, v0, p2}, Lg/fid;->p(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqo;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic d(Lg/gmy;Landroid/media/AudioRouting;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/gmy;->f(Landroid/media/AudioRouting;)V

    return-void
.end method

.method private f(Landroid/media/AudioRouting;)V
    .locals 1

    iget-object v0, p0, Lg/gmy;->c:Lcom/google/android/gms/internal/ads/zzqo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lg/fid;->h(Landroid/media/AudioRouting;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/gmy;->b:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static {p1}, Lg/fid;->h(Landroid/media/AudioRouting;)Landroid/media/AudioDeviceInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzov;->zzh(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    iget-object v0, p0, Lg/gmy;->c:Lcom/google/android/gms/internal/ads/zzqo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lg/gmy;->a:Landroid/media/AudioTrack;

    invoke-static {v1, v0}, Lg/fid;->i(Landroid/media/AudioTrack;Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/gmy;->c:Lcom/google/android/gms/internal/ads/zzqo;

    return-void
.end method
