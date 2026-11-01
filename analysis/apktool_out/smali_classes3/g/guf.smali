.class public final Lg/guf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgv;


# instance fields
.field public final a:Z

.field public final b:Lcom/google/android/gms/internal/ads/zzbju;

.field public final c:Lcom/google/android/gms/internal/ads/zzcao;

.field public final d:Lcom/google/android/gms/internal/ads/zzfet;

.field public final e:Lcom/google/android/gms/internal/ads/zzcfk;

.field public final f:Landroid/content/Context;

.field public final g:Lcom/google/android/gms/internal/ads/zzeea;

.field public final h:Lg/akx;

.field public final i:Lcom/google/android/gms/internal/ads/zzffo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/akx;Lcom/google/android/gms/internal/ads/zzcao;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzffo;ZLcom/google/android/gms/internal/ads/zzbju;Lcom/google/android/gms/internal/ads/zzeea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/guf;->f:Landroid/content/Context;

    iput-object p2, p0, Lg/guf;->h:Lg/akx;

    iput-object p3, p0, Lg/guf;->c:Lcom/google/android/gms/internal/ads/zzcao;

    iput-object p4, p0, Lg/guf;->d:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p5, p0, Lg/guf;->e:Lcom/google/android/gms/internal/ads/zzcfk;

    iput-object p6, p0, Lg/guf;->i:Lcom/google/android/gms/internal/ads/zzffo;

    iput-object p8, p0, Lg/guf;->b:Lcom/google/android/gms/internal/ads/zzbju;

    iput-boolean p7, p0, Lg/guf;->a:Z

    iput-object p9, p0, Lg/guf;->g:Lcom/google/android/gms/internal/ads/zzeea;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwz;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/guf;->c:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdfk;

    iget-object v6, v0, Lg/guf;->e:Lcom/google/android/gms/internal/ads/zzcfk;

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaq(Z)V

    new-instance v7, Lg/fbp;

    const/4 v3, 0x0

    iget-object v4, v0, Lg/guf;->b:Lcom/google/android/gms/internal/ads/zzbju;

    iget-boolean v5, v0, Lg/guf;->a:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbju;->zze(Z)Z

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    sget-object v9, Lg/ti;->a:Lg/ti;

    iget-object v9, v9, Lg/ti;->z:Lg/esy;

    iget-object v9, v0, Lg/guf;->f:Landroid/content/Context;

    invoke-static {v9}, Lg/esy;->ap(Landroid/content/Context;)Z

    move-result v9

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbju;->zzd()Z

    move-result v3

    move v10, v3

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbju;->zza()F

    move-result v3

    move v11, v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_2
    iget-object v3, v0, Lg/guf;->d:Lcom/google/android/gms/internal/ads/zzfet;

    iget-boolean v14, v3, Lcom/google/android/gms/internal/ads/zzfet;->zzO:Z

    const/4 v15, 0x0

    const/4 v12, -0x1

    move/from16 v13, p1

    invoke-direct/range {v7 .. v15}, Lg/fbp;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcwz;->zzf()V

    :cond_3
    const/4 v4, 0x1

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdfk;->zzh()Lcom/google/android/gms/internal/ads/zzdgk;

    move-result-object v1

    move-object v10, v7

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzfet;->zzQ:I

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzfet;->zzB:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfet;->zzs:Lcom/google/android/gms/internal/ads/zzfey;

    iget-object v11, v5, Lcom/google/android/gms/internal/ads/zzfey;->zzb:Ljava/lang/String;

    iget-object v12, v5, Lcom/google/android/gms/internal/ads/zzfey;->zza:Ljava/lang/String;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzfet;->zzai:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Lg/guf;->g:Lcom/google/android/gms/internal/ads/zzeea;

    :goto_3
    move-object v15, v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :goto_4
    const/4 v5, 0x0

    iget-object v3, v0, Lg/guf;->i:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v8, v0, Lg/guf;->h:Lg/akx;

    move-object/from16 v14, p3

    move-object v4, v1

    const/4 v1, 0x1

    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lg/evo;Lg/fim;Lg/gst;Lcom/google/android/gms/internal/ads/zzcfk;ILg/akx;Ljava/lang/String;Lg/fbp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcwz;Lcom/google/android/gms/internal/ads/zzbsz;)V

    move-object v3, v2

    move-object/from16 v2, p2

    invoke-static {v2, v3, v1}, Lg/bli;->q(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
