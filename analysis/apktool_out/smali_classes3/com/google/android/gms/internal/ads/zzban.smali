.class public final Lcom/google/android/gms/internal/ads/zzban;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/ao;

.field public final b:Lg/qo;

.field public final c:I

.field public d:Lg/deq;

.field public final e:Lg/fle;

.field public final f:Landroid/content/Context;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/google/android/gms/internal/ads/zzbpc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lg/qo;ILg/fle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->h:Lcom/google/android/gms/internal/ads/zzbpc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzban;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzban;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzban;->b:Lg/qo;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzban;->c:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzban;->e:Lg/fle;

    sget-object p1, Lg/ao;->af:Lg/ao;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzban;->a:Lg/ao;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->b:Lg/qo;

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lg/eno;->zzb()Lg/eno;

    move-result-object v6

    sget-object v3, Lg/cbv;->a:Lg/cbv;

    iget-object v4, v3, Lg/cbv;->e:Lg/ph;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzban;->f:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzban;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzban;->h:Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg/akl;

    invoke-direct/range {v3 .. v8}, Lg/akl;-><init>(Lg/ph;Landroid/content/Context;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/deq;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzban;->d:Lg/deq;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzban;->c:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    new-instance v4, Lg/gby;

    invoke-direct {v4, v3}, Lg/gby;-><init>(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzban;->d:Lg/deq;

    invoke-interface {v3, v4}, Lg/deq;->zzI(Lg/gby;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v1, v0, Lg/qo;->h:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzban;->d:Lg/deq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbaa;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzban;->e:Lg/fle;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzban;->g:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>(Lg/fle;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lg/deq;->zzH(Lcom/google/android/gms/internal/ads/zzbai;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzban;->d:Lg/deq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzban;->a:Lg/ao;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzban;->f:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lg/ao;->ai(Landroid/content/Context;Lg/qo;)Lg/aeh;

    move-result-object v0

    invoke-interface {v1, v0}, Lg/deq;->zzab(Lg/aeh;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
