.class public final Lcom/google/android/gms/internal/ads/zzdgw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcya;
.implements Lg/fim;
.implements Lcom/google/android/gms/internal/ads/zzcxg;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzeew;

.field public final b:Lcom/google/android/gms/internal/ads/zzfet;

.field public final c:Lg/akx;

.field public final d:Lcom/google/android/gms/internal/ads/zzbbs$zza$zza;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/google/android/gms/internal/ads/zzcfk;

.field public final g:Lcom/google/android/gms/internal/ads/zzeeu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzfet;Lg/akx;Lcom/google/android/gms/internal/ads/zzbbs$zza$zza;Lcom/google/android/gms/internal/ads/zzeeu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgw;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgw;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgw;->b:Lcom/google/android/gms/internal/ads/zzfet;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdgw;->c:Lg/akx;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdgw;->d:Lcom/google/android/gms/internal/ads/zzbbs$zza$zza;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdgw;->g:Lcom/google/android/gms/internal/ads/zzeeu;

    return-void
.end method


# virtual methods
.method public final h()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfe:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgw;->g:Lcom/google/android/gms/internal/ads/zzeeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeu;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzdH()V
    .locals 0

    return-void
.end method

.method public final zzdk()V
    .locals 0

    return-void
.end method

.method public final zzdq()V
    .locals 0

    return-void
.end method

.method public final zzdr()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfj:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgw;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgw;->a:Lcom/google/android/gms/internal/ads/zzeew;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdgw;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgw;->a:Lcom/google/android/gms/internal/ads/zzeew;

    if-eqz v1, :cond_1

    new-instance v1, Lg/tl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/bcp;-><init>(I)V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgw;->g:Lcom/google/android/gms/internal/ads/zzeeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeu;->zzb()V

    :cond_2
    return-void
.end method

.method public final zzdt()V
    .locals 0

    return-void
.end method

.method public final zzdu(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgw;->a:Lcom/google/android/gms/internal/ads/zzeew;

    return-void
.end method

.method public final zzr()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdgw;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgw;->g:Lcom/google/android/gms/internal/ads/zzeeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeu;->zzb()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgw;->a:Lcom/google/android/gms/internal/ads/zzeew;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgw;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzfj:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lg/tl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/bcp;-><init>(I)V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final zzs()V
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzfm:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbs$zza$zza;->zzh:Lcom/google/android/gms/internal/ads/zzbbs$zza$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdgw;->d:Lcom/google/android/gms/internal/ads/zzbbs$zza$zza;

    if-eq v3, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbs$zza$zza;->zzd:Lcom/google/android/gms/internal/ads/zzbbs$zza$zza;

    if-eq v3, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbs$zza$zza;->zzk:Lcom/google/android/gms/internal/ads/zzbbs$zza$zza;

    if-ne v3, v1, :cond_6

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdgw;->b:Lcom/google/android/gms/internal/ads/zzfet;

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzT:Z

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdgw;->f:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v3, :cond_6

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v5, v4, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    iget-object v6, v4, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdgw;->e:Landroid/content/Context;

    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/zzeer;->zzl(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgw;->h()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdgw;->g:Lcom/google/android/gms/internal/ads/zzeeu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeeu;->zzc()V

    return-void

    :cond_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdgw;->c:Lg/akx;

    iget v7, v5, Lg/akx;->buddyApkVersion:I

    iget v5, v5, Lg/akx;->clientJarVersion:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzV:Lcom/google/android/gms/internal/ads/zzffr;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzffr;->zza()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzffr;->zzc()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzees;->zzc:Lcom/google/android/gms/internal/ads/zzees;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzeet;->zzb:Lcom/google/android/gms/internal/ads/zzeet;

    :goto_0
    move-object/from16 v16, v5

    move-object v15, v7

    goto :goto_3

    :cond_2
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzY:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    sget-object v5, Lcom/google/android/gms/internal/ads/zzeet;->zzd:Lcom/google/android/gms/internal/ads/zzeet;

    :goto_1
    move-object v7, v5

    goto :goto_2

    :cond_3
    sget-object v5, Lcom/google/android/gms/internal/ads/zzeet;->zza:Lcom/google/android/gms/internal/ads/zzeet;

    goto :goto_1

    :goto_2
    sget-object v5, Lcom/google/android/gms/internal/ads/zzees;->zza:Lcom/google/android/gms/internal/ads/zzees;

    goto :goto_0

    :goto_3
    iget-object v9, v4, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzG()Landroid/webkit/WebView;

    move-result-object v11

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzal:Ljava/lang/String;

    const-string v12, ""

    const-string v13, "javascript"

    move-object/from16 v17, v1

    invoke-interface/range {v9 .. v17}, Lcom/google/android/gms/internal/ads/zzeer;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeet;Lcom/google/android/gms/internal/ads/zzees;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeew;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdgw;->a:Lcom/google/android/gms/internal/ads/zzeew;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdgw;->a:Lcom/google/android/gms/internal/ads/zzeew;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeew;->zza()Lcom/google/android/gms/internal/ads/zzfmw;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbcn;->zzfd:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzG()Landroid/webkit/WebView;

    move-result-object v1

    invoke-interface {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzj(Lcom/google/android/gms/internal/ads/zzfmw;Landroid/view/View;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzV()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget-object v5, Lg/ti;->a:Lg/ti;

    iget-object v5, v5, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-interface {v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzeer;->zzg(Lcom/google/android/gms/internal/ads/zzfmw;Landroid/view/View;)V

    goto :goto_4

    :cond_4
    invoke-interface {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzj(Lcom/google/android/gms/internal/ads/zzfmw;Landroid/view/View;)V

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdgw;->a:Lcom/google/android/gms/internal/ads/zzeew;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzat(Lcom/google/android/gms/internal/ads/zzeew;)V

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzeer;->zzk(Lcom/google/android/gms/internal/ads/zzfmw;)V

    new-instance v1, Lg/tl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/bcp;-><init>(I)V

    const-string v2, "onSdkLoaded"

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    return-void
.end method
