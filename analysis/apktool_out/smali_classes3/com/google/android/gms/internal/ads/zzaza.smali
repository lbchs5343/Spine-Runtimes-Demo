.class public final Lcom/google/android/gms/internal/ads/zzaza;
.super Lg/hct;
.source "SourceFile"


# instance fields
.field public final a:Lg/eus;


# direct methods
.method public constructor <init>(Lg/eus;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAppEventListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaza;->a:Lg/eus;

    return-void
.end method


# virtual methods
.method public final zzb()Lg/eus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaza;->a:Lg/eus;

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaza;->a:Lg/eus;

    invoke-interface {v0, p1, p2}, Lg/eus;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
