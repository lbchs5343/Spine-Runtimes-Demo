.class public final Lcom/google/android/gms/internal/ads/zzffm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzbfn;

.field public b:Lg/gfp;

.field public final c:Lcom/google/android/gms/internal/ads/zzfez;

.field public d:Lcom/google/android/gms/internal/ads/zzbmb;

.field public e:Lg/cpm;

.field public f:Lg/fbj;

.field public g:Z

.field public h:Lg/aeh;

.field public i:Lg/atu;

.field public j:Ljava/util/ArrayList;

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Lg/gby;

.field public o:Lg/eno;

.field public p:Lg/dgw;

.field public q:Z

.field public r:Landroid/os/Bundle;

.field public s:Ljava/lang/String;

.field public t:Ljava/util/ArrayList;

.field public u:Lcom/google/android/gms/internal/ads/zzems;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->m:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfez;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfez;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->c:Lcom/google/android/gms/internal/ads/zzfez;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->l:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->q:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->k:Z

    return-void
.end method


# virtual methods
.method public final zzA(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->r:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzB(Z)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->g:Z

    return-object p0
.end method

.method public final zzC(I)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->m:I

    return-object p0
.end method

.method public final zzD(Lcom/google/android/gms/internal/ads/zzbfn;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->a:Lcom/google/android/gms/internal/ads/zzbfn;

    return-object p0
.end method

.method public final zzE(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzF(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->t:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzG(Lg/gfp;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->b:Lg/gfp;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/gfp;->zzc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->g:Z

    invoke-virtual {p1}, Lg/gfp;->zza()Lg/fbj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->f:Lg/fbj;

    :cond_0
    return-object p0
.end method

.method public final zzH(Lg/aeh;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->h:Lg/aeh;

    return-object p0
.end method

.method public final zzI(Lg/cpm;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->e:Lg/cpm;

    return-object p0
.end method

.method public final zzJ()Lcom/google/android/gms/internal/ads/zzffo;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->s:Ljava/lang/String;

    const-string v1, "ad unit must not be null"

    invoke-static {v0, v1}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->o:Lg/eno;

    const-string v1, "ad size must not be null"

    invoke-static {v0, v1}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->h:Lg/aeh;

    const-string v1, "ad request must not be null"

    invoke-static {v0, v1}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzffo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzffo;-><init>(Lcom/google/android/gms/internal/ads/zzffm;)V

    return-object v0
.end method

.method public final zzL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final zzS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->l:Z

    return v0
.end method

.method public final zzT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->q:Z

    return v0
.end method

.method public final zzV(Lg/atu;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->i:Lg/atu;

    return-object p0
.end method

.method public final zzf()Lg/aeh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->h:Lg/aeh;

    return-object v0
.end method

.method public final zzh()Lg/eno;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->o:Lg/eno;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzfez;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->c:Lcom/google/android/gms/internal/ads/zzfez;

    return-object v0
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzffo;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzo:Lcom/google/android/gms/internal/ads/zzffb;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzffb;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffm;->c:Lcom/google/android/gms/internal/ads/zzfez;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfez;->zza(I)Lcom/google/android/gms/internal/ads/zzfez;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzd:Lg/aeh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->h:Lg/aeh;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zze:Lg/eno;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->o:Lg/eno;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzt:Lg/atu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->i:Lg/atu;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->s:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zza:Lg/cpm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->e:Lg/cpm;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzg:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->j:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzh:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->t:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzi:Lcom/google/android/gms/internal/ads/zzbfn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->a:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzj:Lg/gby;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->n:Lg/gby;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzl:Lg/dgw;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzffm;->zzr(Lg/dgw;)Lcom/google/android/gms/internal/ads/zzffm;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzm:Lg/gfp;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzffm;->zzG(Lg/gfp;)Lcom/google/android/gms/internal/ads/zzffm;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->l:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->q:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzc:Lcom/google/android/gms/internal/ads/zzems;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->u:Lcom/google/android/gms/internal/ads/zzems;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->k:Z

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzffo;->zzs:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->r:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzr(Lg/dgw;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->p:Lg/dgw;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/dgw;->getManualImpressionsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->g:Z

    :cond_0
    return-object p0
.end method

.method public final zzs(Lg/eno;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->o:Lg/eno;

    return-object p0
.end method

.method public final zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->s:Ljava/lang/String;

    return-object p0
.end method

.method public final zzu(Lg/gby;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->n:Lg/gby;

    return-object p0
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzems;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->u:Lcom/google/android/gms/internal/ads/zzems;

    return-object p0
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzbmb;)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->d:Lcom/google/android/gms/internal/ads/zzbmb;

    new-instance p1, Lg/cpm;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lg/cpm;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->e:Lg/cpm;

    return-object p0
.end method

.method public final zzx(Z)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->l:Z

    return-object p0
.end method

.method public final zzy(Z)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->q:Z

    return-object p0
.end method

.method public final zzz(Z)Lcom/google/android/gms/internal/ads/zzffm;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->k:Z

    return-object p0
.end method
