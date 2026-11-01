.class public final Lg/cgq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/boj;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lg/cgq;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/cgq;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/cgq;->a:Lg/cgq;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lg/cgq;->a:Lg/cgq;

    return-object v0
.end method


# virtual methods
.method public final _w(Lg/efi;)Lg/boj;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final _x(Lg/efi;)Lg/erz;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final _y(Lg/boj;)Lg/boj;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
