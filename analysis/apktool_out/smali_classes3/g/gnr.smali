.class public final Lg/gnr;
.super Lg/bir;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbpg;

.field public final synthetic c:Lg/ph;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic h:Lg/eno;


# direct methods
.method public constructor <init>(Lg/ph;Landroid/content/Context;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/gnr;->d:Landroid/content/Context;

    iput-object p3, p0, Lg/gnr;->h:Lg/eno;

    iput-object p4, p0, Lg/gnr;->a:Ljava/lang/String;

    iput-object p5, p0, Lg/gnr;->b:Lcom/google/android/gms/internal/ads/zzbpg;

    iput-object p1, p0, Lg/gnr;->c:Lg/ph;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/gnr;->d:Landroid/content/Context;

    const-string v1, "banner"

    invoke-static {v0, v1}, Lg/ph;->h(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lg/drz;

    invoke-direct {v0}, Lg/afk;-><init>()V

    return-object v0
.end method

.method public final f(Lg/drf;)Ljava/lang/Object;
    .locals 6

    new-instance v1, Lg/bpp;

    iget-object v0, p0, Lg/gnr;->d:Landroid/content/Context;

    invoke-direct {v1, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lg/gnr;->b:Lcom/google/android/gms/internal/ads/zzbpg;

    const v5, 0xe8813d8

    iget-object v2, p0, Lg/gnr;->h:Lg/eno;

    iget-object v3, p0, Lg/gnr;->a:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lg/drf;->j(Lg/bjq;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/deq;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic g()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lg/gnr;->c:Lg/ph;

    iget-object v0, v0, Lg/ph;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/ejy;

    iget-object v5, p0, Lg/gnr;->b:Lcom/google/android/gms/internal/ads/zzbpg;

    const/4 v6, 0x1

    iget-object v2, p0, Lg/gnr;->d:Landroid/content/Context;

    iget-object v3, p0, Lg/gnr;->h:Lg/eno;

    iget-object v4, p0, Lg/gnr;->a:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lg/ejy;->h(Landroid/content/Context;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/deq;

    move-result-object v0

    return-object v0
.end method
