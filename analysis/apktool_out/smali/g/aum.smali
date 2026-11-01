.class public final Lg/aum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/erz;
.implements Lg/efi;


# static fields
.field public static final a:Lg/aum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/aum;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/aum;->a:Lg/aum;

    return-void
.end method


# virtual methods
.method public final _w(Lg/efi;)Lg/boj;
    .locals 0

    invoke-static {p0, p1}, Lg/bfc;->t(Lg/erz;Lg/efi;)Lg/boj;

    move-result-object p1

    return-object p1
.end method

.method public final _x(Lg/efi;)Lg/erz;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final _y(Lg/boj;)Lg/boj;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/cgq;->a:Lg/cgq;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lg/ctu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/ctu;-><init>(I)V

    invoke-interface {p1, p0, v0}, Lg/boj;->c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/boj;

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lg/bto;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lg/efi;
    .locals 0

    return-object p0
.end method
