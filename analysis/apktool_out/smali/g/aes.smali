.class public final Lg/aes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public b:[Ljava/util/BitSet;

.field public c:[Ljava/util/BitSet;

.field public d:[Ljava/util/BitSet;

.field public e:[Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/aes;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/aes;->a:Lg/dba;

    return-void
.end method

.method public static f(II)[Ljava/util/BitSet;
    .locals 3

    new-array v0, p0, [Ljava/util/BitSet;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, p1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
