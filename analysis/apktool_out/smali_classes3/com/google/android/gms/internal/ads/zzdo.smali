.class public final synthetic Lcom/google/android/gms/internal/ads/zzdo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic zzb:I

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzdp;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/gms/internal/ads/zzdp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdo;->zza:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdo;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdo;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdo;->zza:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdo;->zzc:Lcom/google/android/gms/internal/ads/zzdp;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdo;->zzb:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ddi;

    iget-boolean v4, v3, Lg/ddi;->a:Z

    if-nez v4, :cond_0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget-object v4, v3, Lg/ddi;->c:Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzx;->zza(I)Lcom/google/android/gms/internal/ads/zzx;

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v3, Lg/ddi;->d:Z

    iget-object v2, v3, Lg/ddi;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdp;->zza(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method
