.class public final synthetic Lcom/google/android/gms/internal/ads/zzeut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeuu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeuu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeut;->zza:Lcom/google/android/gms/internal/ads/zzeuu;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeut;->zza:Lcom/google/android/gms/internal/ads/zzeuu;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuu;->a:Lg/akx;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeuu;->d:Lcom/google/android/gms/internal/ads/zzffo;

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeuu;->b:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzffo;->zzb()Z

    move-result v8

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfth;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzfth;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfth;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzfth;-><init>()V

    const/4 v5, 0x1

    if-eqz v8, :cond_0

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzdh:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v7, Lg/edt;->a:Lg/edt;

    iget-object v7, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeuv;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzeuv;-><init>(Z)V

    return-object v0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    if-nez v8, :cond_1

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzdd:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v7, Lg/edt;->a:Lg/edt;

    iget-object v7, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-eqz v8, :cond_3

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzdf:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v7, Lg/edt;->a:Lg/edt;

    iget-object v7, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzftl;->zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzftl;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzdo:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v7, Lg/edt;->a:Lg/edt;

    iget-object v7, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v9, Lg/ti;->a:Lg/ti;

    iget-object v9, v9, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v9

    check-cast v9, Lg/cmo;

    invoke-virtual {v9}, Lg/cmo;->ax()Z

    move-result v9

    invoke-virtual {v3, v6, v7, v9}, Lcom/google/android/gms/internal/ads/zzftl;->zzh(JZ)Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v3

    :cond_3
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzdl:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v7, Lg/edt;->a:Lg/edt;

    iget-object v9, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v7, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v1, Lg/akx;->clientJarVersion:I

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbcn;->zzdk:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v6, v9, :cond_4

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzftm;->zzi(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzftm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzftm;->zzj()V

    :cond_4
    if-nez v8, :cond_5

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzde:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    if-eqz v8, :cond_8

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzdg:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzftm;->zzi(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzftm;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfti;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfti;

    move-result-object v0

    iget v1, v1, Lg/akx;->clientJarVersion:I

    sget-object v9, Lcom/google/android/gms/internal/ads/zzbcn;->zzdk:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v1, v9, :cond_7

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzdp:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v1

    check-cast v1, Lg/cmo;

    invoke-virtual {v1}, Lg/cmo;->ax()Z

    move-result v1

    invoke-virtual {v6, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzftm;->zzh(JZ)Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfti;->zzd()Z

    move-result v5

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfti;->zze()Z

    move-result v0

    move v7, v0

    move v6, v5

    move-object v5, v4

    :goto_0
    move-object v4, v3

    goto :goto_1

    :cond_8
    move-object v5, v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzeuv;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzeuv;-><init>(Lcom/google/android/gms/internal/ads/zzfth;Lcom/google/android/gms/internal/ads/zzfth;ZZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :goto_2
    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v3, "PerAppIdSignal"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeuv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzffo;->zzb()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeuv;-><init>(Z)V

    return-object v0
.end method
