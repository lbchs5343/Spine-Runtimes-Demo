.class public final Lg/fx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lg/cxt;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/fx;->c:Z

    const/4 v1, -0x1

    iput v1, p0, Lg/fx;->e:I

    iput v0, p0, Lg/fx;->f:I

    iput-boolean v0, p0, Lg/fx;->a:Z

    const/4 v1, 0x1

    iput v1, p0, Lg/fx;->d:I

    iput-boolean v0, p0, Lg/fx;->g:Z

    return-void
.end method
