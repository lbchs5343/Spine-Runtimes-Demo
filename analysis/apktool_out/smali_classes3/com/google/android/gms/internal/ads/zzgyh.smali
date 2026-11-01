.class public final Lcom/google/android/gms/internal/ads/zzgyh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/google/android/gms/internal/ads/zzgyh;

.field public static final b:Lcom/google/android/gms/internal/ads/zzgyh;

.field public static final synthetic zzb:I


# instance fields
.field public final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgyh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->b:Lcom/google/android/gms/internal/ads/zzgyh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh;->c:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgyh;
    .locals 1

    sget-object v0, Lg/gxd;->a:Lg/gxd;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->b:Lcom/google/android/gms/internal/ads/zzgyh;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzgyh;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyh;->a:Lcom/google/android/gms/internal/ads/zzgyh;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/ads/zzgyh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyh;->a:Lcom/google/android/gms/internal/ads/zzgyh;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    sget-object v1, Lg/gxd;->a:Lg/gxd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyp;->a()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgyh;->a:Lcom/google/android/gms/internal/ads/zzgyh;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzhai;I)Lcom/google/android/gms/internal/ads/zzgyv;
    .locals 1

    new-instance v0, Lg/gdg;

    invoke-direct {v0, p2, p1}, Lg/gdg;-><init>(ILcom/google/android/gms/internal/ads/zzhai;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyh;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyv;

    return-object p1
.end method
