.class public final Lg/dma;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/aoi;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lg/aoi;)V
    .locals 0

    iput-object p2, p0, Lg/dma;->a:Lg/aoi;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public final commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lg/evf;

    new-instance v1, Lg/blp;

    invoke-direct {v1, p1}, Lg/blp;-><init>(Ljava/lang/Object;)V

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lg/evf;-><init>(ILjava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lg/dma;->a:Lg/aoi;

    invoke-virtual {v1, v0, p2, p3}, Lg/aoi;->f(Lg/evf;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
