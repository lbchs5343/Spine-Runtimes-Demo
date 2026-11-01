.class public final Lg/cva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public a:Landroid/content/Context;


# virtual methods
.method public b()Lg/ab;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/cva;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v2, Lg/ab;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lg/eyt;->x:Lg/bli;

    invoke-static {v3}, Lg/gfs;->d(Lg/bol;)Lg/fcc;

    move-result-object v3

    iput-object v3, v2, Lg/ab;->d:Lg/fcc;

    new-instance v3, Lg/eie;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v1}, Lg/eie;-><init>(ILjava/lang/Object;)V

    iput-object v3, v2, Lg/ab;->e:Lg/eie;

    new-instance v1, Lg/dcq;

    const/4 v4, 0x7

    invoke-direct {v1, v4, v3}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lg/akj;

    const/16 v5, 0xc

    invoke-direct {v4, v3, v5, v1}, Lg/akj;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v4}, Lg/gfs;->d(Lg/bol;)Lg/fcc;

    move-result-object v1

    iput-object v1, v2, Lg/ab;->a:Lg/fcc;

    iget-object v1, v2, Lg/ab;->e:Lg/eie;

    new-instance v3, Lg/dcq;

    const/16 v4, 0x10

    invoke-direct {v3, v4, v1}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    iput-object v3, v2, Lg/ab;->b:Lg/dcq;

    new-instance v3, Lg/eie;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Lg/eie;-><init>(ILjava/lang/Object;)V

    invoke-static {v3}, Lg/gfs;->d(Lg/bol;)Lg/fcc;

    move-result-object v1

    iget-object v3, v2, Lg/ab;->b:Lg/dcq;

    new-instance v4, Lg/clx;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v1, v6}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-static {v4}, Lg/gfs;->d(Lg/bol;)Lg/fcc;

    move-result-object v9

    iput-object v9, v2, Lg/ab;->c:Lg/fcc;

    new-instance v10, Lg/fbc;

    const/16 v1, 0xb

    invoke-direct {v10, v1}, Lg/fbc;-><init>(I)V

    iget-object v8, v2, Lg/ab;->e:Lg/eie;

    new-instance v7, Lg/fpd;

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lg/fpd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    move-object v10, v7

    move-object v1, v8

    iget-object v8, v2, Lg/ab;->d:Lg/fcc;

    move-object v11, v9

    iget-object v9, v2, Lg/ab;->a:Lg/fcc;

    new-instance v7, Lg/fzn;

    const/4 v13, 0x3

    move-object v12, v11

    invoke-direct/range {v7 .. v13}, Lg/fzn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v13, v7

    move-object v3, v9

    move-object v9, v11

    new-instance v14, Lg/fzm;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v1, v14, Lg/fzm;->e:Ljava/lang/Object;

    iput-object v3, v14, Lg/fzm;->f:Ljava/lang/Object;

    iput-object v9, v14, Lg/fzm;->b:Ljava/lang/Object;

    iput-object v10, v14, Lg/fzm;->c:Ljava/lang/Object;

    iput-object v8, v14, Lg/fzm;->d:Ljava/lang/Object;

    iput-object v9, v14, Lg/fzm;->g:Ljava/lang/Object;

    iput-object v9, v14, Lg/fzm;->a:Ljava/lang/Object;

    new-instance v15, Lg/duw;

    const/4 v12, 0x5

    move-object v7, v15

    invoke-direct/range {v7 .. v12}, Lg/duw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v12, Lg/fpd;

    const/16 v16, 0xd

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Lg/fpd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-static {v12}, Lg/gfs;->d(Lg/bol;)Lg/fcc;

    move-result-object v1

    iput-object v1, v2, Lg/ab;->f:Lg/fcc;

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbef;->zzh:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lg/gya;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/cva;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbx;->zze(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyx;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbef;->zzj:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/cva;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbx;->zze(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
