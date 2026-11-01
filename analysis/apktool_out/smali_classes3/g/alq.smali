.class public final Lg/alq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lg/fbb;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzqw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzqw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/alq;->c:Lcom/google/android/gms/internal/ads/zzqw;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lg/alq;->a:Landroid/os/Handler;

    new-instance p1, Lg/fbb;

    invoke-direct {p1, p0}, Lg/fbb;-><init>(Lg/alq;)V

    iput-object p1, p0, Lg/alq;->b:Lg/fbb;

    return-void
.end method


# virtual methods
.method public d(Landroid/media/AudioTrack;)V
    .locals 2

    iget-object v0, p0, Lg/alq;->a:Landroid/os/Handler;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, Lg/alq;->b:Lg/fbb;

    invoke-static {p1, v1, v0}, Lg/avm;->p(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqs;Lg/fbb;)V

    return-void
.end method

.method public e(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lg/alq;->b:Lg/fbb;

    invoke-static {p1, v0}, Lg/avm;->a(Landroid/media/AudioTrack;Lg/fbb;)V

    iget-object p1, p0, Lg/alq;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
