.class public final Lg/cqe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/cqe;


# instance fields
.field public final b:Lg/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/ao;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lg/ao;-><init>(I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lg/cqe;

    invoke-direct {v2, v0, v1}, Lg/cqe;-><init>(Lg/ao;Landroid/os/Looper;)V

    sput-object v2, Lg/cqe;->a:Lg/cqe;

    return-void
.end method

.method public constructor <init>(Lg/ao;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cqe;->b:Lg/ao;

    return-void
.end method
