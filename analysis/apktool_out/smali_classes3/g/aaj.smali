.class public final Lg/aaj;
.super Lg/nl;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/google/android/gms/internal/ads/zzdwh;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lg/aia;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwh;Ljava/lang/String;Lg/aia;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/aaj;->h:Ljava/lang/String;

    iput-object p3, p0, Lg/aaj;->i:Lg/aia;

    iput-object p4, p0, Lg/aaj;->f:Ljava/lang/String;

    iput-object p1, p0, Lg/aaj;->g:Lcom/google/android/gms/internal/ads/zzdwh;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lg/aaj;->i:Lg/aia;

    iget-object v1, p0, Lg/aaj;->f:Ljava/lang/String;

    iget-object v2, p0, Lg/aaj;->g:Lcom/google/android/gms/internal/ads/zzdwh;

    iget-object v3, p0, Lg/aaj;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/gms/internal/ads/zzdwh;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lg/bfi;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lg/aaj;->f:Ljava/lang/String;

    iget-object v1, p0, Lg/aaj;->g:Lcom/google/android/gms/internal/ads/zzdwh;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdwh;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
