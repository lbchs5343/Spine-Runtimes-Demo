.class public final Lcom/google/android/gms/internal/ads/zzcaj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzges;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzges;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzges;

.field public static final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzges;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzges;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzkU:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zzb(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Default"

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zzb(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzkV:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zzb(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzkW:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zzb(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zzb(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zzb(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v12, Lg/dvm;

    const/4 v0, 0x1

    invoke-direct {v12, v3, v0}, Lg/dvm;-><init>(Ljava/lang/String;I)V

    const-wide/16 v8, 0xa

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zzb(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v12}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v13, Lg/dvm;

    const/4 v0, 0x1

    invoke-direct {v13, v3, v0}, Lg/dvm;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x2

    const v8, 0x7fffffff

    const-wide/16 v9, 0xa

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object v5, v6

    :goto_0
    new-instance v0, Lg/gjx;

    invoke-direct {v0, v5}, Lg/gjx;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v13, Lg/dvm;

    const-string v0, "Loader"

    const/4 v1, 0x1

    invoke-direct {v13, v0, v1}, Lg/dvm;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x5

    const/4 v8, 0x5

    const-wide/16 v9, 0xa

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v1, Lg/gjx;

    invoke-direct {v1, v6}, Lg/gjx;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zzb:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v13, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v13}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v14, Lg/dvm;

    const-string v1, "Activeview"

    const/4 v2, 0x1

    invoke-direct {v14, v1, v2}, Lg/dvm;-><init>(Ljava/lang/String;I)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v12, v11

    const-wide/16 v10, 0xa

    invoke-direct/range {v7 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v0, Lg/gjx;

    invoke-direct {v0, v7}, Lg/gjx;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zzc:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v0, Lg/arw;

    new-instance v1, Lg/dvm;

    const-string v2, "Schedule"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/dvm;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lg/bxc;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/bxc;-><init>(I)V

    new-instance v1, Lg/gjx;

    invoke-direct {v1, v0}, Lg/gjx;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgey;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lg/gjx;

    invoke-direct {v1, v0}, Lg/gjx;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    return-void
.end method
