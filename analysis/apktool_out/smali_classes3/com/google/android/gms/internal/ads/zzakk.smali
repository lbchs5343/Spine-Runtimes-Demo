.class public final synthetic Lcom/google/android/gms/internal/ads/zzakk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdg;


# instance fields
.field public final synthetic zza:Lg/dbu;

.field public final synthetic zzb:J

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lg/dbu;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakk;->zza:Lg/dbu;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzakk;->zzb:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzakk;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakk;->zza:Lg/dbu;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzakk;->zzb:J

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzakk;->zzc:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaka;

    iget-object v3, v0, Lg/dbu;->g:Lcom/google/android/gms/internal/ads/zzed;

    iget-object v4, v0, Lg/dbu;->a:Lcom/google/android/gms/internal/ads/zzad;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzaka;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzaka;->zzc:J

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzct;->zza()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v9, "c"

    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v5, "d"

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    array-length v7, v4

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    iget-object v4, v0, Lg/dbu;->d:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v4, v3, v7}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzaka;->zzb:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, 0x7fffffffffffffffL

    cmp-long p1, v3, v8

    if-nez p1, :cond_2

    iget-object p1, v0, Lg/dbu;->a:Lcom/google/android/gms/internal/ads/zzad;

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzad;->zzt:J

    cmp-long p1, v3, v10

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    :goto_2
    move-wide v4, v1

    goto :goto_3

    :cond_2
    iget-object p1, v0, Lg/dbu;->a:Lcom/google/android/gms/internal/ads/zzad;

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzad;->zzt:J

    cmp-long p1, v8, v10

    if-nez p1, :cond_3

    add-long/2addr v1, v3

    goto :goto_2

    :cond_3
    add-long v1, v3, v8

    goto :goto_2

    :goto_3
    iget-object v3, v0, Lg/dbu;->d:Lcom/google/android/gms/internal/ads/zzadx;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    return-void
.end method
