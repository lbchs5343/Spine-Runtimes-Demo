.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lg/bug;)Lg/dte;
    .locals 3

    new-instance v0, Lg/cov;

    check-cast p1, Lg/azb;

    iget-object v1, p1, Lg/azb;->b:Landroid/content/Context;

    iget-object v2, p1, Lg/azb;->c:Lg/cqi;

    iget-object p1, p1, Lg/azb;->d:Lg/cqi;

    invoke-direct {v0, v1, v2, p1}, Lg/cov;-><init>(Landroid/content/Context;Lg/cqi;Lg/cqi;)V

    return-object v0
.end method
