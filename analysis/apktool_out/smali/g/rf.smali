.class public final Lg/rf;
.super Lg/bdo;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/cox;

.field public final synthetic b:Lg/erv;


# direct methods
.method public constructor <init>(Lg/erv;Lg/erv;Lg/cox;)V
    .locals 0

    iput-object p1, p0, Lg/rf;->b:Lg/erv;

    iput-object p3, p0, Lg/rf;->a:Lg/cox;

    invoke-direct {p0, p2}, Lg/bdo;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final c()Lg/erj;
    .locals 1

    iget-object v0, p0, Lg/rf;->a:Lg/cox;

    return-object v0
.end method

.method public final d()Z
    .locals 3

    iget-object v0, p0, Lg/rf;->b:Lg/erv;

    invoke-virtual {v0}, Lg/erv;->getInternalPopup()Lg/uw;

    move-result-object v1

    invoke-interface {v1}, Lg/uw;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/erv;->i:Lg/uw;

    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lg/uw;->b(II)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
