.class public final Lg/gid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


# instance fields
.field public final b:I

.field public final c:F

.field public final d:Z

.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4014666666666667L    # 5.1000000000000005

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lg/gid;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const v0, 0x7f0401cd

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lg/bfc;->d(Landroid/content/Context;IZ)Z

    move-result v0

    const v2, 0x7f0401cc

    invoke-static {p1, v2, v1}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v2

    const v3, 0x7f0401cb

    invoke-static {p1, v3, v1}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v3

    const v4, 0x7f040134

    invoke-static {p1, v4, v1}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lg/gid;->d:Z

    iput v2, p0, Lg/gid;->e:I

    iput v3, p0, Lg/gid;->f:I

    iput v1, p0, Lg/gid;->b:I

    iput p1, p0, Lg/gid;->c:F

    return-void
.end method
