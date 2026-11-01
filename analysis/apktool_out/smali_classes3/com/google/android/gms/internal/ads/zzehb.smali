.class public final synthetic Lcom/google/android/gms/internal/ads/zzehb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzehe;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfet;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfff;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdpr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzehe;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzdpr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehb;->zza:Lcom/google/android/gms/internal/ads/zzehe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehb;->zzb:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehb;->zzc:Lcom/google/android/gms/internal/ads/zzfff;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehb;->zzd:Lcom/google/android/gms/internal/ads/zzdpr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzehb;->zza:Lcom/google/android/gms/internal/ads/zzehe;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzehb;->zzb:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzehb;->zzc:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzehb;->zzd:Lcom/google/android/gms/internal/ads/zzdpr;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzehe;->h:Lcom/google/android/gms/internal/ads/zzdsh;

    sget-object v13, Lcom/google/android/gms/internal/ads/zzbcn;->zzck:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v4, Lg/edt;->a:Lg/edt;

    iget-object v14, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdrv;->zzs:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lg/ti;->a:Lg/ti;

    iget-object v7, v7, Lg/ti;->v:Lg/czz;

    invoke-static {v7, v4, v5}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzehe;->g:Lcom/google/android/gms/internal/ads/zzdpn;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzehe;->b:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzffo;->zze:Lg/eno;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzdpn;->zza(Lg/eno;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;)Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object v7

    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzfet;->zzW:Z

    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzac(Z)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzehe;->d:Landroid/content/Context;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdpr;->zza(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdrv;->zzt:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lg/ti;->a:Lg/ti;

    iget-object v5, v5, Lg/ti;->v:Lg/czz;

    invoke-static {v5, v3, v4}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzehe;->i:Lcom/google/android/gms/internal/ads/zzdgn;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcsg;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzcsg;-><init>(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Ljava/lang/String;)V

    move-object v2, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzehe;->d:Landroid/content/Context;

    move-object v8, v4

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzehe;->e:Lg/akx;

    move-object v9, v8

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzehe;->b:Lcom/google/android/gms/internal/ads/zzffo;

    move-object v10, v9

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzehe;->a:Z

    move-object v11, v10

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzehe;->j:Lcom/google/android/gms/internal/ads/zzbju;

    move-object/from16 v16, v11

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzehe;->f:Lcom/google/android/gms/internal/ads/zzeea;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfn;

    move-object/from16 v17, v2

    new-instance v2, Lg/guf;

    move-object/from16 v18, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v18

    invoke-direct/range {v2 .. v11}, Lg/guf;-><init>(Landroid/content/Context;Lg/akx;Lcom/google/android/gms/internal/ads/zzcao;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzffo;ZLcom/google/android/gms/internal/ads/zzbju;Lcom/google/android/gms/internal/ads/zzeea;)V

    invoke-direct {v0, v2, v7}, Lcom/google/android/gms/internal/ads/zzdfn;-><init>(Lcom/google/android/gms/internal/ads/zzdgv;Lcom/google/android/gms/internal/ads/zzcfk;)V

    invoke-virtual {v15, v12, v0}, Lcom/google/android/gms/internal/ads/zzdgn;->zze(Lcom/google/android/gms/internal/ads/zzcsg;Lcom/google/android/gms/internal/ads/zzdfn;)Lcom/google/android/gms/internal/ads/zzdfk;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdrv;->zzu:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->v:Lg/czz;

    invoke-static {v4, v2, v3}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfk;->zzc()Lcom/google/android/gms/internal/ads/zzcxe;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzegz;

    invoke-direct {v3, v7}, Lcom/google/android/gms/internal/ads/zzegz;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdcc;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzfet;->zzs:Lcom/google/android/gms/internal/ads/zzfey;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfey;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzfe:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfk;->zzl()Lcom/google/android/gms/internal/ads/zzeeu;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzeeu;->zze(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzcgv;->zza(Lcom/google/android/gms/internal/ads/zzfet;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfk;->zzi()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v3

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzehe;->a:Z

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzehe;->j:Lcom/google/android/gms/internal/ads/zzbju;

    goto :goto_0

    :cond_4
    move-object/from16 v5, v16

    :goto_0
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v3, v7, v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzdpm;->zzi(Lcom/google/android/gms/internal/ads/zzcfk;ZLcom/google/android/gms/internal/ads/zzbju;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfk;->zzi()Lcom/google/android/gms/internal/ads/zzdpm;

    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zzfet;->zzs:Lcom/google/android/gms/internal/ads/zzfey;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfey;->zzb:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v7, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzdpm;->zzj(Lcom/google/android/gms/internal/ads/zzcfk;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lg/dcy;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeha;

    invoke-direct {v3, v1, v7, v6, v0}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(Lcom/google/android/gms/internal/ads/zzehe;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzdfk;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzehe;->c:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    return-object v0
.end method
