.class public final synthetic Lg/ahm;
.super Lg/fgb;
.source "SourceFile"

# interfaces
.implements Lg/and;


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    iget-object v0, p0, Lg/cwy;->receiver:Ljava/lang/Object;

    check-cast v0, Lg/era;

    invoke-interface {v0, p1}, Lg/era;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method
