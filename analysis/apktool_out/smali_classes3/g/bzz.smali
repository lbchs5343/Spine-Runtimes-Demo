.class public final Lg/bzz;
.super Lcom/google/android/gms/internal/ads/zzapp;
.source "SourceFile"


# instance fields
.field public final t:Lg/dzz;

.field public final u:Lcom/google/android/gms/internal/ads/zzcao;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcao;)V
    .locals 7

    new-instance v0, Lg/aoy;

    invoke-direct {v0, p2}, Lg/aoy;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzapp;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzapt;)V

    iput-object p2, p0, Lg/bzz;->u:Lcom/google/android/gms/internal/ads/zzcao;

    new-instance p2, Lg/dzz;

    invoke-direct {p2}, Lg/dzz;-><init>()V

    iput-object p2, p0, Lg/bzz;->t:Lg/dzz;

    invoke-static {}, Lg/dzz;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lg/duw;

    const/16 v6, 0xc

    const-string v3, "GET"

    const/4 v4, 0x0

    move-object v5, v4

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lg/duw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string p1, "onNetworkRequest"

    invoke-virtual {p2, p1, v1}, Lg/dzz;->h(Ljava/lang/String;Lg/fbf;)V

    return-void
.end method


# virtual methods
.method public final o(Lcom/google/android/gms/internal/ads/zzapl;)Lcom/google/android/gms/internal/ads/zzapv;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqm;->zzb(Lcom/google/android/gms/internal/ads/zzapl;)Lcom/google/android/gms/internal/ads/zzaoy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzapv;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaoy;)Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzapl;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzapl;->zzc:Ljava/util/Map;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzapl;->zza:I

    iget-object v2, p0, Lg/bzz;->t:Lg/dzz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/dzz;->g()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lg/gqc;

    const/16 v4, 0x10

    invoke-direct {v3, v1, v0, v4}, Lg/gqc;-><init>(ILjava/lang/Object;I)V

    const-string v0, "onNetworkResponse"

    invoke-virtual {v2, v0, v3}, Lg/dzz;->h(Ljava/lang/String;Lg/fbf;)V

    const/16 v0, 0xc8

    if-lt v1, v0, :cond_1

    const/16 v0, 0x12c

    if-lt v1, v0, :cond_2

    :cond_1
    new-instance v0, Lg/aox;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/aox;-><init>(Ljava/lang/String;)V

    const-string v1, "onNetworkRequestError"

    invoke-virtual {v2, v1, v0}, Lg/dzz;->h(Ljava/lang/String;Lg/fbf;)V

    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzapl;->zzb:[B

    invoke-static {}, Lg/dzz;->g()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    new-instance v1, Lg/fnq;

    const/16 v3, 0x1d

    invoke-direct {v1, v3, v0}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    const-string v0, "onNetworkResponseBody"

    invoke-virtual {v2, v0, v1}, Lg/dzz;->h(Ljava/lang/String;Lg/fbf;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lg/bzz;->u:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
