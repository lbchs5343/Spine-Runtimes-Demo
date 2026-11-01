.class public Lb/b/c;
.super Lg/doq;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/efx;-><init>()V

    return-void
.end method


# virtual methods
.method public final _a()V
    .locals 4

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lb/c/d;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lg/doq;->ae:Lg/auj;

    iget-object v2, v2, Lg/auj;->h:Ljava/lang/String;

    const-string v3, "package_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public final ab()Ljava/lang/String;
    .locals 1

    const-string v0, "so"

    return-object v0
.end method

.method public final e(Lg/efx;Z)Lg/csm;
    .locals 3

    new-instance v0, Lg/eas;

    iget-object v1, p0, Lg/doq;->ah:Lg/eqi;

    const/4 v2, 0x2

    invoke-direct {v0, p1, p2, v1, v2}, Lg/eas;-><init>(Lg/efx;ZLg/eqi;I)V

    iput-object v0, p0, Lg/doq;->ad:Lg/eas;

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

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v0}, Lg/fml;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v1}, Lg/acw;->bk(Lg/cms;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "so"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    const v1, 0x7f120451

    invoke-static {v0, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void
.end method

.method public final u()V
    .locals 0

    return-void
.end method
