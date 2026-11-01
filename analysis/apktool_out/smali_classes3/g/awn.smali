.class public Lg/awn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/qo;


# direct methods
.method public constructor <init>(Lg/dcq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/qo;

    iget-object p1, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast p1, Lg/gxk;

    invoke-direct {v0, p1}, Lg/qo;-><init>(Lg/gxk;)V

    iput-object v0, p0, Lg/awn;->a:Lg/qo;

    return-void
.end method
