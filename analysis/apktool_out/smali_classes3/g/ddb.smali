.class public final Lg/ddb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:Lcom/google/android/gms/internal/ads/zzej;

.field public final c:Lcom/google/android/gms/internal/ads/zzdv;

.field public final d:Lcom/google/android/gms/internal/ads/zzaap;

.field public e:Lcom/google/android/gms/internal/ads/zzci;

.field public f:J

.field public final g:Lcom/google/android/gms/internal/ads/zzaan;

.field public final h:Lg/gyf;

.field public final i:Lcom/google/android/gms/internal/ads/zzej;

.field public j:Lcom/google/android/gms/internal/ads/zzci;


# direct methods
.method public constructor <init>(Lg/gyf;Lcom/google/android/gms/internal/ads/zzaap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ddb;->h:Lg/gyf;

    iput-object p2, p0, Lg/ddb;->d:Lcom/google/android/gms/internal/ads/zzaap;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaan;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaan;-><init>()V

    iput-object p1, p0, Lg/ddb;->g:Lcom/google/android/gms/internal/ads/zzaan;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzej;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzej;-><init>(I)V

    iput-object p1, p0, Lg/ddb;->i:Lcom/google/android/gms/internal/ads/zzej;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzej;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzej;-><init>(I)V

    iput-object p1, p0, Lg/ddb;->b:Lcom/google/android/gms/internal/ads/zzej;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdv;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdv;-><init>(I)V

    iput-object p1, p0, Lg/ddb;->c:Lcom/google/android/gms/internal/ads/zzdv;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzci;->zza:Lcom/google/android/gms/internal/ads/zzci;

    iput-object p1, p0, Lg/ddb;->j:Lcom/google/android/gms/internal/ads/zzci;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lg/ddb;->f:J

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 6

    iget-object v0, p0, Lg/ddb;->c:Lcom/google/android/gms/internal/ads/zzdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdv;->zzc()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lg/ddb;->f:J

    iget-object v0, p0, Lg/ddb;->b:Lcom/google/android/gms/internal/ads/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    move-result v1

    if-le v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzb()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzb()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzd(JLjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lg/ddb;->e:Lcom/google/android/gms/internal/ads/zzci;

    iget-object v1, p0, Lg/ddb;->i:Lcom/google/android/gms/internal/ads/zzej;

    if-nez v0, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    move-result v0

    if-le v0, v3, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzb()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzb()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzci;

    iput-object v0, p0, Lg/ddb;->e:Lcom/google/android/gms/internal/ads/zzci;

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zze()V

    return-void
.end method
