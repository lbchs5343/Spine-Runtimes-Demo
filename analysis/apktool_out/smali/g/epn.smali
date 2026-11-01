.class public final Lg/epn;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $isNewCoroutine:Z

.field final synthetic $leftoverContext:Lg/aye;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/aye;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/aye;Z)V
    .locals 0

    iput-object p1, p0, Lg/epn;->$leftoverContext:Lg/aye;

    iput-boolean p2, p0, Lg/epn;->$isNewCoroutine:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/boj;

    check-cast p2, Lg/erz;

    invoke-interface {p1, p2}, Lg/boj;->_y(Lg/boj;)Lg/boj;

    move-result-object p1

    return-object p1
.end method
