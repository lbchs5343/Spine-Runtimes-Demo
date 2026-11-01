.class public final synthetic Lcom/google/android/gms/internal/ads/zzejr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzejy;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfet;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfff;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdpr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzejy;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzdpr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zza:Lcom/google/android/gms/internal/ads/zzejy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzb:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Lcom/google/android/gms/internal/ads/zzfff;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzd:Lcom/google/android/gms/internal/ads/zzdpr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzejr;->zza:Lcom/google/android/gms/internal/ads/zzejy;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzejr;->zzb:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzejr;->zzd:Lcom/google/android/gms/internal/ads/zzdpr;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzejy;->h:Lcom/google/android/gms/internal/ads/zzdsh;

    sget-object v15, Lcom/google/android/gms/internal/ads/zzbcn;->zzck:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v4, Lg/edt;->a:Lg/edt;

    iget-object v4, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdrv;->zzs:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lg/ti;->a:Lg/ti;

    iget-object v8, v8, Lg/ti;->v:Lg/czz;

    invoke-static {v8, v5, v6}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzejy;->g:Lcom/google/android/gms/internal/ads/zzdpn;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzejy;->b:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzffo;->zze:Lg/eno;

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzdpn;->zza(Lg/eno;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;)Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object v9

    iget-boolean v5, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzW:Z

    invoke-interface {v9, v5}, Lcom/google/android/gms/internal/ads/zzcfk;->zzac(Z)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzejy;->d:Landroid/content/Context;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdpr;->zza(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdrv;->zzt:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lg/ti;->a:Lg/ti;

    iget-object v6, v6, Lg/ti;->v:Lg/czz;

    invoke-static {v6, v3, v5}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzejy;->i:Lcom/google/android/gms/internal/ads/zzdow;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcsg;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v7, v6}, Lcom/google/android/gms/internal/ads/zzcsg;-><init>(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Ljava/lang/String;)V

    move-object v2, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzejy;->d:Landroid/content/Context;

    move-object v10, v4

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzejy;->g:Lcom/google/android/gms/internal/ads/zzdpn;

    move-object v11, v5

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzejy;->b:Lcom/google/android/gms/internal/ads/zzffo;

    move-object v12, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzejy;->e:Lg/akx;

    move-object v13, v10

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzejy;->j:Lcom/google/android/gms/internal/ads/zzbju;

    move-object/from16 v16, v11

    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzejy;->a:Z

    move-object/from16 v17, v12

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzejy;->f:Lcom/google/android/gms/internal/ads/zzeea;

    move-object/from16 v18, v13

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzejy;->h:Lcom/google/android/gms/internal/ads/zzdsh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdot;

    move-object/from16 v19, v2

    new-instance v2, Lg/ehr;

    move-object/from16 v20, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v20

    invoke-direct/range {v2 .. v13}, Lg/ehr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpn;Lcom/google/android/gms/internal/ads/zzffo;Lg/akx;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzcao;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzbju;ZLcom/google/android/gms/internal/ads/zzeea;Lcom/google/android/gms/internal/ads/zzdsh;)V

    invoke-direct {v0, v2, v9}, Lcom/google/android/gms/internal/ads/zzdot;-><init>(Lcom/google/android/gms/internal/ads/zzdgv;Lcom/google/android/gms/internal/ads/zzcfk;)V

    invoke-virtual {v1, v14, v0}, Lcom/google/android/gms/internal/ads/zzdow;->zze(Lcom/google/android/gms/internal/ads/zzcsg;Lcom/google/android/gms/internal/ads/zzdot;)Lcom/google/android/gms/internal/ads/zzdos;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    move-object/from16 v10, v19

    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrv;->zzu:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->v:Lg/czz;

    invoke-static {v3, v1, v2}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdos;->zzg()Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/zzbkj;->zzb(Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzbki;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrr;->zzc()Lcom/google/android/gms/internal/ads/zzcxe;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzejt;

    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzejt;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdcc;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdos;->zzl()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v1

    move-object/from16 v2, v18

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzejy;->a:Z

    if-eqz v3, :cond_3

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzejy;->j:Lcom/google/android/gms/internal/ads/zzbju;

    goto :goto_0

    :cond_3
    move-object/from16 v6, v17

    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v9, v4, v6, v3}, Lcom/google/android/gms/internal/ads/zzdpm;->zzi(Lcom/google/android/gms/internal/ads/zzcfk;ZLcom/google/android/gms/internal/ads/zzbju;Landroid/os/Bundle;)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzs:Lcom/google/android/gms/internal/ads/zzfey;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfey;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzfe:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdos;->zzm()Lcom/google/android/gms/internal/ads/zzeeu;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzeeu;->zze(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzcgv;->zza(Lcom/google/android/gms/internal/ads/zzfet;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdos;->zzl()Lcom/google/android/gms/internal/ads/zzdpm;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzs:Lcom/google/android/gms/internal/ads/zzfey;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfey;->zzb:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzdpm;->zzj(Lcom/google/android/gms/internal/ads/zzcfk;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lg/dcy;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeju;

    invoke-direct {v3, v2, v9, v7, v0}, Lcom/google/android/gms/internal/ads/zzeju;-><init>(Lcom/google/android/gms/internal/ads/zzejy;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzdos;)V

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzejy;->c:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    return-object v0
.end method
