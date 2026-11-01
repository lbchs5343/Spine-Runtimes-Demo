.class public Lf/a/e;
.super Lg/cdy;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lg/bta;

    invoke-direct {v0, p0}, Lg/bta;-><init>(Lf/a/e;)V

    iput-object v0, p0, Lg/cdy;->f:Lg/bta;

    return-void
.end method
