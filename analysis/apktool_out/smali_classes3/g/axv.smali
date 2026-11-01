.class public final Lg/axv;
.super Lg/acr;
.source "SourceFile"


# instance fields
.field public final ck:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final cl:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final cm:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final cn:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final co:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/axv;->cn:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p2, p0, Lg/axv;->ck:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p3, p0, Lg/axv;->cm:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p4, p0, Lg/axv;->cl:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p5, p0, Lg/axv;->co:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method public final bz(Lcom/google/android/gms/internal/ads/zzgcy;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg/axv;->co:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgcz;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ca(Lg/mz;Lg/mz;)V
    .locals 1

    iget-object v0, p0, Lg/axv;->ck:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final cc(Lcom/google/android/gms/internal/ads/zzgcy;Lg/hcy;Lg/hcy;)Z
    .locals 1

    iget-object v0, p0, Lg/axv;->cl:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgcz;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final cd(Lcom/google/android/gms/internal/ads/zzgcy;)Lg/mz;
    .locals 2

    sget-object v0, Lg/mz;->a:Lg/mz;

    iget-object v1, p0, Lg/axv;->cm:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/mz;

    return-object p1
.end method

.method public final ch(Lcom/google/android/gms/internal/ads/zzgcy;Lg/mz;Lg/mz;)Z
    .locals 1

    iget-object v0, p0, Lg/axv;->cm:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgcz;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ci(Lg/mz;Ljava/lang/Thread;)V
    .locals 1

    iget-object v0, p0, Lg/axv;->cn:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final cj(Lcom/google/android/gms/internal/ads/zzgcy;)Lg/hcy;
    .locals 2

    sget-object v0, Lg/hcy;->a:Lg/hcy;

    iget-object v1, p0, Lg/axv;->cl:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/hcy;

    return-object p1
.end method
