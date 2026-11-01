.class public final Lg/ff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lg/ff;

.field public static final b:J

.field public static final c:Ljava/util/regex/Pattern;


# instance fields
.field public final d:Lg/cfg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lg/ff;->b:J

    const-string v0, "\\AA[\\w-]{38}\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg/ff;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lg/cfg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ff;->d:Lg/cfg;

    return-void
.end method
