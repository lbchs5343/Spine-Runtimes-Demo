.class public final Lg/cnk;
.super Lcom/google/android/gms/internal/ads/zzbhe;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/cnk;->a:I

    iput-object p2, p0, Lg/cnk;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhe;-><init>()V

    return-void
.end method

.method private final c(Lcom/google/android/gms/internal/ads/zzbgs;)V
    .locals 3

    iget-object v0, p0, Lg/cnk;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbic;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbic;->a:Lg/edz;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbic;->c:Lcom/google/android/gms/internal/ads/zzbgt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbgt;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzbgt;-><init>(Lcom/google/android/gms/internal/ads/zzbgs;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzbic;->c:Lcom/google/android/gms/internal/ads/zzbgt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    check-cast v1, Lg/cca;

    iget-object p1, v1, Lg/cca;->f:Ljava/lang/Object;

    check-cast p1, Lg/ccj;

    iget-object v0, v1, Lg/cca;->h:Ljava/lang/Object;

    check-cast v0, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {p1, v0, v2}, Lg/ccj;->zzd(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/internal/ads/zzbgt;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbgs;)V
    .locals 2

    iget v0, p0, Lg/cnk;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cnk;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbst;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbst;->a:Lcom/google/android/gms/internal/ads/zzbsu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbsu;-><init>(Lcom/google/android/gms/internal/ads/zzbgs;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbst;->a:Lcom/google/android/gms/internal/ads/zzbsu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    throw p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :pswitch_0
    invoke-direct {p0, p1}, Lg/cnk;->c(Lcom/google/android/gms/internal/ads/zzbgs;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
