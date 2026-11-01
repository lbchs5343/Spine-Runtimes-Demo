.class public final Lg/sb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:[F

.field public final d:[J

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [F

    iput-object v1, p0, Lg/sb;->c:[F

    new-array v0, v0, [J

    iput-object v0, p0, Lg/sb;->d:[J

    const/4 v0, 0x0

    iput v0, p0, Lg/sb;->e:F

    const/4 v0, 0x0

    iput v0, p0, Lg/sb;->a:I

    iput v0, p0, Lg/sb;->b:I

    return-void
.end method
