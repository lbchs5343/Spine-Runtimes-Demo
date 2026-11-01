.class public final Lg/bte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgv;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzeea;

.field public final b:Z

.field public final c:Lcom/google/android/gms/internal/ads/zzfet;

.field public final d:Lcom/google/android/gms/internal/ads/zzcfk;

.field public final e:Lcom/google/android/gms/internal/ads/zzffo;

.field public final f:Lg/akx;

.field public final g:Lcom/google/android/gms/internal/ads/zzcao;

.field public final h:Lcom/google/android/gms/internal/ads/zzbju;


# direct methods
.method public constructor <init>(Lg/akx;Lcom/google/android/gms/internal/ads/zzcao;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzffo;ZLcom/google/android/gms/internal/ads/zzbju;Lcom/google/android/gms/internal/ads/zzeea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bte;->f:Lg/akx;

    iput-object p2, p0, Lg/bte;->g:Lcom/google/android/gms/internal/ads/zzcao;

    iput-object p3, p0, Lg/bte;->c:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p4, p0, Lg/bte;->d:Lcom/google/android/gms/internal/ads/zzcfk;

    iput-object p5, p0, Lg/bte;->e:Lcom/google/android/gms/internal/ads/zzffo;

    iput-boolean p6, p0, Lg/bte;->b:Z

    iput-object p7, p0, Lg/bte;->h:Lcom/google/android/gms/internal/ads/zzbju;

    iput-object p8, p0, Lg/bte;->a:Lcom/google/android/gms/internal/ads/zzeea;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwz;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/bte;->g:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcoo;

    iget-object v6, v0, Lg/bte;->d:Lcom/google/android/gms/internal/ads/zzcfk;

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaq(Z)V

    new-instance v7, Lg/fbp;

    iget-object v3, v0, Lg/bte;->h:Lcom/google/android/gms/internal/ads/zzbju;

    iget-boolean v4, v0, Lg/bte;->b:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbju;->zze(Z)Z

    move-result v5

    move v8, v5

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbju;->zzd()Z

    move-result v5

    move v10, v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbju;->zza()F

    move-result v3

    move v11, v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_2
    iget-object v3, v0, Lg/bte;->c:Lcom/google/android/gms/internal/ads/zzfet;

    iget-boolean v14, v3, Lcom/google/android/gms/internal/ads/zzfet;->zzO:Z

    const/4 v15, 0x0

    const/4 v9, 0x1

    const/4 v12, -0x1

    move/from16 v13, p1

    invoke-direct/range {v7 .. v15}, Lg/fbp;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcwz;->zzf()V

    :cond_3
    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->u:Lg/bli;

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcoo;->zzg()Lcom/google/android/gms/internal/ads/zzdgk;

    move-result-object v1

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzfet;->zzQ:I

    const/4 v8, -0x1

    iget-object v9, v0, Lg/bte;->e:Lcom/google/android/gms/internal/ads/zzffo;

    if-eq v5, v8, :cond_4

    goto :goto_3

    :cond_4
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzffo;->zzj:Lg/gby;

    if-eqz v5, :cond_6

    iget v5, v5, Lg/gby;->zza:I

    if-ne v5, v2, :cond_5

    const/4 v5, 0x7

    goto :goto_3

    :cond_5
    const/4 v8, 0x2

    if-ne v5, v8, :cond_6

    const/4 v5, 0x6

    goto :goto_3

    :cond_6
    const-string v5, "Error setting app open orientation; no targeting orientation available."

    invoke-static {v5}, Lg/agd;->c(Ljava/lang/String;)V

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzfet;->zzQ:I

    :goto_3
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzfet;->zzB:Ljava/lang/String;

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzfet;->zzs:Lcom/google/android/gms/internal/ads/zzfey;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzfey;->zzb:Ljava/lang/String;

    iget-object v12, v10, Lcom/google/android/gms/internal/ads/zzfey;->zza:Ljava/lang/String;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzfet;->zzai:Z

    if-eqz v3, :cond_7

    iget-object v3, v0, Lg/bte;->a:Lcom/google/android/gms/internal/ads/zzeea;

    :goto_4
    move-object v15, v3

    move-object v10, v7

    move v7, v5

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    :goto_5
    const/4 v5, 0x0

    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v9, v8

    iget-object v8, v0, Lg/bte;->f:Lg/akx;

    move-object/from16 v14, p3

    move-object v2, v4

    move-object v4, v1

    const/4 v1, 0x1

    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lg/evo;Lg/fim;Lg/gst;Lcom/google/android/gms/internal/ads/zzcfk;ILg/akx;Ljava/lang/String;Lg/fbp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcwz;Lcom/google/android/gms/internal/ads/zzbsz;)V

    move-object v3, v2

    move-object/from16 v2, p2

    invoke-static {v2, v3, v1}, Lg/bli;->q(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
