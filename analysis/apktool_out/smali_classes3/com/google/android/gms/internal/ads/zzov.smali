.class public final Lcom/google/android/gms/internal/ads/zzov;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzg;

.field public final b:Lg/sr;

.field public final c:Lg/tt;

.field public final d:Landroid/content/Context;

.field public e:Lcom/google/android/gms/internal/ads/zzop;

.field public f:Z

.field public final g:Landroid/os/Handler;

.field public final h:Lcom/google/android/gms/internal/ads/zzqf;

.field public final i:Lg/fwl;

.field public j:Lg/fqp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzqf;Lcom/google/android/gms/internal/ads/zzg;Lg/fqp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzov;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzov;->h:Lcom/google/android/gms/internal/ads/zzqf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzov;->a:Lcom/google/android/gms/internal/ads/zzg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzov;->j:Lg/fqp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzen;->zzz()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzov;->g:Landroid/os/Handler;

    sget p2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_0

    new-instance p2, Lg/fwl;

    invoke-direct {p2, p0}, Lg/fwl;-><init>(Lcom/google/android/gms/internal/ads/zzov;)V

    goto :goto_0

    :cond_0
    move-object p2, p4

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzov;->i:Lg/fwl;

    new-instance p2, Lg/sr;

    const/16 v0, 0x11

    invoke-direct {p2, v0, p0}, Lg/sr;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzov;->b:Lg/sr;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzop;->zza:Lcom/google/android/gms/internal/ads/zzop;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzen;->zzc:Ljava/lang/String;

    const-string v0, "Amazon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Xiaomi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p4

    goto :goto_2

    :cond_2
    :goto_1
    const-string p2, "external_surround_sound_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :goto_2
    if-eqz p2, :cond_3

    new-instance p4, Lg/tt;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p4, p0, p3, p1, p2}, Lg/tt;-><init>(Lcom/google/android/gms/internal/ads/zzov;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzov;->c:Lg/tt;

    return-void
.end method


# virtual methods
.method public final k(Lcom/google/android/gms/internal/ads/zzop;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzov;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->e:Lcom/google/android/gms/internal/ads/zzop;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzop;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzov;->e:Lcom/google/android/gms/internal/ads/zzop;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->h:Lcom/google/android/gms/internal/ads/zzqf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqf;->zza:Lcom/google/android/gms/internal/ads/zzqw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzJ(Lcom/google/android/gms/internal/ads/zzop;)V

    :cond_0
    return-void
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzop;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzov;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->e:Lcom/google/android/gms/internal/ads/zzop;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzov;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->c:Lg/tt;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/tt;->a:Landroid/content/ContentResolver;

    iget-object v2, v0, Lg/tt;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzov;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzov;->d:Landroid/content/Context;

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->i:Lg/fwl;

    if-eqz v0, :cond_2

    invoke-static {v3, v0, v2}, Lg/abj;->a(Landroid/content/Context;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzov;->b:Lg/sr;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzov;->a:Lcom/google/android/gms/internal/ads/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzov;->j:Lg/fqp;

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzop;->f(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zzg;Lg/fqp;)Lcom/google/android/gms/internal/ads/zzop;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->e:Lcom/google/android/gms/internal/ads/zzop;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzg;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzov;->a:Lcom/google/android/gms/internal/ads/zzg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->j:Lg/fqp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzov;->d:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzop;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzg;Lg/fqp;)Lcom/google/android/gms/internal/ads/zzop;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzov;->k(Lcom/google/android/gms/internal/ads/zzop;)V

    return-void
.end method

.method public final zzh(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->j:Lg/fqp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/fqp;->a:Landroid/media/AudioDeviceInfo;

    :goto_0
    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Lg/fqp;

    invoke-direct {v1, p1}, Lg/fqp;-><init>(Landroid/media/AudioDeviceInfo;)V

    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzov;->j:Lg/fqp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzov;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->a:Lcom/google/android/gms/internal/ads/zzg;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzop;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzg;Lg/fqp;)Lcom/google/android/gms/internal/ads/zzop;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzov;->k(Lcom/google/android/gms/internal/ads/zzop;)V

    return-void
.end method

.method public final zzi()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzov;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->e:Lcom/google/android/gms/internal/ads/zzop;

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzov;->d:Landroid/content/Context;

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->i:Lg/fwl;

    if-eqz v0, :cond_1

    invoke-static {v2, v0}, Lg/abj;->b(Landroid/content/Context;Landroid/media/AudioDeviceCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->b:Lg/sr;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzov;->c:Lg/tt;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lg/tt;->a:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzov;->f:Z

    return-void
.end method
