.class public final Lg/cql;
.super Lg/bke;
.source "SourceFile"


# static fields
.field public static final b:Lg/gxq;


# instance fields
.field public final c:Lg/dpq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/gxq;

    invoke-direct {v0}, Lg/gxq;-><init>()V

    sput-object v0, Lg/cql;->b:Lg/gxq;

    return-void
.end method

.method public constructor <init>(Lg/eem;Lg/bke;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/dpq;

    invoke-direct {v0, p3, p1, p2}, Lg/dpq;-><init>(Ljava/lang/reflect/Type;Lg/eem;Lg/bke;)V

    iput-object v0, p0, Lg/cql;->c:Lg/dpq;

    return-void
.end method


# virtual methods
.method public final a(Lg/fwg;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lg/fwg;->af()Lg/fwg;

    return-void

    :cond_0
    invoke-virtual {p1}, Lg/fwg;->ae()V

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lg/cql;->c:Lg/dpq;

    invoke-virtual {v3, p1, v2}, Lg/dpq;->a(Lg/fwg;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lg/fwg;->w()V

    return-void
.end method
