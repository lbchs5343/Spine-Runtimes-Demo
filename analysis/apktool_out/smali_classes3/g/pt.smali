.class public final Lg/pt;
.super Lg/haf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/adw;


# direct methods
.method public constructor <init>(Lg/adw;I)V
    .locals 1

    iput-object p1, p0, Lg/pt;->a:Lg/adw;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lg/haf;-><init>(Lg/adw;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final b(Lg/nk;)V
    .locals 2

    iget-object v0, p0, Lg/pt;->a:Lg/adw;

    iget-object v1, v0, Lg/adw;->g:Lg/fnt;

    invoke-interface {v1, p1}, Lg/fnt;->_ck(Lg/nk;)V

    invoke-virtual {v0, p1}, Lg/adw;->ak(Lg/nk;)V

    return-void
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lg/pt;->a:Lg/adw;

    iget-object v0, v0, Lg/adw;->g:Lg/fnt;

    sget-object v1, Lg/nk;->RESULT_SUCCESS:Lg/nk;

    invoke-interface {v0, v1}, Lg/fnt;->_ck(Lg/nk;)V

    const/4 v0, 0x1

    return v0
.end method
