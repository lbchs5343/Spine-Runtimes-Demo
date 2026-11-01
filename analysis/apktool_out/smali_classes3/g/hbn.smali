.class public final Lg/hbn;
.super Lg/bir;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lg/ph;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lg/eno;


# direct methods
.method public constructor <init>(Lg/ph;Landroid/content/Context;Lg/eno;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/hbn;->c:Landroid/content/Context;

    iput-object p3, p0, Lg/hbn;->d:Lg/eno;

    iput-object p4, p0, Lg/hbn;->a:Ljava/lang/String;

    iput-object p1, p0, Lg/hbn;->b:Lg/ph;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/hbn;->c:Landroid/content/Context;

    const-string v1, "search"

    invoke-static {v0, v1}, Lg/ph;->h(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lg/drz;

    invoke-direct {v0}, Lg/afk;-><init>()V

    return-object v0
.end method

.method public final f(Lg/drf;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lg/bpp;

    iget-object v1, p0, Lg/hbn;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/hbn;->a:Ljava/lang/String;

    const v2, 0xe8813d8

    iget-object v3, p0, Lg/hbn;->d:Lg/eno;

    invoke-interface {p1, v0, v3, v1, v2}, Lg/drf;->i(Lg/bjq;Lg/eno;Ljava/lang/String;I)Lg/deq;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic g()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lg/hbn;->b:Lg/ph;

    iget-object v0, v0, Lg/ph;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/ejy;

    const/4 v5, 0x0

    const/4 v6, 0x3

    iget-object v2, p0, Lg/hbn;->c:Landroid/content/Context;

    iget-object v3, p0, Lg/hbn;->d:Lg/eno;

    iget-object v4, p0, Lg/hbn;->a:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lg/ejy;->h(Landroid/content/Context;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/deq;

    move-result-object v0

    return-object v0
.end method
