.class public final Lcom/google/android/gms/internal/ads/zzzp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/pn;

.field public b:Lcom/google/android/gms/internal/ads/zzdc;

.field public final c:Landroid/content/Context;

.field public d:Z

.field public final e:Lcom/google/android/gms/internal/ads/zzaap;

.field public f:Lg/dxt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzp;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzp;->e:Lcom/google/android/gms/internal/ads/zzaap;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzp;->b:Lcom/google/android/gms/internal/ads/zzdc;

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzdc;)Lcom/google/android/gms/internal/ads/zzzp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzp;->b:Lcom/google/android/gms/internal/ads/zzdc;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzaaa;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzp;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzp;->a:Lg/pn;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzp;->f:Lg/dxt;

    if-nez v0, :cond_0

    new-instance v0, Lg/dxt;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzp;->f:Lg/dxt;

    :cond_0
    new-instance v0, Lg/pn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzp;->f:Lg/dxt;

    invoke-direct {v0, v2}, Lg/pn;-><init>(Lg/dxt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzp;->a:Lg/pn;

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaaa;-><init>(Lcom/google/android/gms/internal/ads/zzzp;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzp;->d:Z

    return-object v0
.end method
