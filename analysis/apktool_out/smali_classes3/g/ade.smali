.class public abstract Lg/ade;
.super Landroidx/fragment/app/b;
.source "SourceFile"


# instance fields
.field public g:Lg/cuz;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/ade;->g:Lg/cuz;

    return-void
.end method


# virtual methods
.method public abstract h(Ljava/lang/String;)Z
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance p1, Lg/gqc;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object v0

    invoke-direct {p1, v0}, Lg/gqc;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/die;

    const/4 v1, 0x0

    iput-object v1, v0, Lg/die;->u:Landroid/view/View;

    const v2, 0x7f0c00b1

    iput v2, v0, Lg/die;->n:I

    const v0, 0x7f120360

    invoke-virtual {p1, v0}, Lg/gqc;->am(I)Lg/gqc;

    const v0, 0x7f120082

    invoke-virtual {p1, v0, v1}, Lg/gqc;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f120084

    invoke-virtual {p1, v0, v1}, Lg/gqc;->ay(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    invoke-virtual {p1}, Lg/gqc;->r()Lg/fpl;

    move-result-object p1

    new-instance v0, Lg/fdh;

    invoke-direct {v0, p0}, Lg/fdh;-><init>(Lg/ade;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method
