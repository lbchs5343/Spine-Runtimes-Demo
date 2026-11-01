.class public final Lg/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzgcy;

.field public final b:Lg/dcy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgcy;Lg/dcy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/an;->a:Lcom/google/android/gms/internal/ads/zzgcy;

    iput-object p2, p0, Lg/an;->b:Lg/dcy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg/an;->a:Lcom/google/android/gms/internal/ads/zzgcy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgcy;->w:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/an;->b:Lg/dcy;

    iget-object v1, p0, Lg/an;->a:Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgcy;->z(Lg/dcy;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgcy;->u:Lg/acr;

    invoke-virtual {v2, v1, p0, v0}, Lg/acr;->bz(Lcom/google/android/gms/internal/ads/zzgcy;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/an;->a:Lcom/google/android/gms/internal/ads/zzgcy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcy;->y(Lcom/google/android/gms/internal/ads/zzgcy;Z)V

    :cond_1
    :goto_0
    return-void
.end method
