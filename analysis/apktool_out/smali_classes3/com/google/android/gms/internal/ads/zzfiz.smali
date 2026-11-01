.class public final Lcom/google/android/gms/internal/ads/zzfiz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/List;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzfjj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfjj;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfiz;->c:Lcom/google/android/gms/internal/ads/zzfjj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfiz;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfiz;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfjh;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgeg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfiy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfiy;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgeg;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v7

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfjh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfiz;->c:Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjj;->b:Lcom/google/android/gms/internal/ads/zzges;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgeg;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfiz;->a:Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfiz;->c:Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfiz;->b:Ljava/util/List;

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzfjh;-><init>(Lcom/google/android/gms/internal/ads/zzfjj;Ljava/lang/Object;Ljava/lang/String;Lg/dcy;Ljava/util/List;Lg/dcy;)V

    return-object v3
.end method
