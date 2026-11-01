.class public Lg/gep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dsb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Lg/eem;Lg/ri;)Lg/bke;
    .locals 1

    iget-object p2, p2, Lg/ri;->a:Ljava/lang/Class;

    const-class v0, Ljava/sql/Timestamp;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lg/ri;

    const-class v0, Ljava/util/Date;

    invoke-direct {p2, v0}, Lg/ri;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lg/eem;->n(Lg/ri;)Lg/bke;

    move-result-object p1

    new-instance p2, Lg/fxq;

    invoke-direct {p2, p1}, Lg/fxq;-><init>(Lg/bke;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
