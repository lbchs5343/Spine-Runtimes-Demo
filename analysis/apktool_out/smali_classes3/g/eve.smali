.class public final Lg/eve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/android/gms/internal/ads/zzfxg;


# instance fields
.field public transient a:Ljava/lang/Object;

.field public final transient b:Lcom/google/android/gms/internal/ads/zzfxn;

.field public volatile transient c:Z

.field final zza:Lcom/google/android/gms/internal/ads/zzfxg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfxg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxn;-><init>()V

    iput-object v0, p0, Lg/eve;->b:Lcom/google/android/gms/internal/ads/zzfxn;

    iput-object p1, p0, Lg/eve;->zza:Lcom/google/android/gms/internal/ads/zzfxg;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lg/eve;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/eve;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<supplier that returned "

    const-string v2, ">"

    invoke-static {v1, v0, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/eve;->zza:Lcom/google/android/gms/internal/ads/zzfxg;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Suppliers.memoize("

    const-string v2, ")"

    invoke-static {v1, v0, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lg/eve;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/eve;->b:Lcom/google/android/gms/internal/ads/zzfxn;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg/eve;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lg/eve;->zza:Lcom/google/android/gms/internal/ads/zzfxg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfxg;->zza()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lg/eve;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lg/eve;->c:Z

    monitor-exit v0

    return-object v1

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
    iget-object v0, p0, Lg/eve;->a:Ljava/lang/Object;

    return-object v0
.end method
