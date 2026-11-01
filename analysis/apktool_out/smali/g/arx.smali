.class public final Lg/arx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public b:I

.field public final c:Landroid/content/ComponentName;

.field public d:Z

.field public e:Lg/rc;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/arx;->d:Z

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lg/arx;->a:Ljava/util/ArrayDeque;

    iput v0, p0, Lg/arx;->b:I

    iput-object p1, p0, Lg/arx;->c:Landroid/content/ComponentName;

    return-void
.end method
