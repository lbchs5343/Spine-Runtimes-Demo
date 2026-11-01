.class public final Lcom/google/android/gms/internal/ads/zzdlk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/bvv;

.field public final b:Lg/cvb;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lg/bvv;Lg/cvb;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlk;->a:Lg/bvv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlk;->b:Lg/cvb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdlk;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final d([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlk;->b:Lg/cvb;

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    if-eqz p1, :cond_1

    sub-long/2addr v5, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    const-string v2, " h:"

    const-string v3, " bytes: "

    const-string v7, "Decoded image w: "

    invoke-static {p2, v0, v7, v2, v3}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " time: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " on ui thread: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg/agd;->e(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final zzb(Ljava/lang/String;DZ)Lg/dcy;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlk;->a:Lg/bvv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    sget-object v1, Lg/bvv;->a:Lcom/google/android/gms/internal/ads/zzaps;

    new-instance v2, Lg/bzz;

    invoke-direct {v2, p1, v0}, Lg/bzz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcao;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaps;->zza(Lcom/google/android/gms/internal/ads/zzapp;)Lcom/google/android/gms/internal/ads/zzapp;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdlj;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdlj;-><init>(Lcom/google/android/gms/internal/ads/zzdlk;DZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlk;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method
