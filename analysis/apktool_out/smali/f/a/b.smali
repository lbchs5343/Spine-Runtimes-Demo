.class public Lf/a/b;
.super Lg/epi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/epi;->i:Z

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lg/epi;->o:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lg/epi;->n:F

    return-void
.end method
