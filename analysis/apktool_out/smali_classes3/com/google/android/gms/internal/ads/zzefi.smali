.class public final synthetic Lcom/google/android/gms/internal/ads/zzefi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzefm;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfet;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfff;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdpr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzefm;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzdpr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefi;->zza:Lcom/google/android/gms/internal/ads/zzefm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefi;->zzb:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefi;->zzc:Lcom/google/android/gms/internal/ads/zzfff;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzefi;->zzd:Lcom/google/android/gms/internal/ads/zzdpr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzefi;->zza:Lcom/google/android/gms/internal/ads/zzefm;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzefi;->zzb:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzefi;->zzc:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzefi;->zzd:Lcom/google/android/gms/internal/ads/zzdpr;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzefm;->h:Lcom/google/android/gms/internal/ads/zzdsh;

    sget-object v12, Lcom/google/android/gms/internal/ads/zzbcn;->zzck:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v4, Lg/edt;->a:Lg/edt;

    iget-object v13, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdrv;->zzs:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lg/ti;->a:Lg/ti;

    iget-object v7, v7, Lg/ti;->v:Lg/czz;

    invoke-static {v7, v4, v6}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzefm;->i:Lcom/google/android/gms/internal/ads/zzdpn;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzefm;->b:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzffo;->zze:Lg/eno;

    invoke-virtual {v4, v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzdpn;->zza(Lg/eno;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;)Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object v6

    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzfet;->zzW:Z

    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzac(Z)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzefm;->g:Landroid/content/Context;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpr;->zza(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdrv;->zzt:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lg/ti;->a:Lg/ti;

    iget-object v7, v7, Lg/ti;->v:Lg/czz;

    invoke-static {v7, v3, v4}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzefm;->d:Lcom/google/android/gms/internal/ads/zzcor;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzcsg;

    const/4 v3, 0x0

    invoke-direct {v15, v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzcsg;-><init>(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Ljava/lang/String;)V

    move-object v2, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzefm;->e:Lg/akx;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzefm;->b:Lcom/google/android/gms/internal/ads/zzffo;

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzefm;->a:Z

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzefm;->j:Lcom/google/android/gms/internal/ads/zzbju;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzefm;->f:Lcom/google/android/gms/internal/ads/zzeea;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfn;

    move-object/from16 v16, v2

    new-instance v2, Lg/bte;

    invoke-direct/range {v2 .. v10}, Lg/bte;-><init>(Lg/akx;Lcom/google/android/gms/internal/ads/zzcao;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzffo;ZLcom/google/android/gms/internal/ads/zzbju;Lcom/google/android/gms/internal/ads/zzeea;)V

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/internal/ads/zzdfn;-><init>(Lcom/google/android/gms/internal/ads/zzdgv;Lcom/google/android/gms/internal/ads/zzcfk;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcop;

    iget v3, v5, Lcom/google/android/gms/internal/ads/zzfet;->zzaa:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(I)V

    invoke-virtual {v14, v15, v0, v2}, Lcom/google/android/gms/internal/ads/zzcor;->zza(Lcom/google/android/gms/internal/ads/zzcsg;Lcom/google/android/gms/internal/ads/zzdfn;Lcom/google/android/gms/internal/ads/zzcop;)Lcom/google/android/gms/internal/ads/zzcoo;

    move-result-object v0

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdrv;->zzu:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lg/ti;->a:Lg/ti;

    iget-object v7, v7, Lg/ti;->v:Lg/czz;

    invoke-static {v7, v2, v3}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoo;->zzh()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v2

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzefm;->a:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzefm;->j:Lcom/google/android/gms/internal/ads/zzbju;

    goto :goto_0

    :cond_3
    move-object/from16 v3, v16

    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v3, v8}, Lcom/google/android/gms/internal/ads/zzdpm;->zzi(Lcom/google/android/gms/internal/ads/zzcfk;ZLcom/google/android/gms/internal/ads/zzbju;Landroid/os/Bundle;)V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrr;->zzc()Lcom/google/android/gms/internal/ads/zzcxe;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzefk;

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/ads/zzefk;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdcc;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzfet;->zzs:Lcom/google/android/gms/internal/ads/zzfey;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfey;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzfe:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoo;->zzi()Lcom/google/android/gms/internal/ads/zzeeu;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzeeu;->zze(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzcgv;->zza(Lcom/google/android/gms/internal/ads/zzfet;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoo;->zzh()Lcom/google/android/gms/internal/ads/zzdpm;

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzfet;->zzs:Lcom/google/android/gms/internal/ads/zzfey;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfey;->zzb:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v6, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzdpm;->zzj(Lcom/google/android/gms/internal/ads/zzcfk;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lg/dcy;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzefl;

    invoke-direct {v3, v1, v6, v5, v0}, Lcom/google/android/gms/internal/ads/zzefl;-><init>(Lcom/google/android/gms/internal/ads/zzefm;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzcoo;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzefm;->c:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    return-object v0
.end method
