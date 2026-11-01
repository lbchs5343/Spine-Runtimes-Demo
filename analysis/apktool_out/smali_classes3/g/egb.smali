.class public abstract Lg/egb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/cqg;

.field public static final b:[Lg/cqg;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/cqg;

    const-string v1, "additional_video_csi"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lg/cqg;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lg/egb;->a:Lg/cqg;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/cqg;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lg/egb;->b:[Lg/cqg;

    return-void
.end method
