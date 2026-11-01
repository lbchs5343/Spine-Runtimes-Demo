.class public final Lg/ahl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/ahl;

.field public static final b:Lg/ahl;


# instance fields
.field public final c:Z

.field public final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lg/ail;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lg/ahl;->a:Lg/ahl;

    sput-object v1, Lg/ahl;->b:Lg/ahl;

    return-void

    :cond_0
    new-instance v0, Lg/ahl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/ahl;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lg/ahl;->a:Lg/ahl;

    new-instance v0, Lg/ahl;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/ahl;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lg/ahl;->b:Lg/ahl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lg/ahl;->c:Z

    iput-object p1, p0, Lg/ahl;->d:Ljava/lang/Throwable;

    return-void
.end method
