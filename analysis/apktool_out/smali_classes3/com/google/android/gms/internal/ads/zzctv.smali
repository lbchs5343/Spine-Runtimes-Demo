.class public final Lcom/google/android/gms/internal/ads/zzctv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbz;
.implements Lcom/google/android/gms/internal/ads/zzcya;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzffo;

.field public final b:Ljava/lang/String;

.field public final c:Lg/cvb;

.field public final d:Lcom/google/android/gms/internal/ads/zzctx;


# direct methods
.method public constructor <init>(Lg/cvb;Lcom/google/android/gms/internal/ads/zzctx;Lcom/google/android/gms/internal/ads/zzffo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctv;->c:Lg/cvb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctv;->d:Lcom/google/android/gms/internal/ads/zzctx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctv;->a:Lcom/google/android/gms/internal/ads/zzffo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctv;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctv;->c:Lg/cvb;

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctv;->d:Lcom/google/android/gms/internal/ads/zzctx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzctv;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzctx;->zze(Ljava/lang/String;J)V

    return-void
.end method

.method public final zzs()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctv;->c:Lg/cvb;

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctv;->d:Lcom/google/android/gms/internal/ads/zzctx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzctv;->a:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzctv;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzctx;->zzd(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
