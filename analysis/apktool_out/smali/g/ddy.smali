.class public final Lg/ddy;
.super Lg/cpk;
.source "SourceFile"


# static fields
.field public static final a:Lg/ddy;

.field public static final b:Lg/nt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/ddy;

    invoke-direct {v0}, Lg/cpk;-><init>()V

    sput-object v0, Lg/ddy;->a:Lg/ddy;

    sget-object v0, Lg/uj;->a:Lg/nt;

    sput-object v0, Lg/ddy;->b:Lg/nt;

    return-void
.end method


# virtual methods
.method public final i(Lg/boj;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/ddy;->b:Lg/nt;

    invoke-virtual {v0, p1, p2}, Lg/fqd;->i(Lg/boj;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w(Lg/boj;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lg/ddy;->b:Lg/nt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
