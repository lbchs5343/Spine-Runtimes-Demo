.class public final Lg/fyv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/abx;


# instance fields
.field public final c:Lg/dtc;

.field public d:Z

.field public e:Z

.field public f:Lg/cec;


# direct methods
.method public constructor <init>(Lg/dtc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/fyv;->d:Z

    iput-boolean v0, p0, Lg/fyv;->e:Z

    iput-object p1, p0, Lg/fyv;->c:Lg/dtc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lg/abx;
    .locals 3

    iget-boolean v0, p0, Lg/fyv;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fyv;->d:Z

    iget-object v0, p0, Lg/fyv;->f:Lg/cec;

    iget-boolean v1, p0, Lg/fyv;->e:Z

    iget-object v2, p0, Lg/fyv;->c:Lg/dtc;

    invoke-virtual {v2, v0, p1, v1}, Lg/dtc;->n(Lg/cec;Ljava/lang/Object;Z)V

    return-object p0

    :cond_0
    new-instance p1, Lg/fgn;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Z)Lg/abx;
    .locals 3

    iget-boolean v0, p0, Lg/fyv;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fyv;->d:Z

    iget-object v0, p0, Lg/fyv;->f:Lg/cec;

    iget-boolean v1, p0, Lg/fyv;->e:Z

    iget-object v2, p0, Lg/fyv;->c:Lg/dtc;

    invoke-virtual {v2, v0, p1, v1}, Lg/dtc;->o(Lg/cec;IZ)V

    return-object p0

    :cond_0
    new-instance p1, Lg/fgn;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
