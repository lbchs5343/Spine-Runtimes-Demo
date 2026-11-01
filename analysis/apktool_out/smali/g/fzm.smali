.class public final Lg/fzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bol;
.implements Lcom/google/android/gms/internal/ads/zzfcz;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lg/fzm;->e:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lg/fzm;->f:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lg/cuc;

    iget-object v0, p0, Lg/fzm;->b:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lg/ahy;

    iget-object v0, p0, Lg/fzm;->c:Ljava/lang/Object;

    check-cast v0, Lg/fpd;

    invoke-virtual {v0}, Lg/fpd;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lg/ahe;

    iget-object v0, p0, Lg/fzm;->d:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lg/fzm;->g:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lg/ddc;

    new-instance v8, Lg/cuf;

    const/16 v0, 0xd

    invoke-direct {v8, v0}, Lg/cuf;-><init>(I)V

    new-instance v9, Lg/fbc;

    invoke-direct {v9, v0}, Lg/fbc;-><init>(I)V

    iget-object v0, p0, Lg/fzm;->a:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lg/gv;

    new-instance v1, Lg/dwp;

    invoke-direct/range {v1 .. v10}, Lg/dwp;-><init>(Landroid/content/Context;Lg/cuc;Lg/ahy;Lg/ahe;Ljava/util/concurrent/Executor;Lg/ddc;Lg/cqi;Lg/cqi;Lg/gv;)V

    return-object v1
.end method

.method public zza()Lcom/google/android/gms/internal/ads/zzena;
    .locals 1

    iget-object v0, p0, Lg/fzm;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzena;

    return-object v0
.end method
