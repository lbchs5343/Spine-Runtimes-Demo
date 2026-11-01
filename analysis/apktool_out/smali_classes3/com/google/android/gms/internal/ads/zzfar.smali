.class public final Lcom/google/android/gms/internal/ads/zzfar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcwp;
.implements Lcom/google/android/gms/internal/ads/zzcyl;
.implements Lcom/google/android/gms/internal/ads/zzfch;
.implements Lg/fim;
.implements Lcom/google/android/gms/internal/ads/zzcyx;
.implements Lcom/google/android/gms/internal/ads/zzcxc;
.implements Lcom/google/android/gms/internal/ads/zzdel;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzfar;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final f:Lcom/google/android/gms/internal/ads/zzfgy;

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfar;->f:Lcom/google/android/gms/internal/ads/zzfgy;

    return-void
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzfar;)Lcom/google/android/gms/internal/ads/zzfar;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfar;->f:Lcom/google/android/gms/internal/ads/zzfgy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfar;-><init>(Lcom/google/android/gms/internal/ads/zzfgy;)V

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    return-object v0
.end method


# virtual methods
.method public final zzdB(Lg/abz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfar;->zzdB(Lg/abz;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfam;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfam;-><init>(Lg/abz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfar;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfan;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfan;-><init>(Lg/abz;)V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    return-void
.end method

.method public final zzdG()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfar;->zzdG()V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfai;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfai;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfar;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    return-void
.end method

.method public final zzdH()V
    .locals 0

    return-void
.end method

.method public final zzdf()V
    .locals 0

    return-void
.end method

.method public final zzdk()V
    .locals 0

    return-void
.end method

.method public final zzdq()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfar;->zzdq()V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfaf;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfar;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    return-void
.end method

.method public final zzdr()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfar;->zzdr()V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfaq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfaq;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfar;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfad;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfar;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfae;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfae;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    return-void
.end method

.method public final zzdt()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfar;->zzdt()V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfap;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfar;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    return-void
.end method

.method public final zzdu(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfar;->zzdu(I)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfal;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfal;-><init>(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfar;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    return-void
.end method

.method public final zzg()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfar;->zzg()V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfao;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfao;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfar;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    return-void
.end method

.method public final zzh(Lg/adq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfar;->zzh(Lg/adq;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfac;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfac;-><init>(Lg/adq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfar;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    return-void
.end method

.method public final zzj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfar;->zzj()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->f:Lcom/google/android/gms/internal/ads/zzfgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgy;->zza()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfaj;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfar;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfak;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfar;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzbaf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfar;->zzk(Lcom/google/android/gms/internal/ads/zzbaf;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfah;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfah;-><init>(Lcom/google/android/gms/internal/ads/zzbaf;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfar;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzfch;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfar;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    return-void
.end method

.method public final zzm(Lg/fim;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzn(Lg/gwt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbai;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzbam;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzq(Lg/abz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfar;->a:Lcom/google/android/gms/internal/ads/zzfar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfar;->zzq(Lg/abz;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfag;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfag;-><init>(Lg/abz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfar;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfbx;)V

    return-void
.end method
