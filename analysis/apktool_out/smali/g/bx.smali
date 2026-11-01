.class public final Lg/bx;
.super Lg/eek;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[I


# direct methods
.method public constructor <init>(Lg/ddo;)V
    .locals 2

    sget-object v0, Lg/hay;->SWITCH_DATA:Lg/hay;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lg/eek;-><init>(Lg/hay;I)V

    iget v0, p1, Lg/ddo;->a:I

    iput v0, p0, Lg/bx;->a:I

    iget-object v0, p1, Lg/ddo;->b:[I

    iput-object v0, p0, Lg/bx;->c:[I

    iget-object p1, p1, Lg/ddo;->c:[I

    iput-object p1, p0, Lg/bx;->b:[I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "switch-data {"

    invoke-static {v0}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lg/bx;->a:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lg/bx;->c:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/bx;->b:[I

    aget v2, v2, v1

    invoke-static {v2}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lg/eek;->al(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
