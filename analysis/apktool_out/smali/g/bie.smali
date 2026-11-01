.class public final Lg/bie;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/and;


# instance fields
.field final synthetic $cont:Lg/anq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/anq;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/gsn;)V
    .locals 0

    iput-object p1, p0, Lg/bie;->$cont:Lg/anq;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lg/bie;->$cont:Lg/anq;

    check-cast p1, Lg/gsn;

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, v0}, Lg/gsn;->_z(Ljava/lang/Object;)V

    return-object v0
.end method
