.class public final Lcom/google/android/gms/internal/ads/zzfna;
.super Lcom/google/android/gms/internal/ads/zzfmw;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzfoh;

.field public b:Z

.field public final c:Lcom/google/android/gms/internal/ads/zzfmy;

.field public d:Z

.field public final e:Lcom/google/android/gms/internal/ads/zzfnv;

.field public f:Lcom/google/android/gms/internal/ads/zzfpi;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfmx;Lcom/google/android/gms/internal/ads/zzfmy;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfmw;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfnv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->e:Lcom/google/android/gms/internal/ads/zzfnv;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->d:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfna;->c:Lcom/google/android/gms/internal/ads/zzfmy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfna;->g:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfpi;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->f:Lcom/google/android/gms/internal/ads/zzfpi;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfmy;->zzd()Lcom/google/android/gms/internal/ads/zzfmz;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfmz;->zza:Lcom/google/android/gms/internal/ads/zzfmz;

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfmy;->zzd()Lcom/google/android/gms/internal/ads/zzfmz;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfmz;->zzc:Lcom/google/android/gms/internal/ads/zzfmz;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfol;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfmy;->zzi()Ljava/util/Map;

    move-result-object p2

    invoke-direct {v0, p3, p2, v1}, Lcom/google/android/gms/internal/ads/zzfol;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoi;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfmy;->zza()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/ads/zzfoi;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfna;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfoh;->zzo()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zza()Lcom/google/android/gms/internal/ads/zzfnr;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzfnr;->zzd(Lcom/google/android/gms/internal/ads/zzfna;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfna;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzf(Lcom/google/android/gms/internal/ads/zzfmx;)V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfnd;Ljava/lang/String;)V
    .locals 1

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfna;->d:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfna;->e:Lcom/google/android/gms/internal/ads/zzfnv;

    const-string v0, "Ad overlay"

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfnv;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfnd;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->f:Lcom/google/android/gms/internal/ads/zzfpi;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->e:Lcom/google/android/gms/internal/ads/zzfnv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnv;->zzc()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoh;->zze()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zza()Lcom/google/android/gms/internal/ads/zzfnr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfnr;->zze(Lcom/google/android/gms/internal/ads/zzfna;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoh;->zzc()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    return-void
.end method

.method public final zzd(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->d:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfna;->zzf()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfpi;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->f:Lcom/google/android/gms/internal/ads/zzfpi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoh;->zzb()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zza()Lcom/google/android/gms/internal/ads/zzfnr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnr;->zzc()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfna;

    if-eq v1, p0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfna;->zzf()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfna;->f:Lcom/google/android/gms/internal/ads/zzfpi;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final zze()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->b:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zza()Lcom/google/android/gms/internal/ads/zzfnr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfnr;->zzf(Lcom/google/android/gms/internal/ads/zzfna;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnz;->zzb()Lcom/google/android/gms/internal/ads/zzfnz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnz;->zza()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfoh;->zzl(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnp;->zza()Lcom/google/android/gms/internal/ads/zzfnp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfnp;->zzb()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzg(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfna;->c:Lcom/google/android/gms/internal/ads/zzfmy;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzi(Lcom/google/android/gms/internal/ads/zzfna;Lcom/google/android/gms/internal/ads/zzfmy;)V

    return-void
.end method

.method public final zzf()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->f:Lcom/google/android/gms/internal/ads/zzfpi;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzfoh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->e:Lcom/google/android/gms/internal/ads/zzfnv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnv;->zza()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfna;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
