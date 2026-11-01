.class public final Lg/dcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fbt;


# instance fields
.field public final a:Lg/gkr;

.field public final b:Lg/egu;

.field public final c:Lg/gg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Lg/egu;Lg/gkr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/dcr;->b:Lg/egu;

    iput-object p3, p0, Lg/dcr;->a:Lg/gkr;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object p1

    iput-object p1, p0, Lg/dcr;->c:Lg/gg;

    return-void
.end method
