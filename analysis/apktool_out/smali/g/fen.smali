.class public final Lg/fen;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/and;


# instance fields
.field final synthetic $this_await$inlined:Lg/dcy;


# direct methods
.method public constructor <init>(Lg/dcy;)V
    .locals 0

    iput-object p1, p0, Lg/fen;->$this_await$inlined:Lg/dcy;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lg/fen;->$this_await$inlined:Lg/dcy;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method
