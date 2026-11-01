.class public final Lg/ahw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cdv;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/ahw;->a:I

    return-void
.end method

.method public static c(Lg/eos;Lg/eek;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    check-cast v0, Lg/grs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lg/flc;

    if-eqz v0, :cond_2

    iget p1, p1, Lg/eek;->ag:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lg/ahw;

    invoke-direct {v0, p1}, Lg/ahw;-><init>(I)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p0, p1}, Lg/eos;->f(Lg/ahw;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final b()Lg/pk;
    .locals 1

    sget-object v0, Lg/pk;->OFFSET:Lg/pk;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "offset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/ahw;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
