.class public final Lcom/google/android/gms/internal/ads/zzeom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzevz;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbzz;

.field public final b:Lcom/google/android/gms/internal/ads/zzeqp;

.field public final c:Lcom/google/android/gms/internal/ads/zzffo;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeqp;Lcom/google/android/gms/internal/ads/zzffo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeom;->b:Lcom/google/android/gms/internal/ads/zzeqp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeom;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeom;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeom;->a:Lcom/google/android/gms/internal/ads/zzbzz;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final zzb()Lg/dcy;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeom;->b:Lcom/google/android/gms/internal/ads/zzeqp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzevz;->zzb()Lg/dcy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeol;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeol;-><init>(Lcom/google/android/gms/internal/ads/zzeom;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    return-object v0
.end method
