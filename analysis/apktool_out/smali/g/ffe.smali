.class public final Lg/ffe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fjs;


# instance fields
.field public final a:Lg/bai;

.field public final c:Lg/boj;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/fjs;Lg/boj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/ffe;->c:Lg/boj;

    invoke-static {p2}, Lg/gs;->al(Lg/boj;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lg/ffe;->d:Ljava/lang/Object;

    new-instance p2, Lg/bai;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lg/bai;-><init>(Lg/fjs;Lg/bdp;)V

    iput-object p2, p0, Lg/ffe;->a:Lg/bai;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/ffe;->d:Ljava/lang/Object;

    iget-object v1, p0, Lg/ffe;->a:Lg/bai;

    iget-object v2, p0, Lg/ffe;->c:Lg/boj;

    invoke-static {v2, p1, v0, v1, p2}, Lg/acr;->ba(Lg/boj;Ljava/lang/Object;Ljava/lang/Object;Lg/bto;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method
