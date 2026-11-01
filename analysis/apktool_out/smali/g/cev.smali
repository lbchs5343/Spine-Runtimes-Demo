.class public final Lg/cev;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/fuk;


# direct methods
.method public constructor <init>(Lg/fuk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cev;->a:Lg/fuk;

    return-void
.end method


# virtual methods
.method public b(Landroid/net/Uri;)Lg/dcy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lg/dcy;"
        }
    .end annotation

    const-string v0, "trigger"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/uj;->a:Lg/nt;

    invoke-static {v0}, Lg/aky;->q(Lg/boj;)Lg/dlg;

    move-result-object v0

    new-instance v1, Lg/xz;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lg/xz;-><init>(Lg/cev;Landroid/net/Uri;Lg/bdp;)V

    invoke-static {v0, v1}, Lg/baf;->ba(Lg/dlg;Lg/bto;)Lg/ghn;

    move-result-object p1

    invoke-static {p1}, Lg/awt;->ae(Lg/ghn;)Lg/gbb;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/hcg;)Lg/dcy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/hcg;",
            ")",
            "Lg/dcy;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Lg/ach;)Lg/dcy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/ach;",
            ")",
            "Lg/dcy;"
        }
    .end annotation

    const-string v0, "deletionRequest"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(Lg/ye;)Lg/dcy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/ye;",
            ")",
            "Lg/dcy;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public f()Lg/dcy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/dcy;"
        }
    .end annotation

    sget-object v0, Lg/uj;->a:Lg/nt;

    invoke-static {v0}, Lg/aky;->q(Lg/boj;)Lg/dlg;

    move-result-object v0

    new-instance v1, Lg/gjm;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/gjm;-><init>(Lg/cev;Lg/bdp;)V

    invoke-static {v0, v1}, Lg/baf;->ba(Lg/dlg;Lg/bto;)Lg/ghn;

    move-result-object v0

    invoke-static {v0}, Lg/awt;->ae(Lg/ghn;)Lg/gbb;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/net/Uri;Landroid/view/InputEvent;)Lg/dcy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            ")",
            "Lg/dcy;"
        }
    .end annotation

    const-string v0, "attributionSource"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/uj;->a:Lg/nt;

    invoke-static {v0}, Lg/aky;->q(Lg/boj;)Lg/dlg;

    move-result-object v0

    new-instance v1, Lg/gdp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lg/gdp;-><init>(Lg/cev;Landroid/net/Uri;Landroid/view/InputEvent;Lg/bdp;)V

    invoke-static {v0, v1}, Lg/baf;->ba(Lg/dlg;Lg/bto;)Lg/ghn;

    move-result-object p1

    invoke-static {p1}, Lg/awt;->ae(Lg/ghn;)Lg/gbb;

    move-result-object p1

    return-object p1
.end method
