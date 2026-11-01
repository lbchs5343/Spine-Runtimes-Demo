.class public final Lcom/google/android/gms/internal/ads/zzbzq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;I)Lg/dcy;
    .locals 4

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    sget-object v0, Lg/cbv;->a:Lg/cbv;

    iget-object v0, v0, Lg/cbv;->d:Lg/mx;

    sget-object v0, Lg/gna;->i:Lg/gna;

    const v1, 0xbdfcb8

    invoke-virtual {v0, p1, v1}, Lg/gna;->l(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lg/efr;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lg/efr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p2
.end method
