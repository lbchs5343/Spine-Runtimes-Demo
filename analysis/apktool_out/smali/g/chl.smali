.class public final Lg/chl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/chl;

.field public static final b:Lg/chl;


# instance fields
.field public final c:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lg/zi;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lg/chl;->b:Lg/chl;

    sput-object v1, Lg/chl;->a:Lg/chl;

    return-void

    :cond_0
    new-instance v0, Lg/chl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/chl;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lg/chl;->b:Lg/chl;

    new-instance v0, Lg/chl;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/chl;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lg/chl;->a:Lg/chl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/chl;->c:Ljava/lang/Throwable;

    return-void
.end method
