.class public final Lg/etf;
.super Lg/byk;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzdwh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwh;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/etf;->a:Ljava/lang/String;

    iput-object p3, p0, Lg/etf;->b:Ljava/lang/String;

    iput-object p1, p0, Lg/etf;->e:Lcom/google/android/gms/internal/ads/zzdwh;

    return-void
.end method


# virtual methods
.method public final c(Lg/bfi;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lg/etf;->b:Ljava/lang/String;

    iget-object v1, p0, Lg/etf;->e:Lcom/google/android/gms/internal/ads/zzdwh;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdwh;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lg/dth;

    iget-object v0, p0, Lg/etf;->e:Lcom/google/android/gms/internal/ads/zzdwh;

    iget-object v1, p0, Lg/etf;->a:Ljava/lang/String;

    iget-object v2, p0, Lg/etf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdwh;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
