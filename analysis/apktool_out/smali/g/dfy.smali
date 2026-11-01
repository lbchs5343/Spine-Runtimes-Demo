.class public Lg/dfy;
.super Lg/dog;
.source "SourceFile"


# instance fields
.field public final ae:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    sget-object v0, Lg/hay;->GOTO:Lg/hay;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lg/dfy;-><init>(Lg/hay;II)V

    return-void
.end method

.method public constructor <init>(Lg/hay;II)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lg/eek;-><init>(Lg/hay;I)V

    iput p2, p0, Lg/dfy;->ae:I

    return-void
.end method


# virtual methods
.method public _o()Lg/eek;
    .locals 2

    new-instance v0, Lg/dfy;

    iget v1, p0, Lg/dfy;->ae:I

    invoke-direct {v0, v1}, Lg/dfy;-><init>(I)V

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0
.end method

.method public ad()I
    .locals 1

    iget v0, p0, Lg/dfy;->ae:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lg/eek;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/dfy;->ae:I

    invoke-static {v1}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
