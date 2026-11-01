.class public final Lg/cvg;
.super Lg/bke;
.source "SourceFile"


# static fields
.field public static final b:Lg/rt;


# instance fields
.field public final c:Lg/eem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lg/dxs;->DOUBLE:Lg/dxs;

    new-instance v1, Lg/rt;

    invoke-direct {v1, v0}, Lg/rt;-><init>(Lg/dxs;)V

    sput-object v1, Lg/cvg;->b:Lg/rt;

    return-void
.end method

.method public constructor <init>(Lg/eem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cvg;->c:Lg/eem;

    return-void
.end method


# virtual methods
.method public final a(Lg/fwg;Ljava/lang/Object;)V
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lg/fwg;->af()Lg/fwg;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lg/cvg;->c:Lg/eem;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/ri;

    invoke-direct {v2, v0}, Lg/ri;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, v2}, Lg/eem;->n(Lg/ri;)Lg/bke;

    move-result-object v0

    instance-of v1, v0, Lg/cvg;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lg/fwg;->p()V

    invoke-virtual {p1}, Lg/fwg;->ag()V

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Lg/bke;->a(Lg/fwg;Ljava/lang/Object;)V

    return-void
.end method
