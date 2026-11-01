.class public final Lg/fbk;
.super Lg/fkz;
.source "SourceFile"


# instance fields
.field public final transient a:[Ljava/lang/Object;

.field public final transient b:I

.field public final transient f:I


# direct methods
.method public constructor <init>(II[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p3, p0, Lg/fbk;->a:[Ljava/lang/Object;

    iput p1, p0, Lg/fbk;->b:I

    iput p2, p0, Lg/fbk;->f:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/fbk;->f:I

    invoke-static {p1, v0}, Lg/acr;->bt(II)V

    add-int/2addr p1, p1

    iget v0, p0, Lg/fbk;->b:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lg/fbk;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lg/fbk;->f:I

    return v0
.end method
