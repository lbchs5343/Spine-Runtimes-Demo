.class public final Lg/dxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/cfo;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lg/cfo;IIIIILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dxd;->a:Lg/cfo;

    iput p2, p0, Lg/dxd;->e:I

    iput p3, p0, Lg/dxd;->f:I

    iput p4, p0, Lg/dxd;->b:I

    iput p5, p0, Lg/dxd;->c:I

    iput p6, p0, Lg/dxd;->d:I

    iput-object p7, p0, Lg/dxd;->g:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lg/dxd;->a:Lg/cfo;

    iget-object v1, v0, Lg/cfo;->c:Lg/gwy;

    iget v6, p0, Lg/dxd;->d:I

    iget-object v7, p0, Lg/dxd;->g:Landroid/os/Bundle;

    iget v2, p0, Lg/dxd;->e:I

    iget v3, p0, Lg/dxd;->f:I

    iget v4, p0, Lg/dxd;->b:I

    iget v5, p0, Lg/dxd;->c:I

    invoke-virtual/range {v1 .. v7}, Lg/gwy;->onActivityLayout(IIIIILandroid/os/Bundle;)V

    return-void
.end method
