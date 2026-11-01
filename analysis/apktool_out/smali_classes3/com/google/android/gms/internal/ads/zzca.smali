.class public Lcom/google/android/gms/internal/ads/zzca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzfzo;

.field public final b:Ljava/util/HashSet;

.field public final c:Lcom/google/android/gms/internal/ads/zzfzo;

.field public final d:Lcom/google/android/gms/internal/ads/zzfzo;

.field public e:I

.field public final f:Lcom/google/android/gms/internal/ads/zzfzo;

.field public g:I

.field public h:I

.field public final i:Ljava/util/HashMap;

.field public j:Z

.field public final k:Lcom/google/android/gms/internal/ads/zzbz;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzca;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzca;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzca;->j:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->c:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->d:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->f:Lcom/google/android/gms/internal/ads/zzfzo;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbz;->zza:Lcom/google/android/gms/internal/ads/zzbz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->k:Lcom/google/android/gms/internal/ads/zzbz;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->a:Lcom/google/android/gms/internal/ads/zzfzo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzca;->g:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->b:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzxp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzcb;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzca;->e:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzcb;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzca;->h:I

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzcb;->zzk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzca;->j:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcb;->zzl:Lcom/google/android/gms/internal/ads/zzfzo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->c:Lcom/google/android/gms/internal/ads/zzfzo;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcb;->zzn:Lcom/google/android/gms/internal/ads/zzfzo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->d:Lcom/google/android/gms/internal/ads/zzfzo;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcb;->zzr:Lcom/google/android/gms/internal/ads/zzfzo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->f:Lcom/google/android/gms/internal/ads/zzfzo;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcb;->zzs:Lcom/google/android/gms/internal/ads/zzbz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->k:Lcom/google/android/gms/internal/ads/zzbz;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcb;->zzt:Lcom/google/android/gms/internal/ads/zzfzo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->a:Lcom/google/android/gms/internal/ads/zzfzo;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzcb;->zzu:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzca;->g:I

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcb;->zzB:Lcom/google/android/gms/internal/ads/zzfzt;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzca;->b:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcb;->zzA:Lcom/google/android/gms/internal/ads/zzfzr;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->i:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzca;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x440

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzca;->g:I

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzca;->a:Lcom/google/android/gms/internal/ads/zzfzo;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final zzf(IIZ)Lcom/google/android/gms/internal/ads/zzca;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzca;->e:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzca;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzca;->j:Z

    return-object p0
.end method
