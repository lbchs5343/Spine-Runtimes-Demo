.class public final Lcom/google/android/gms/internal/ads/zzbom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbny;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/gms/internal/ads/zzboa;

.field public final c:Lcom/google/android/gms/internal/ads/zzbob;

.field public final d:Lcom/google/android/gms/internal/ads/zzbnu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnu;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbob;Lcom/google/android/gms/internal/ads/zzboa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbom;->d:Lcom/google/android/gms/internal/ads/zzbnu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbom;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbom;->c:Lcom/google/android/gms/internal/ads/zzbob;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbom;->b:Lcom/google/android/gms/internal/ads/zzboa;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbom;->zzb(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)Lg/dcy;
    .locals 7

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbom;->d:Lcom/google/android/gms/internal/ads/zzbnu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnu;->zzb(Lcom/google/android/gms/internal/ads/zzavc;)Lcom/google/android/gms/internal/ads/zzbno;

    move-result-object v2

    const-string v0, "callJs > getEngine: Promise created"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    new-instance v0, Lg/duw;

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lg/duw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    new-instance p1, Lg/clx;

    const/16 v1, 0xf

    const/4 v3, 0x0

    invoke-direct {p1, v1, v4, v2, v3}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzcav;->zzj(Lcom/google/android/gms/internal/ads/zzcas;Lcom/google/android/gms/internal/ads/zzcaq;)V

    return-object v4
.end method
