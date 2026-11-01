.class public abstract Lg/fay;
.super Lg/egk;
.source "SourceFile"


# instance fields
.field public final e:Landroid/os/Handler;

.field public final f:Lg/dmi;

.field public final g:Landroidx/fragment/app/u;

.field public final h:Landroidx/fragment/app/u;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lg/dmi;

    invoke-direct {v1}, Landroidx/fragment/app/v;-><init>()V

    iput-object v1, p0, Lg/fay;->f:Lg/dmi;

    iput-object p1, p0, Lg/fay;->g:Landroidx/fragment/app/u;

    iput-object p1, p0, Lg/fay;->h:Landroidx/fragment/app/u;

    iput-object v0, p0, Lg/fay;->e:Landroid/os/Handler;

    return-void
.end method
