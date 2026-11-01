.class public abstract Lg/cqb;
.super Lg/edf;
.source "SourceFile"

# interfaces
.implements Lg/hdx;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(Lg/bdp;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/edf;-><init>(Lg/bdp;)V

    const/4 p1, 0x2

    iput p1, p0, Lg/cqb;->arity:I

    return-void
.end method


# virtual methods
.method public final h()I
    .locals 1

    iget v0, p0, Lg/cqb;->arity:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lg/bry;->i()Lg/bdp;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lg/bii;->a:Lg/cky;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lg/cky;->a(Lg/hdx;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(...)"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-super {p0}, Lg/bry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
