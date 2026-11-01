.class public abstract Lg/axr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hdx;
.implements Ljava/io/Serializable;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/axr;->arity:I

    return-void
.end method


# virtual methods
.method public final h()I
    .locals 1

    iget v0, p0, Lg/axr;->arity:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lg/bii;->a:Lg/cky;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lg/cky;->a(Lg/hdx;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(...)"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
