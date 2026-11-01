.class public final Lcom/google/android/gms/internal/ads/zzffo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lg/cpm;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzbmb;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzems;

.field public final zzd:Lg/aeh;

.field public final zze:Lg/eno;

.field public final zzf:Ljava/lang/String;

.field public final zzg:Ljava/util/ArrayList;

.field public final zzh:Ljava/util/ArrayList;

.field public final zzi:Lcom/google/android/gms/internal/ads/zzbfn;

.field public final zzj:Lg/gby;

.field public final zzk:I

.field public final zzl:Lg/dgw;

.field public final zzm:Lg/gfp;

.field public final zzn:Lg/fbj;

.field public final zzo:Lcom/google/android/gms/internal/ads/zzffb;

.field public final zzp:Z

.field public final zzq:Z

.field public final zzr:Z

.field public final zzs:Landroid/os/Bundle;

.field public final zzt:Lg/atu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzffm;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->o:Lg/eno;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zze:Lg/eno;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->s:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->i:Lg/atu;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzt:Lg/atu;

    new-instance v3, Lg/aeh;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->h:Lg/aeh;

    iget v4, v2, Lg/aeh;->zza:I

    iget-wide v5, v2, Lg/aeh;->zzb:J

    iget-object v7, v2, Lg/aeh;->zzc:Landroid/os/Bundle;

    iget v8, v2, Lg/aeh;->zzd:I

    iget-object v9, v2, Lg/aeh;->zze:Ljava/util/List;

    iget-boolean v10, v2, Lg/aeh;->zzf:Z

    iget v11, v2, Lg/aeh;->zzg:I

    iget-boolean v12, v2, Lg/aeh;->zzh:Z

    const/4 v13, 0x1

    if-nez v12, :cond_0

    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzffm;->g:Z

    if-eqz v12, :cond_1

    :cond_0
    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    const/4 v12, 0x0

    :goto_0
    iget-object v13, v2, Lg/aeh;->zzi:Ljava/lang/String;

    iget-object v14, v2, Lg/aeh;->zzj:Lg/ela;

    iget-object v15, v2, Lg/aeh;->zzk:Landroid/location/Location;

    move-object/from16 v16, v3

    iget-object v3, v2, Lg/aeh;->zzl:Ljava/lang/String;

    move-object/from16 v17, v3

    iget-object v3, v2, Lg/aeh;->zzm:Landroid/os/Bundle;

    move-object/from16 v18, v3

    iget-object v3, v2, Lg/aeh;->zzn:Landroid/os/Bundle;

    move-object/from16 v19, v3

    iget-object v3, v2, Lg/aeh;->zzo:Ljava/util/List;

    move-object/from16 v20, v3

    iget-object v3, v2, Lg/aeh;->zzp:Ljava/lang/String;

    move-object/from16 v21, v3

    iget-object v3, v2, Lg/aeh;->zzq:Ljava/lang/String;

    move-object/from16 v22, v3

    iget-boolean v3, v2, Lg/aeh;->zzr:Z

    move/from16 v23, v3

    iget-object v3, v2, Lg/aeh;->zzs:Lg/acl;

    move-object/from16 v24, v3

    iget v3, v2, Lg/aeh;->zzt:I

    move/from16 v25, v3

    iget-object v3, v2, Lg/aeh;->zzu:Ljava/lang/String;

    move-object/from16 v26, v3

    iget-object v3, v2, Lg/aeh;->zzv:Ljava/util/List;

    iget v2, v2, Lg/aeh;->zzw:I

    invoke-static {v2}, Lg/esy;->ac(I)I

    move-result v27

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->h:Lg/aeh;

    move-object/from16 v28, v3

    iget-object v3, v2, Lg/aeh;->zzx:Ljava/lang/String;

    move-object/from16 v29, v3

    iget v3, v2, Lg/aeh;->zzy:I

    move/from16 v30, v3

    iget-wide v2, v2, Lg/aeh;->zzz:J

    move-wide/from16 v32, v2

    move-object/from16 v3, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move/from16 v22, v23

    move-object/from16 v23, v24

    move/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v29

    move/from16 v29, v30

    move-wide/from16 v30, v32

    invoke-direct/range {v3 .. v31}, Lg/aeh;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lg/ela;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLg/acl;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzd:Lg/aeh;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->e:Lg/cpm;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->a:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbfn;->zzf:Lg/cpm;

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zza:Lg/cpm;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->j:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzg:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzffm;->t:Ljava/util/ArrayList;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzh:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzffm;->a:Lcom/google/android/gms/internal/ads/zzbfn;

    if-nez v3, :cond_5

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbfn;

    new-instance v2, Lg/fx;

    invoke-direct {v2}, Lg/fx;-><init>()V

    new-instance v4, Lg/gyv;

    invoke-direct {v4, v2}, Lg/gyv;-><init>(Lg/fx;)V

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzbfn;-><init>(Lg/gyv;)V

    :cond_5
    :goto_2
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->n:Lg/gby;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzj:Lg/gby;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->m:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzk:I

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->p:Lg/dgw;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzl:Lg/dgw;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->b:Lg/gfp;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzm:Lg/gfp;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->f:Lg/fbj;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzn:Lg/fbj;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->d:Lcom/google/android/gms/internal/ads/zzbmb;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzb:Lcom/google/android/gms/internal/ads/zzbmb;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->c:Lcom/google/android/gms/internal/ads/zzfez;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzffb;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzffb;-><init>(Lcom/google/android/gms/internal/ads/zzfez;)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzo:Lcom/google/android/gms/internal/ads/zzffb;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->l:Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzp:Z

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->q:Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzq:Z

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->u:Lcom/google/android/gms/internal/ads/zzems;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzc:Lcom/google/android/gms/internal/ads/zzems;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzffm;->k:Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzr:Z

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffm;->r:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzffo;->zzs:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbhp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzm:Lg/gfp;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzl:Lg/dgw;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/gfp;->zzb()Lcom/google/android/gms/internal/ads/zzbhp;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzl:Lg/dgw;

    invoke-virtual {v0}, Lg/dgw;->zza()Lcom/google/android/gms/internal/ads/zzbhp;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzdm:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
