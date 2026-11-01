.class public final Lg/gdw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:F

.field public final c:Lcom/google/android/gms/internal/ads/zzfxg;

.field public final d:Lg/gaz;

.field public e:Lg/eec;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lg/eec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lg/gdw;->b:F

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzhr;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxk;->zza(Lcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzfxg;

    move-result-object p1

    iput-object p1, p0, Lg/gdw;->c:Lcom/google/android/gms/internal/ads/zzfxg;

    iput-object p3, p0, Lg/gdw;->e:Lg/eec;

    new-instance p1, Lg/gaz;

    invoke-direct {p1, p0, p2}, Lg/gaz;-><init>(Lg/gdw;Landroid/os/Handler;)V

    iput-object p1, p0, Lg/gdw;->d:Lg/gaz;

    const/4 p1, 0x0

    iput p1, p0, Lg/gdw;->a:I

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 2

    iget v0, p0, Lg/gdw;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lg/gdw;->c:Lcom/google/android/gms/internal/ads/zzfxg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfxg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lg/gdw;->d:Lg/gaz;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(I)V
    .locals 3

    iget-object v0, p0, Lg/gdw;->e:Lg/eec;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget-object v0, v0, Lg/eec;->a:Lg/ij;

    invoke-virtual {v0}, Lg/ij;->zzu()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lg/ij;->ao(IIZ)V

    :cond_1
    return-void
.end method

.method public final h(I)V
    .locals 3

    iget v0, p0, Lg/gdw;->a:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lg/gdw;->a:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Lg/gdw;->b:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iput p1, p0, Lg/gdw;->b:F

    iget-object p1, p0, Lg/gdw;->e:Lg/eec;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lg/eec;->a:Lg/ij;

    iget-object v0, p1, Lg/ij;->al:Lg/gdw;

    iget v1, p1, Lg/ij;->l:F

    iget v0, v0, Lg/gdw;->b:F

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v0}, Lg/ij;->an(IILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
