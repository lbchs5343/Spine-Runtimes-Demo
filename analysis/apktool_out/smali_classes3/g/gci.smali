.class public final Lg/gci;
.super Lg/bir;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbpc;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gci;->b:Landroid/content/Context;

    iput-object p2, p0, Lg/gci;->c:Ljava/lang/String;

    iput-object p3, p0, Lg/gci;->a:Lcom/google/android/gms/internal/ads/zzbpc;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/gci;->b:Landroid/content/Context;

    const-string v1, "rewarded"

    invoke-static {v0, v1}, Lg/ph;->h(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lg/fzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbxb;-><init>()V

    return-object v0
.end method

.method public final f(Lg/drf;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lg/bpp;

    iget-object v1, p0, Lg/gci;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/gci;->a:Lcom/google/android/gms/internal/ads/zzbpc;

    const v2, 0xe8813d8

    iget-object v3, p0, Lg/gci;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v1, v2}, Lg/drf;->e(Lg/bjq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzbxc;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic g()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/gci;->c:Ljava/lang/String;

    iget-object v1, p0, Lg/gci;->a:Lcom/google/android/gms/internal/ads/zzbpc;

    iget-object v2, p0, Lg/gci;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbxo;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;)Lcom/google/android/gms/internal/ads/zzbxc;

    move-result-object v0

    return-object v0
.end method
