.class public final Lg/clo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/clo;->c:I

    iput p2, p0, Lg/clo;->d:I

    iput-object p3, p0, Lg/clo;->a:Ljava/lang/String;

    iput-object p4, p0, Lg/clo;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lg/clo;

    const-string v0, "other"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lg/clo;->c:I

    iget v1, p1, Lg/clo;->c:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lg/clo;->d:I

    iget p1, p1, Lg/clo;->d:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method
