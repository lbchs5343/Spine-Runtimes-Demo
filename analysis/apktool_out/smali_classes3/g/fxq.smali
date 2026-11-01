.class public final Lg/fxq;
.super Lg/bke;
.source "SourceFile"


# static fields
.field public static final b:Lg/gep;


# instance fields
.field public final c:Lg/bke;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/gep;

    invoke-direct {v0}, Lg/gep;-><init>()V

    sput-object v0, Lg/fxq;->b:Lg/gep;

    return-void
.end method

.method public constructor <init>(Lg/bke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fxq;->c:Lg/bke;

    return-void
.end method


# virtual methods
.method public final a(Lg/fwg;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/sql/Timestamp;

    iget-object v0, p0, Lg/fxq;->c:Lg/bke;

    invoke-virtual {v0, p1, p2}, Lg/bke;->a(Lg/fwg;Ljava/lang/Object;)V

    return-void
.end method
