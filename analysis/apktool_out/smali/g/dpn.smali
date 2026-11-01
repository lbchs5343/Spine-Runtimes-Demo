.class public final Lg/dpn;
.super Lg/ape;


# static fields
.field public static final a:I


# instance fields
.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "acTL"

    invoke-static {v0}, Lg/ape;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lg/dpn;->a:I

    return-void
.end method


# virtual methods
.method public final b(Lg/dbj;)V
    .locals 0

    invoke-virtual {p1}, Lg/dbj;->b()I

    invoke-virtual {p1}, Lg/dbj;->b()I

    move-result p1

    iput p1, p0, Lg/dpn;->f:I

    return-void
.end method
