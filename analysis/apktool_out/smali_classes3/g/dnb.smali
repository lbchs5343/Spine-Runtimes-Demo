.class public final Lg/dnb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;
.implements Lg/eco;
.implements Lcom/google/android/gms/internal/ads/zzfqs;
.implements Lg/bea;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/ctv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/cua;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lg/dnb;->a:Ljava/lang/Object;

    iput-object p0, p1, Lg/ctv;->f:Lg/dnb;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lg/dnb;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Lg/dxm;)V
    .locals 1

    check-cast p2, Lg/bsv;

    iget-object v0, p0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v0, Lg/ctv;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lg/ctv;->s(I)V

    invoke-virtual {p2, p3}, Lg/bsv;->k(Lg/dxm;)I

    move-result p1

    invoke-virtual {v0, p1}, Lg/ctv;->s(I)V

    iget-object p1, v0, Lg/ctv;->f:Lg/dnb;

    invoke-interface {p3, p2, p1}, Lg/dxm;->ad(Ljava/lang/Object;Lg/dnb;)V

    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->aa:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v0}, Lg/bgm;->al()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(ILjava/lang/Object;Lg/dxm;)V
    .locals 2

    check-cast p2, Lg/bsv;

    iget-object v0, p0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v0, Lg/ctv;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lg/ctv;->m(II)V

    iget-object v1, v0, Lg/ctv;->f:Lg/dnb;

    invoke-interface {p3, p2, v1}, Lg/dxm;->ad(Ljava/lang/Object;Lg/dnb;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lg/ctv;->m(II)V

    return-void
.end method

.method public then(Lg/ci;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v0, Lg/gtb;

    invoke-virtual {p1}, Lg/ci;->a()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, p1

    check-cast v1, Lg/chw;

    iget-boolean v1, v1, Lg/chw;->e:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lg/ci;->b()Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Lg/dmw;

    if-eqz v2, :cond_5

    check-cast v1, Lg/dmw;

    iget-object v1, v1, Lg/dmw;->mStatus:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    const v2, 0xa7f9

    if-eq v1, v2, :cond_4

    const v2, 0xa7fa

    if-eq v1, v2, :cond_4

    const v2, 0xa7fb

    if-eq v1, v2, :cond_4

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0xa7f8

    if-ne v1, v0, :cond_2

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to get app set ID due to an internal error. Please try again later."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v0, Lg/chw;

    invoke-direct {v0}, Lg/chw;-><init>()V

    invoke-virtual {v0, p1}, Lg/chw;->l(Ljava/lang/Exception;)V

    return-object v0

    :cond_2
    const/16 v0, 0xf

    if-eq v1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "The operation to get app set ID timed out. Please try again later."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v0, Lg/chw;

    invoke-direct {v0}, Lg/chw;-><init>()V

    invoke-virtual {v0, p1}, Lg/chw;->l(Ljava/lang/Exception;)V

    return-object v0

    :cond_4
    :goto_0
    iget-object p1, v0, Lg/gtb;->b:Ljava/lang/Object;

    check-cast p1, Lg/fpd;

    invoke-virtual {p1}, Lg/fpd;->a()Lg/chw;

    move-result-object p1

    :cond_5
    :goto_1
    return-object p1
.end method

.method public synthetic y(Lcom/google/android/gms/internal/ads/zzfxd;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    new-instance p1, Lg/czi;

    invoke-direct {p1, p0, p2}, Lg/czi;-><init>(Lg/dnb;Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public zza(IJ)V
    .locals 3

    iget-object v0, p0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v0, Lg/gvq;

    iget-object v0, v0, Lg/gvq;->a:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpp;->zzd(IJ)Lg/ci;

    return-void
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to get offline signal database: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    return-void
.end method

.method public zzb(IJLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v0, Lg/gvq;

    iget-object v0, v0, Lg/gvq;->a:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzfpp;->zze(IJLjava/lang/String;)Lg/ci;

    return-void
.end method

.method public bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    :try_start_0
    iget-object v0, p0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfiv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfiv;->zza(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error executing function on offline signal database: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    return-void
.end method
