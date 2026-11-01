.class public final synthetic Lcom/google/android/gms/internal/ads/zzbbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/aal;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbaw;


# direct methods
.method public synthetic constructor <init>(Lg/aal;Lcom/google/android/gms/internal/ads/zzbaw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zza:Lg/aal;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzb:Lcom/google/android/gms/internal/ads/zzbaw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zza:Lg/aal;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzb:Lcom/google/android/gms/internal/ads/zzbaw;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaw;->zzq()Lcom/google/android/gms/internal/ads/zzbaz;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaw;->zzp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lg/aal;->b:Lcom/google/android/gms/internal/ads/zzbax;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbaz;->zzg(Lcom/google/android/gms/internal/ads/zzbax;)Lcom/google/android/gms/internal/ads/zzbau;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lg/aal;->b:Lcom/google/android/gms/internal/ads/zzbax;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbaz;->zzf(Lcom/google/android/gms/internal/ads/zzbax;)Lcom/google/android/gms/internal/ads/zzbau;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbau;->zze()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v1, Lg/aal;->c:Lg/cok;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No entry contents."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    iget-object v0, v1, Lg/aal;->a:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->d(Lcom/google/android/gms/internal/ads/zzbbh;)V

    return-void

    :cond_1
    new-instance v2, Lg/gcw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbau;->zzc()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lg/gcw;-><init>(Lg/aal;Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    iget-object v8, v1, Lg/aal;->c:Lg/cok;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbau;->zzd()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbau;->zzg()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbau;->zza()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbau;->zzf()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbbj;->zzb(Ljava/io/InputStream;ZZJZ)Lcom/google/android/gms/internal/ads/zzbbj;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unable to read from cache."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v2, "Unable to obtain a cache service instance."

    invoke-static {v2, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lg/aal;->c:Lg/cok;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    iget-object v0, v1, Lg/aal;->a:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->d(Lcom/google/android/gms/internal/ads/zzbbh;)V

    return-void
.end method
