.class public final Lg/ng;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzezt;
.implements Lcom/google/android/gms/internal/ads/zzfem;


# instance fields
.field public final a:Lg/bxr;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg/bxr;)V
    .locals 0

    iput-object p1, p0, Lg/ng;->a:Lg/bxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzezt;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lg/ng;->c:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfem;
    .locals 0

    iput-object p1, p0, Lg/ng;->c:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzezt;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lg/ng;->b:Landroid/content/Context;

    return-object p0
.end method

.method public bridge synthetic zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfem;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lg/ng;->b:Landroid/content/Context;

    return-object p0
.end method

.method public zzc()Lcom/google/android/gms/internal/ads/zzezu;
    .locals 4

    iget-object v0, p0, Lg/ng;->b:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lg/ng;->c:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lg/fzn;

    iget-object v1, p0, Lg/ng;->b:Landroid/content/Context;

    iget-object v2, p0, Lg/ng;->c:Ljava/lang/String;

    iget-object v3, p0, Lg/ng;->a:Lg/bxr;

    invoke-direct {v0, v3, v1, v2}, Lg/fzn;-><init>(Lg/bxr;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public zzc()Lcom/google/android/gms/internal/ads/zzfen;
    .locals 12

    iget-object v0, p0, Lg/ng;->b:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lg/ph;

    iget-object v1, p0, Lg/ng;->b:Landroid/content/Context;

    iget-object v2, p0, Lg/ng;->c:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhfy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object v4

    iput-object v4, v0, Lg/ph;->c:Ljava/lang/Object;

    iget-object v1, p0, Lg/ng;->a:Lg/bxr;

    iget-object v3, v1, Lg/bxr;->cr:Lcom/google/android/gms/internal/ads/zzhgg;

    iget-object v5, v1, Lg/bxr;->aq:Lcom/google/android/gms/internal/ads/zzhgg;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfcn;

    invoke-direct {v7, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzfcn;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    iget-object v3, v1, Lg/bxr;->cr:Lcom/google/android/gms/internal/ads/zzhgg;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfdx;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzfdx;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object v8

    iput-object v8, v0, Lg/ph;->e:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffl;->zza()Lcom/google/android/gms/internal/ads/zzffl;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object v10

    iput-object v10, v0, Lg/ph;->f:Ljava/lang/Object;

    iget-object v5, v1, Lg/bxr;->z:Lcom/google/android/gms/internal/ads/zzhgg;

    iget-object v6, v1, Lg/bxr;->ak:Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffq;->zza()Lcom/google/android/gms/internal/ads/zzffq;

    move-result-object v9

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfeh;

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzfeh;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    move-object v7, v8

    move-object v8, v10

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object v5

    iput-object v5, v0, Lg/ph;->a:Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfer;

    invoke-direct {v3, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzfer;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object v3

    iput-object v3, v0, Lg/ph;->b:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhfy;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object v2

    iput-object v2, v0, Lg/ph;->d:Ljava/lang/Object;

    iget-object v9, v1, Lg/bxr;->ab:Lcom/google/android/gms/internal/ads/zzcid;

    iget-object v10, v1, Lg/bxr;->cc:Lcom/google/android/gms/internal/ads/zzhgg;

    iget-object v11, v1, Lg/bxr;->k:Lcom/google/android/gms/internal/ads/zzhgg;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfel;

    move-object v6, v4

    move-object v4, v2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzfel;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object v1

    iput-object v1, v0, Lg/ph;->g:Ljava/lang/Object;

    return-object v0
.end method
