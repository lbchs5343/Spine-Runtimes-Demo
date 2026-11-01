.class public final Lcom/google/android/gms/internal/ads/zzqk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzqj;

.field public b:Lcom/google/android/gms/internal/ads/zzqm;

.field public final c:Landroid/content/Context;

.field public d:Lcom/google/android/gms/internal/ads/zzqc;

.field public final e:Lcom/google/android/gms/internal/ads/zzop;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->c:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzop;->zza:Lcom/google/android/gms/internal/ads/zzop;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->e:Lcom/google/android/gms/internal/ads/zzop;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzqj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->a:Lcom/google/android/gms/internal/ads/zzqj;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqk;->c:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzop;->zza:Lcom/google/android/gms/internal/ads/zzop;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqk;->e:Lcom/google/android/gms/internal/ads/zzop;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzqj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqk;->a:Lcom/google/android/gms/internal/ads/zzqj;

    return-void
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzqw;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->f:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqk;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->b:Lcom/google/android/gms/internal/ads/zzqm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqm;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzcm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzqm;-><init>([Lcom/google/android/gms/internal/ads/zzcm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->b:Lcom/google/android/gms/internal/ads/zzqm;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->d:Lcom/google/android/gms/internal/ads/zzqc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqk;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzqc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqk;->d:Lcom/google/android/gms/internal/ads/zzqc;

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzqw;-><init>(Lcom/google/android/gms/internal/ads/zzqk;)V

    return-object v0
.end method
