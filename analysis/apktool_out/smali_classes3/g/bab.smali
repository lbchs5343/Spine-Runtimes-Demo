.class public final Lg/bab;
.super Lg/sz;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/dpd;

.field public final synthetic b:I

.field public final synthetic f:[B


# direct methods
.method public constructor <init>(Lg/dpd;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bab;->a:Lg/dpd;

    iput p2, p0, Lg/bab;->b:I

    iput-object p3, p0, Lg/bab;->f:[B

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget v0, p0, Lg/bab;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final d()Lg/dpd;
    .locals 1

    iget-object v0, p0, Lg/bab;->a:Lg/dpd;

    return-object v0
.end method

.method public final e(Lg/cbs;)V
    .locals 2

    iget-object v0, p0, Lg/bab;->f:[B

    iget v1, p0, Lg/bab;->b:I

    invoke-interface {p1, v1, v0}, Lg/cbs;->d(I[B)Lg/cbs;

    return-void
.end method
