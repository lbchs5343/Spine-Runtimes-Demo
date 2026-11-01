.class public final Lg/cjz;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/and;


# instance fields
.field final synthetic $$this$callbackFlow:Lg/ayw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/ayw;"
        }
    .end annotation
.end field

.field final synthetic $timeoutJob:Lg/dta;


# direct methods
.method public constructor <init>(Lg/fe;Lg/ayw;)V
    .locals 0

    iput-object p1, p0, Lg/cjz;->$timeoutJob:Lg/dta;

    iput-object p2, p0, Lg/cjz;->$$this$callbackFlow:Lg/ayw;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lg/bfx;

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/cjz;->$timeoutJob:Lg/dta;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lg/dta;->_bi(Ljava/util/concurrent/CancellationException;)V

    iget-object v0, p0, Lg/cjz;->$$this$callbackFlow:Lg/ayw;

    check-cast v0, Lg/dgs;

    invoke-virtual {v0, p1}, Lg/dgs;->e(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method
