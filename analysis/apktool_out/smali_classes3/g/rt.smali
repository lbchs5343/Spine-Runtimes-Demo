.class public final Lg/rt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dsb;


# direct methods
.method public constructor <init>(Lg/dxs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Lg/eem;Lg/ri;)Lg/bke;
    .locals 1

    iget-object p2, p2, Lg/ri;->a:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    new-instance p2, Lg/cvg;

    invoke-direct {p2, p1}, Lg/cvg;-><init>(Lg/eem;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
