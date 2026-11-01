.class public final Lcom/google/android/gms/internal/ads/zzfsy;
.super Lcom/google/android/gms/internal/ads/zzfsm;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzfsx;

.field public b:Ljava/net/HttpURLConnection;

.field public c:Lcom/google/android/gms/internal/ads/zzfxg;

.field public d:Lcom/google/android/gms/internal/ads/zzfxg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfxg;Lcom/google/android/gms/internal/ads/zzfxg;Lcom/google/android/gms/internal/ads/zzfsx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsy;->c:Lcom/google/android/gms/internal/ads/zzfxg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsy;->d:Lcom/google/android/gms/internal/ads/zzfxg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsy;->a:Lcom/google/android/gms/internal/ads/zzfsx;

    return-void
.end method

.method public static zzs(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfsn;->zza()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsy;->b:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsy;->zzs(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public zzm()Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsy;->c:Lcom/google/android/gms/internal/ads/zzfxg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfxg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsy;->d:Lcom/google/android/gms/internal/ads/zzfxg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfxg;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsy;->a:Lcom/google/android/gms/internal/ads/zzfsx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfsx;->zza()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsy;->b:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public zzn(Lcom/google/android/gms/internal/ads/zzfsx;II)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsq;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfsq;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsy;->c:Lcom/google/android/gms/internal/ads/zzfxg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfsr;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfsr;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsy;->d:Lcom/google/android/gms/internal/ads/zzfxg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsy;->a:Lcom/google/android/gms/internal/ads/zzfsx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfsy;->zzm()Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public zzo(Landroid/net/Network;Ljava/net/URL;II)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfss;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzfss;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsy;->c:Lcom/google/android/gms/internal/ads/zzfxg;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfst;

    invoke-direct {p3, p4}, Lcom/google/android/gms/internal/ads/zzfst;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsy;->d:Lcom/google/android/gms/internal/ads/zzfxg;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfsu;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzfsu;-><init>(Landroid/net/Network;Ljava/net/URL;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsy;->a:Lcom/google/android/gms/internal/ads/zzfsx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfsy;->zzm()Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public zzr(Ljava/net/URL;I)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsv;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfsv;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsy;->c:Lcom/google/android/gms/internal/ads/zzfxg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfsw;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfsw;-><init>(Ljava/net/URL;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsy;->a:Lcom/google/android/gms/internal/ads/zzfsx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfsy;->zzm()Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method
