.class public final synthetic Lcom/google/android/gms/internal/ads/zzecr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfiv;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/a;

.field public final synthetic zzb:Ljava/util/ArrayList;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbbs$zzab;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/a;Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbbs$zzab;Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecr;->zza:Lcom/google/android/gms/internal/ads/a;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzecr;->zzb:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzecr;->zzc:Lcom/google/android/gms/internal/ads/zzbbs$zzab;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzecr;->zzd:Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzd;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecr;->zza:Lcom/google/android/gms/internal/ads/a;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/a;->b:Lcom/google/android/gms/internal/ads/zzect;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzect;->d:Lcom/google/android/gms/internal/ads/zzecl;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzecu;->g:Lg/gil;

    check-cast v3, Lg/cmo;

    invoke-virtual {v3}, Lg/cmo;->ax()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzecr;->zzd:Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzecr;->zzc:Lcom/google/android/gms/internal/ads/zzbbs$zzab;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzecr;->zzb:Ljava/util/ArrayList;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/a;->a:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza;->zzn()Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzn(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzect;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbbs$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbbs$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    :goto_0
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzD(Lcom/google/android/gms/internal/ads/zzbbs$zzq;)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    sget-object v7, Lg/ti;->a:Lg/ti;

    iget-object v8, v7, Lg/ti;->k:Lg/lp;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzect;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v5, v10}, Lg/feo;->e(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzE(Lcom/google/android/gms/internal/ads/zzbbs$zzq;)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzecl;->zze()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzM(J)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzecl;->zzb()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzL(J)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzecl;->zza()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzG(I)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzH(Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzd;)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzJ(Lcom/google/android/gms/internal/ads/zzbbs$zzab;)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzect;->f:Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzK(Lcom/google/android/gms/internal/ads/zzbbs$zzq;)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbs$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbs$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    :goto_1
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzN(Lcom/google/android/gms/internal/ads/zzbbs$zzq;)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzecl;->zzd()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzP(J)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    iget-object v1, v7, Lg/ti;->v:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzO(J)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_on"

    invoke-static {v1, v3, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbs$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbs$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    :goto_2
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;->zzQ(Lcom/google/android/gms/internal/ads/zzbbs$zzq;)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza$zza;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgwy;->zzaV()[B

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzecw;->zzf(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzecl;->zzd()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzecw;->zzc(Landroid/database/sqlite/SQLiteDatabase;J[B)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
