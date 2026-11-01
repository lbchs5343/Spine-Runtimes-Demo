.class public final Lg/ahu;
.super Lcom/google/android/gms/internal/ads/zzaqu;
.source "SourceFile"


# instance fields
.field public final synthetic w:Ljava/util/Map;

.field public final synthetic x:[B

.field public final synthetic y:Lg/dzz;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lg/dlc;Lg/ffr;[BLjava/util/Map;Lg/dzz;)V
    .locals 0

    iput-object p5, p0, Lg/ahu;->x:[B

    iput-object p6, p0, Lg/ahu;->w:Ljava/util/Map;

    iput-object p7, p0, Lg/ahu;->y:Lg/dzz;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaqu;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzapu;Lcom/google/android/gms/internal/ads/zzapt;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic q(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lg/ahu;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lg/dzz;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Lg/fnq;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, v0}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    const-string v0, "onNetworkResponseBody"

    iget-object v2, p0, Lg/ahu;->y:Lg/dzz;

    invoke-virtual {v2, v0, v1}, Lg/dzz;->h(Ljava/lang/String;Lg/fbf;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqu;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final zzl()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lg/ahu;->w:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public final zzx()[B
    .locals 1

    iget-object v0, p0, Lg/ahu;->x:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
