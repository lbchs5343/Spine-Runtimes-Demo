.class public final Lg/dst;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/gil;


# direct methods
.method public constructor <init>(Lg/gil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dst;->a:Lg/gil;

    return-void
.end method


# virtual methods
.method public final b(IJ)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzaA:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/dst;->a:Lg/gil;

    check-cast v0, Lg/cmo;

    invoke-virtual {v0}, Lg/cmo;->aj()V

    iget-object v2, v0, Lg/cmo;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v3, v0, Lg/cmo;->m:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v3, p2, v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    const-string p1, "Receiving npa decision in the past, ignoring."

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzaB:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lg/dst;->a:Lg/gil;

    const/4 v0, -0x1

    check-cast p1, Lg/cmo;

    invoke-virtual {p1, v0}, Lg/cmo;->bg(I)V

    iget-object p1, p0, Lg/dst;->a:Lg/gil;

    check-cast p1, Lg/cmo;

    invoke-virtual {p1, p2, p3}, Lg/cmo;->af(J)V

    return-void

    :cond_2
    iget-object v0, p0, Lg/dst;->a:Lg/gil;

    check-cast v0, Lg/cmo;

    invoke-virtual {v0, p1}, Lg/cmo;->bg(I)V

    iget-object p1, p0, Lg/dst;->a:Lg/gil;

    check-cast p1, Lg/cmo;

    invoke-virtual {p1, p2, p3}, Lg/cmo;->af(J)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
