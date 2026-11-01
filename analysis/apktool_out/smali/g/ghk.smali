.class public final Lg/ghk;
.super Lg/ghe;
.source "SourceFile"


# instance fields
.field public final g:Lg/gsn;

.field public final synthetic h:Lg/er;


# direct methods
.method public constructor <init>(Lg/er;JLg/gsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ghk;->h:Lg/er;

    iput-wide p2, p0, Lg/ghe;->a:J

    const/4 p1, -0x1

    iput p1, p0, Lg/ghe;->b:I

    iput-object p4, p0, Lg/ghk;->g:Lg/gsn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg/ghk;->g:Lg/gsn;

    iget-object v1, p0, Lg/ghk;->h:Lg/er;

    invoke-virtual {v0, v1}, Lg/gsn;->t(Lg/cpk;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lg/ghe;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ghk;->g:Lg/gsn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
