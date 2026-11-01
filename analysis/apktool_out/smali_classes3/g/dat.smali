.class public final Lg/dat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfxg;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzfxi;


# instance fields
.field public b:Ljava/lang/Object;

.field public final c:Lcom/google/android/gms/internal/ads/zzfxn;

.field public volatile d:Lcom/google/android/gms/internal/ads/zzfxg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxi;-><init>()V

    sput-object v0, Lg/dat;->a:Lcom/google/android/gms/internal/ads/zzfxi;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfxg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxn;-><init>()V

    iput-object v0, p0, Lg/dat;->c:Lcom/google/android/gms/internal/ads/zzfxn;

    iput-object p1, p0, Lg/dat;->d:Lcom/google/android/gms/internal/ads/zzfxg;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lg/dat;->d:Lcom/google/android/gms/internal/ads/zzfxg;

    sget-object v1, Lg/dat;->a:Lcom/google/android/gms/internal/ads/zzfxi;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/dat;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<supplier that returned "

    const-string v2, ">"

    invoke-static {v1, v0, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Suppliers.memoize("

    const-string v2, ")"

    invoke-static {v1, v0, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/dat;->d:Lcom/google/android/gms/internal/ads/zzfxg;

    sget-object v1, Lg/dat;->a:Lcom/google/android/gms/internal/ads/zzfxi;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lg/dat;->c:Lcom/google/android/gms/internal/ads/zzfxn;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lg/dat;->d:Lcom/google/android/gms/internal/ads/zzfxg;

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lg/dat;->d:Lcom/google/android/gms/internal/ads/zzfxg;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfxg;->zza()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lg/dat;->b:Ljava/lang/Object;

    iput-object v1, p0, Lg/dat;->d:Lcom/google/android/gms/internal/ads/zzfxg;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    iget-object v0, p0, Lg/dat;->b:Ljava/lang/Object;

    return-object v0
.end method
