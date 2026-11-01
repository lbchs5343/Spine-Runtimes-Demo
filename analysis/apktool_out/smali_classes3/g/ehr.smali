.class public final Lg/ehr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgv;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbju;

.field public final b:Lcom/google/android/gms/internal/ads/zzcfk;

.field public final c:Lcom/google/android/gms/internal/ads/zzeea;

.field public final d:Lcom/google/android/gms/internal/ads/zzffo;

.field public final e:Lcom/google/android/gms/internal/ads/zzdsh;

.field public final f:Lg/akx;

.field public final g:Lcom/google/android/gms/internal/ads/zzfet;

.field public final h:Landroid/content/Context;

.field public final i:Z

.field public final j:Lcom/google/android/gms/internal/ads/zzdpn;

.field public final k:Lcom/google/android/gms/internal/ads/zzcao;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpn;Lcom/google/android/gms/internal/ads/zzffo;Lg/akx;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzcao;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzbju;ZLcom/google/android/gms/internal/ads/zzeea;Lcom/google/android/gms/internal/ads/zzdsh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ehr;->h:Landroid/content/Context;

    iput-object p2, p0, Lg/ehr;->j:Lcom/google/android/gms/internal/ads/zzdpn;

    iput-object p3, p0, Lg/ehr;->d:Lcom/google/android/gms/internal/ads/zzffo;

    iput-object p4, p0, Lg/ehr;->f:Lg/akx;

    iput-object p5, p0, Lg/ehr;->g:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p6, p0, Lg/ehr;->k:Lcom/google/android/gms/internal/ads/zzcao;

    iput-object p7, p0, Lg/ehr;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    iput-object p8, p0, Lg/ehr;->a:Lcom/google/android/gms/internal/ads/zzbju;

    iput-boolean p9, p0, Lg/ehr;->i:Z

    iput-object p10, p0, Lg/ehr;->c:Lcom/google/android/gms/internal/ads/zzeea;

    iput-object p11, p0, Lg/ehr;->e:Lcom/google/android/gms/internal/ads/zzdsh;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwz;)V
    .locals 26

    move-object/from16 v1, p0

    iget-object v0, v1, Lg/ehr;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object v2, v1, Lg/ehr;->k:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdos;

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaG()Z

    move-result v3
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcfw; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, v1, Lg/ehr;->h:Landroid/content/Context;

    iget-object v5, v1, Lg/ehr;->d:Lcom/google/android/gms/internal/ads/zzffo;

    const/4 v6, 0x1

    iget-object v7, v1, Lg/ehr;->g:Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v8, v1, Lg/ehr;->a:Lcom/google/android/gms/internal/ads/zzbju;

    iget-boolean v9, v1, Lg/ehr;->i:Z

    const/4 v10, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzaU:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v11, Lg/edt;->a:Lg/edt;

    iget-object v11, v11, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lg/ehr;->j:Lcom/google/android/gms/internal/ads/zzdpn;

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzffo;->zze:Lg/eno;

    invoke-virtual {v0, v3, v10, v10}, Lcom/google/android/gms/internal/ads/zzdpn;->zza(Lg/eno;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;)Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdos;->zzg()Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzbkj;->zzb(Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzbki;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdpr;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdpr;-><init>()V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzdpr;->zza(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdos;->zzl()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v11

    if-eqz v9, :cond_2

    move-object v12, v8

    goto :goto_0

    :cond_2
    move-object v12, v10

    :goto_0
    iget-object v13, v1, Lg/ehr;->e:Lcom/google/android/gms/internal/ads/zzdsh;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v11, v0, v6, v12, v13}, Lcom/google/android/gms/internal/ads/zzdpm;->zzi(Lcom/google/android/gms/internal/ads/zzcfk;ZLcom/google/android/gms/internal/ads/zzbju;Landroid/os/Bundle;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/internal/ads/zzejv;

    invoke-direct {v12, v3, v0}, Lcom/google/android/gms/internal/ads/zzejv;-><init>(Lcom/google/android/gms/internal/ads/zzdpr;Lcom/google/android/gms/internal/ads/zzcfk;)V

    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/ads/zzchc;->zzB(Lcom/google/android/gms/internal/ads/zzcha;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v3

    new-instance v11, Lcom/google/android/gms/internal/ads/zzejw;

    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/ads/zzejw;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;)V

    invoke-interface {v3, v11}, Lcom/google/android/gms/internal/ads/zzchc;->zzI(Lcom/google/android/gms/internal/ads/zzchb;)V

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzs:Lcom/google/android/gms/internal/ads/zzfey;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzfey;->zzb:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfey;->zza:Ljava/lang/String;

    invoke-interface {v0, v11, v3, v10}, Lcom/google/android/gms/internal/ads/zzcfk;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzcfw; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaq(Z)V

    new-instance v20, Lg/fbp;

    const/4 v3, 0x0

    if-eqz v9, :cond_3

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzbju;->zze(Z)Z

    move-result v11

    move v12, v11

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    sget-object v11, Lg/ti;->a:Lg/ti;

    iget-object v11, v11, Lg/ti;->z:Lg/esy;

    invoke-static {v4}, Lg/esy;->ap(Landroid/content/Context;)Z

    move-result v13

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbju;->zzd()Z

    move-result v3

    move v14, v3

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbju;->zza()F

    move-result v3

    move v15, v3

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_4
    iget-boolean v3, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzO:Z

    iget-boolean v4, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzP:Z

    const/16 v16, -0x1

    move/from16 v17, p1

    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v11, v20

    invoke-direct/range {v11 .. v19}, Lg/fbp;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcwz;->zzf()V

    :cond_6
    new-instance v12, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdos;->zzh()Lcom/google/android/gms/internal/ads/zzdgk;

    move-result-object v14

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzQ:I

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzB:Ljava/lang/String;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzs:Lcom/google/android/gms/internal/ads/zzfey;

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzfey;->zzb:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfey;->zza:Ljava/lang/String;

    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzai:Z

    if-eqz v7, :cond_7

    iget-object v10, v1, Lg/ehr;->c:Lcom/google/android/gms/internal/ads/zzeea;

    :cond_7
    move-object/from16 v25, v10

    const/4 v15, 0x0

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v7, v1, Lg/ehr;->f:Lg/akx;

    move-object/from16 v24, p3

    move-object/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v18, v7

    move-object/from16 v21, v8

    invoke-direct/range {v12 .. v25}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lg/evo;Lg/fim;Lg/gst;Lcom/google/android/gms/internal/ads/zzcfk;ILg/akx;Ljava/lang/String;Lg/fbp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcwz;Lcom/google/android/gms/internal/ads/zzbsz;)V

    move-object/from16 v0, p2

    invoke-static {v0, v12, v6}, Lg/bli;->q(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
