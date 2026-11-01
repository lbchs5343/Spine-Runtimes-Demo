.class public Lg/bzc;
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

    iget-object p1, p2, Lg/ri;->a:Ljava/lang/Class;

    const-class p2, Ljava/util/Date;

    if-ne p1, p2, :cond_0

    new-instance p1, Lg/fcf;

    sget-object p2, Lg/acp;->a:Lg/gul;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0, v0}, Lg/fcf;-><init>(Lg/acp;II)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DefaultDateTypeAdapter#DEFAULT_STYLE_FACTORY"

    return-object v0
.end method
