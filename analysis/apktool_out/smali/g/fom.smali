.class public final Lg/fom;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic $tryUnregister:Lg/cvw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/cvw;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/cvw;)V
    .locals 0

    iput-object p1, p0, Lg/fom;->$tryUnregister:Lg/cvw;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/fom;->$tryUnregister:Lg/cvw;

    invoke-interface {v0}, Lg/cvw;->invoke()Ljava/lang/Object;

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    return-object v0
.end method
