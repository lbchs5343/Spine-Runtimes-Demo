.class public final synthetic Lcom/google/android/gms/internal/ads/zzecz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfiv;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzedc;

.field public final synthetic zzb:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzedc;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->zza:Lcom/google/android/gms/internal/ads/zzedc;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzecz;->zzb:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzecz;->zza:Lcom/google/android/gms/internal/ads/zzedc;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzecz;->zzb:Z

    move-object/from16 v3, p1

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzedc;->c:Landroid/content/Context;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzedc;->a:Lg/akx;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzedc;->b:Lcom/google/android/gms/internal/ads/zzbbl;

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    const-string v0, "OfflineUpload.db"

    invoke-virtual {v11, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-object v14

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v15, "serialized_proto_data"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "offline_signal_contents"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza;->zzx([B)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzm; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "Unable to deserialize proto from offline signals database:"

    invoke-static {v5}, Lg/agd;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf;->zzi()Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;

    move-result-object v0

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzecw;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;->zzA(I)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzecw;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;->zzE(I)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;

    const/4 v6, 0x3

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzecw;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;->zzx(I)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;

    sget-object v6, Lg/ti;->a:Lg/ti;

    iget-object v6, v6, Lg/ti;->v:Lg/czz;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;->zzF(J)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzecw;->zzb(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;->zzB(J)Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbs$zzaf;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-wide/16 v8, 0x0

    move-wide v15, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_3

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza;->zzk()Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbbs$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    if-ne v4, v6, :cond_2

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza;->zze()J

    move-result-wide v17

    cmp-long v4, v17, v15

    if-lez v4, :cond_2

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zza;->zze()J

    move-result-wide v15

    :cond_2
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    goto :goto_1

    :cond_3
    cmp-long v2, v15, v8

    if-eqz v2, :cond_4

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "value"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "statistic_name = \'last_successful_request_time\'"

    const-string v6, "offline_signal_statistics"

    invoke-virtual {v3, v6, v2, v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzeda;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzeda;-><init>(Lcom/google/android/gms/internal/ads/zzbbs$zzaf;)V

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzbbl;->zzb(Lcom/google/android/gms/internal/ads/zzbbk;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzar;->zzd()Lcom/google/android/gms/internal/ads/zzbbs$zzar$zza;

    move-result-object v0

    iget v2, v12, Lg/akx;->buddyApkVersion:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbs$zzar$zza;->zzg(I)Lcom/google/android/gms/internal/ads/zzbbs$zzar$zza;

    iget v2, v12, Lg/akx;->clientJarVersion:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbs$zzar$zza;->zzi(I)Lcom/google/android/gms/internal/ads/zzbbs$zzar$zza;

    iget-boolean v2, v12, Lg/akx;->isClientJar:Z

    if-eq v5, v2, :cond_5

    const/4 v4, 0x2

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzar$zza;->zzh(I)Lcom/google/android/gms/internal/ads/zzbbs$zzar$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbs$zzar;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzedb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzedb;-><init>(Lcom/google/android/gms/internal/ads/zzbbs$zzar;)V

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzbbl;->zzb(Lcom/google/android/gms/internal/ads/zzbbk;)V

    const/16 v0, 0x2714

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzc(I)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzecw;->zze(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v14
.end method
