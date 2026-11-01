.class public final Lcom/google/android/gms/internal/ads/zzccj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Landroid/media/AudioManager;

.field public d:F

.field public final e:Lg/ehb;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/ehb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzccj;->d:F

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccj;->c:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccj;->e:Lg/ehb;

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccj;->a:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccj;->e:Lg/ehb;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzccj;->c:Landroid/media/AudioManager;

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccj;->b:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzccj;->d:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccj;->f:Z

    if-nez v0, :cond_5

    if-eqz v3, :cond_1

    const/4 v0, 0x3

    const/4 v5, 0x2

    invoke-virtual {v3, p0, v0, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzccj;->f:Z

    :cond_1
    invoke-interface {v1}, Lg/ehb;->zzn()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccj;->f:Z

    if-eqz v0, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v3, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzccj;->f:Z

    :cond_4
    invoke-interface {v1}, Lg/ehb;->zzn()V

    :cond_5
    return-void
.end method

.method public final onAudioFocusChange(I)V
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzccj;->f:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccj;->e:Lg/ehb;

    invoke-interface {p1}, Lg/ehb;->zzn()V

    return-void
.end method

.method public final zza()F
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccj;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzccj;->d:F

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzccj;->f:Z

    if-eqz v2, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccj;->a:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzccj;->g()V

    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccj;->a:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzccj;->g()V

    return-void
.end method

.method public final zzd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzccj;->b:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzccj;->g()V

    return-void
.end method

.method public final zze(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzccj;->d:F

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzccj;->g()V

    return-void
.end method
