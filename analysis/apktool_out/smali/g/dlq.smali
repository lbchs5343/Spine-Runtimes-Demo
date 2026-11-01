.class public final Lg/dlq;
.super Lg/cpk;
.source "SourceFile"


# static fields
.field public static final a:Lg/dlq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/dlq;

    invoke-direct {v0}, Lg/cpk;-><init>()V

    sput-object v0, Lg/dlq;->a:Lg/dlq;

    return-void
.end method


# virtual methods
.method public final g(Lg/boj;Ljava/lang/Runnable;)V
    .locals 2

    sget-object p1, Lg/nt;->a:Lg/nt;

    sget-object v0, Lg/fga;->a:Lg/cyl;

    const/4 v1, 0x1

    iget-object p1, p1, Lg/fqd;->b:Lg/gwu;

    invoke-virtual {p1, p2, v0, v1}, Lg/gwu;->q(Ljava/lang/Runnable;Lg/cyl;Z)V

    return-void
.end method

.method public final i(Lg/boj;Ljava/lang/Runnable;)V
    .locals 2

    sget-object p1, Lg/nt;->a:Lg/nt;

    sget-object v0, Lg/fga;->a:Lg/cyl;

    const/4 v1, 0x0

    iget-object p1, p1, Lg/fqd;->b:Lg/gwu;

    invoke-virtual {p1, p2, v0, v1}, Lg/gwu;->q(Ljava/lang/Runnable;Lg/cyl;Z)V

    return-void
.end method
