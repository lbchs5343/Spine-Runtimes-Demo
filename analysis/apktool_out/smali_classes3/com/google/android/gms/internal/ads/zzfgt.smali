.class public final Lcom/google/android/gms/internal/ads/zzfgt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lg/ci;

.field public static final b:Ljava/lang/Object;

.field public static zzb:Lg/ayv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgt;->b:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lg/ci;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfgt;->zzb(Landroid/content/Context;Z)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgt;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgt;->a:Lg/ci;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static zzb(Landroid/content/Context;Z)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgt;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgt;->zzb:Lg/ayv;

    if-nez v1, :cond_0

    new-instance v1, Lg/gtb;

    invoke-direct {v1, p0}, Lg/gtb;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfgt;->zzb:Lg/ayv;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgt;->a:Lg/ci;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lg/ci;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgt;->a:Lg/ci;

    invoke-virtual {p0}, Lg/ci;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgt;->a:Lg/ci;

    invoke-virtual {p0}, Lg/ci;->d()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgt;->zzb:Lg/ayv;

    const-string p1, "the appSetIdClient shouldn\'t be null"

    invoke-static {p0, p1}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lg/ayv;->a()Lg/chw;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzfgt;->a:Lg/ci;

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
