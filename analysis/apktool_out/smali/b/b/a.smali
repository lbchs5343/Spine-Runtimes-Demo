.class public final Lb/b/a;
.super Lg/efx;
.source "SourceFile"

# interfaces
.implements Lg/eha;


# static fields
.field public static final synthetic d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/efx;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lg/efx;Z)Lg/csm;
    .locals 2

    new-instance v0, Lg/gmi;

    iget-object v1, p0, Lg/efx;->ao:Lg/cgg;

    invoke-direct {v0, p1, p2}, Lg/csm;-><init>(Lg/efx;Z)V

    iput-object v1, v0, Lg/gmi;->h:Lg/cgg;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v0}, Lg/fml;->g(Lg/efx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v0}, Lg/fml;->b(Lg/efx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lg/efx;->h(Landroid/content/Intent;)V

    const-class p1, Lcom/google/android/accessibility/selecttospeak/SelectToSpeakService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/efx;->bg:Ljava/lang/String;

    const-class p1, Lb/a/d;

    iput-object p1, p0, Lg/efx;->bc:Ljava/lang/Class;

    new-instance p1, Lg/aoi;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/efx;->ap:Lg/aoi;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/efx;->am:Z

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v0}, Lg/fml;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
